Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7A923B634
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751906994; cv=none; b=C8r3x16PXDy+RSbgI3ubT/rQm18inKRnX8GEn00LRJ6O21oBBA/fHEOZwLfX7hd7IN2e72iO4Cti7jeFv8orLBo/pgaYp8PGtF0bq6RT5ym0hSNXtSgFi/Ywg7Yliqai9LqeC7GWZt6QlV7JZDO6asCtLBrjULXUGFnC+sEdgvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751906994; c=relaxed/simple;
	bh=eJb/YAXlb54Xge6owRmh+Z66HuIh9oc+9eKjGAUElUc=;
	h=To:Subject:From:Message-Id:Date; b=cazatpDl9NYMDS2dSZdgSuwYkfRr3A63FMXtYC+TdoFQp4HKNjdlgq4NVRgew8hmuNgqqFogMbezd7Q7f4ab9hMolkyeT+OyQg2/iToz3jCGxYqC51FOGuHw3klcYcAohNGOmiAg1/hWL+ozJUUm+mlXv4lk2q+AIqulQwhf2lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3W4IIL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3W4IIL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9C4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751906993;
	bh=eJb/YAXlb54Xge6owRmh+Z66HuIh9oc+9eKjGAUElUc=;
	h=To:Subject:From:Date:From;
	b=n3W4IIL/SwXaSagmzqZXCy2gM6gr9oexySTsyseSgqhHRGHRGRYxDVPHCPU1haecY
	 Cf9A6bJkskTO6C+LjugmTE/kSayOh3sXiqgCUOmtAKZHClT5TM7SGiN/mMajvVCNdZ
	 V2DwNkH9AccHRIcNsb/tDt7uMBDp3R+FU0EJ/Na+BHpUQOGAmnZYRVPcCADpY7UEz4
	 8AmqRi443VOiUZ9cv8Vb26h39ieTFrHXiD+WmyiMSvjPfYMcCwnYIGGRx+A8+omQ+p
	 IorCtDH5wD9jYQEyNpfZsEXi6chVtVBBiokvVuk5xaKJLrGiKeXLlBTQLdVtxyEHFc
	 z5AftY7yel1Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9893DC83F10
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190699361.18903.2686234105154356526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b74b60c3de35d61a2a0ba768ce6e9be01a3f34691ec2043d356673431012d79
Date: Mon, 07 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751906993
