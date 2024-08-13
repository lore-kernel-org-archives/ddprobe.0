Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A981195F3A
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723544754; cv=none; b=hF2/u1wfET/iw+VYDHXRlgxKskUoYjeb56Ot/2vJ1Jb0vRTGGzSaEuKKuJnE7g3CCGqmKvMZ/GVCiyJyouhrTK8IS7VLg45+ogpOWgGQjfWOZp3bYfT0uVJUc9D6kozkkt+IYcWeq1yGDwQtyza/eR5j/1Md4gpZ4Lzuprx0A48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723544754; c=relaxed/simple;
	bh=7eRAMKURPGNp/ifLVNOSWB6g3eoNZyHlZ5QDgShedMw=;
	h=To:Subject:From:Message-Id:Date; b=D3aQmSUVpK51ZhYfewxKrYY2SCUR5w7nCEqmaiYrfbV1++y/uOPm+oeegBhI+CkGmWrc7XyUsFY1OKPrkkGD0K9sNYSVUbDXENEbs89vm/HXJkh2lyi0oBbP51nYYP66JM2CTJcWvlqx4iJcRO21GE5BDknGiMFRpjedXFYvZ7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnSi5iwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnSi5iwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B3C4AF10
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723544753;
	bh=7eRAMKURPGNp/ifLVNOSWB6g3eoNZyHlZ5QDgShedMw=;
	h=To:Subject:From:Date:From;
	b=AnSi5iwiRfVaKHrRubIEw1iYycSCFsWQXQCIoS+rFcg5bGnPmYY0HY0qNjvybo4v6
	 pu4Pg+j6x1U0QCXbLIjkITDG04F9aXAfZXMirXDGLlROKIPQyXD9SRSivs/AFm9eSn
	 wZ+YDB9OTK87ENKc2WN4HNbRGCqDtYYllHPaeN3cFXnIn0CDlQKgkdElNPrh0tvy/d
	 KjfZ1xDxw62P0031vsmz0D3t0V68PjG40mTqhZIZ4B5BjTsDjMdTOuw5aIeNQJ/4bM
	 W9JQ1ZoHbXn0dg3wN1YHEGl2XQR7TGxanWZWoYeDE/sPeJwgX6/1CwHfCEjtu1ijSC
	 8Rp9ixYsEooIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F96C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172354475358.31692.14597497374887050738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1fe5a2ffbcce45b12da4f819662fb8beb926b22af3e603128f45b0debdf6a64
Date: Tue, 13 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723544753
