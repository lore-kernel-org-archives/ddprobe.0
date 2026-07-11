Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB7A27727
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783772914; cv=none; b=U2nvjg+Fn+xo7rbTzPIZVsaVgKCMZ1Ar8g0deFh4IhlSKSqsh/zSaaOd+VgnQf4kNc6XM9wfEqcixa0m22C70IIW4tH26EBm03CuDRoHEQ0cBOnDxdMJgnUrde9dVflfhsp+ZmabtkriGE6LQeVH3g9OwmFiTibtBvETaKNgs4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783772914; c=relaxed/simple;
	bh=Awbks6jIaQct4yj9HprCIkhAV27ahafn9uHV9GR19W0=;
	h=To:Subject:From:Message-Id:Date; b=q+uDku0o4qk3f/4FX18AAk5LyY/YIuUKZRryYxkkTE69sekQaHpgM0iR/YtOlT810GrlhbzgvLt3lS4kDabGaIW238NSZoazifhJOQCZrs6lcWlMwp+nADHmzN0rrgl3UpewW6bPm2OL8ewpp0Jsd6c6VwWDuN69Fq5gdIDBhnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Shgca5+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Shgca5+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4136C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783772913;
	bh=Awbks6jIaQct4yj9HprCIkhAV27ahafn9uHV9GR19W0=;
	h=To:Subject:From:Date:From;
	b=Shgca5+7lS9gP5NVdx8Fw3LF387UXm5s3esTvTdomEKuTDM+oHEgkX578WUY9Mxw3
	 3b2Jw632hCv0H9kvorhcXGZe+YEjC9cAcuALEkz8Ren/kBJYWxi79lioFZcUmE+auC
	 LenuxaEgxp+FlpUqPhDGjYJYoDCJP1lylIdLYBTUvdaly69jkF6h6tyw0Sqe073ycq
	 VY9EUYwsNNIbiCw5Dvmsi6mARqZmogey7EN37iBhzsUqfcp9+4CIZazJ1SIsce0YMM
	 N5aEJ10CKltGqUJak3sma3SQ0xRklzvx4ZCI3Oxvpge9wVW22Vxl3INZAYhG5IxyV1
	 uRN+y7LNS7EWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB86CC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377291368.11789.11410744298551748559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf083703652edbc13e54f154c39903b3623ffa167fa020ca09b8fdf45be4fd2
Date: Sat, 11 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783772913
