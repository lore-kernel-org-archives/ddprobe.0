Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5325F156880
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738607754; cv=none; b=u+ByVCL6MBDgIggZA5vrk+U/0e9dBEeyXOgBAZ8IavVnW1Ak2gZbyqPjWykmvXTnbxzgnZTp3ScYvpWO/W3rcJy7QnF7+EadxQyOvYt5JQXiBFgEYhFrUoAMDEM1MiAR6wf4GV0NHwagc+muq8tE8xLhUrFRlp/d+kh75t5228A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738607754; c=relaxed/simple;
	bh=dBTiLkIltj7S1f8ubrm7cgbwu1gGiAPP+O6DwINdlvc=;
	h=To:Subject:From:Message-Id:Date; b=b3/xJyx/PvV6QmzNW4bU0Sh236pG8Qw0o3CYohKRa9NcuvsI5nI73RTXn84EeV0/0YqXZfnPg6ggC8h0H30lQxpZw7NzL/kIQwptxfCvOCre0Hdi7njOfBUyNuMzjtMz42otAcQ/oVW0gis8YNffVe5AVu9YCbBdog/bZUXffOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiMiE3YV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiMiE3YV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA329C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738607753;
	bh=dBTiLkIltj7S1f8ubrm7cgbwu1gGiAPP+O6DwINdlvc=;
	h=To:Subject:From:Date:From;
	b=fiMiE3YVRbJYygfDQ2VxntiwI9YH6QZ9X1/4GfiFJikknPV73CgyRILYuI2p1qC7v
	 r3mPBUpaso84FVXIyhNG7nQdbQgBTFIwat0XgQLKNknPq7Kobtd9/y4trRzxRuMVC+
	 2eCi6AIYICHSOQqAno/qknP1YMsG9P1WE8oIDRM+qYe4ssezXq5JcWn83yui6qOQ9F
	 RDU5KYTgUQ9WJVnDcZDRoDI+Uh2YzyY5rbCvRp9bmSRBUMmuPtljVOI67gCUB0/0y/
	 KNa1sTOJK2yP/C66uCC+GcdZloHSuOhcAicm++ZaIB0FBHSRZkcZJ0ssPcTK9v1MxP
	 gj07rT4o0Wnjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4873C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173860775365.27629.11499572484729970851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb828b2b5172ea9c05e3d19d26c1a226a437ac4e3b26fcf3b637215833c1107
Date: Mon, 03 Feb 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738607753
