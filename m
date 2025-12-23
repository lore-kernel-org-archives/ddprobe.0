Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27982320CCF
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766488434; cv=none; b=srU0C8r2m+P0o6exbN2JQdunSOdXSYXNwMuSVJ6Zj4X3aNgrrkJcsnd39Samwb8u/SkzyI+bH30pJ7LBESakaXxh5OGRydU7omSJjIGZf8RDzRXKuoWnOBW31GWN59gXkXaBU9lD+KqJbtevvusQerYt6gVak1Edw/cYbm6AKJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766488434; c=relaxed/simple;
	bh=f8H84D/IzUki/WKajuLzRXFepb074N+2gstVLPgs3kU=;
	h=To:Subject:From:Message-Id:Date; b=VlOxrfIbTOezy3fSzTLgHni3J1HUTFDyin3PTFHo7qIJR4FzasOUSSzx/qkiOnOFFgnf+QOrCShv8xykfhPVhO0yU56XWRfu7NxFI+KNMhPTGHkhIoK+GJKu86uNPJaBH1StVtfV85R1E/jC+9PpAQuV4XHTrEV50KlOHl00ybg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWxzJKf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWxzJKf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1015C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766488433;
	bh=f8H84D/IzUki/WKajuLzRXFepb074N+2gstVLPgs3kU=;
	h=To:Subject:From:Date:From;
	b=MWxzJKf0J0qJBXhzayIeF8pcJyBonEyu5U3iprJRwnnt7ADH/TCA+ny9tg8iExG/5
	 6NkFu+B+TulkUdEt0SfsEdsH0DjOXRzh/SjorJuamQaYpJBkgLJIRwUvY0UexhLKDu
	 N1NzJPjUQVhzeCO8WB1CCrOmSRVSUYdWrAJe1cLoG8km67cY0h/MUOPwu0NA/+FXS0
	 mYx2n3fcQ3U24hwhr0PGYhAPSsfBL82oTTC6AMPaTrZmv3zf8FExiBz7S0PlBTou5y
	 u7t9Ym9ZqAg0/K/fxEJ74LKEF2sqqFqXXL9fiDfBEqZ2Z69MsRuGgkT0t0kgjG0wYv
	 L0GRKqOVxm+kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9125BE6B272
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648843358.20772.13243112351753948455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382b700230bd66a5a3c405502727b0e9ae126a4740a30a3ace6fa3154d74b74a
Date: Tue, 23 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766488433
