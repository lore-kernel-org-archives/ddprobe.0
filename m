Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4D327A47F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783052315; cv=none; b=QUhoqYC3W/IIPxspSP8bkWvkv3Z90czU2k9LkvaQrXxr2qIimGfI3lPzOssYjmN/3gnYa0AUj9QRuhV96IYlhXTxKzngdoUDyJBJbs9l7lmex0z6bVm0NsYiCKMT1bbsi0phiuJvpOd87ouBo85ZOe2bk2WHoJy/pZ2yuUYtJFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783052315; c=relaxed/simple;
	bh=Mt4dkp6aFtM7bjWe947jps5uCIN/3yYni0/mJnr4ttE=;
	h=To:Subject:From:Message-Id:Date; b=Q/wwwDtFrDoyOAVayzIapdvU/kFcgTCJZ2sH2sKM6RauQ4NZwWoDGDQadtlSUPyr+to+IluGTIxqY5iLzCQ051p0CkHKvhEhsoSvq1sD5hmggOmgqDc0DZh5ZklWLgYIaWIbBVXJYo5kg51W715zyKiKWf8k9Eb9eUI2mIhXrp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HoeMOuXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HoeMOuXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D962AC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783052313;
	bh=Mt4dkp6aFtM7bjWe947jps5uCIN/3yYni0/mJnr4ttE=;
	h=To:Subject:From:Date:From;
	b=HoeMOuXsy/Y/1dtrDtl6AfBmqlPBtWVqlRJv9c/900pxGe3N4A7XaBV+dyYRUvjcR
	 yR7CFE8WVX75q2GYokKxmfbKqOiNrv6I/GGGxlk50/iPapZ5icGfdPP6EXtkZU7xuS
	 by7oBZn+vpaI9pCgybSLJt943uyz4JC/La1bcwi38LN4bC7smIGllN3FAGrR+AxCOS
	 E3iCq8EtN2C9U1p4swjyvPWwIkP207lWBanh7OwpghxcqIQS9QV5b9hXTHSBuFy4do
	 QcJNgLK0QOYBay2E1rVDFYYKVyYAxVgJ2CYyXaP4dAmb9cVmkc7nZWz/pDgFwIV6li
	 lvTDP9TnXaSCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5986C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305231373.25087.11116012010548489622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c94ec5590752ef75fde4bb759e865fbb36c7832d6338d1ed33fe3b249496b16c
Date: Fri, 03 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783052313
