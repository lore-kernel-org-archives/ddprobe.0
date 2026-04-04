Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA1BEEBA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775283334; cv=none; b=iKkhua4icifdgvZ0WH2e7dA+R6CSIio7Tr+HrN7UULL5k16w5BqK0uvULNSdkaSWh93Y75xcmN4kFfPqj46clj2HSRBn31W4gu9MtLEerdvscUZcvLeqyC5MKhHNtkIvFevU54AjZeMC9PUd/DiLffbJX8ke+1vIsPVBgsroePo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775283334; c=relaxed/simple;
	bh=EeNqlKZ/a2izSmqX8H5si3H+fNx/SFdCacOoSN9nL0Y=;
	h=To:Subject:From:Message-Id:Date; b=q+ppfKpt/NU+k56ysjiwiLKoHGzndzabJiS+/ImrN/YsOA19e+7WRicKy4N0lzTaZ2amHnNg5+RJEK9HZJCs6pM9IhDQLNXSqgCp8sVCTCQNRxI00DqZveNnMB3e5ZZ9DRYbxhVAl+M+3P78eIli85Ld1TZKC3v54V8Nqc5A0S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSTXa5V4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSTXa5V4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE820C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775283333;
	bh=EeNqlKZ/a2izSmqX8H5si3H+fNx/SFdCacOoSN9nL0Y=;
	h=To:Subject:From:Date:From;
	b=tSTXa5V4WyXrOmGM30jMwCEEWkAiGBxC18Vz/AZkrXIkTIcdR+7yvDlE8Q6wuozzM
	 KFa+2/FMjqPzWbQss3KUjIiZJD9bhv2nNqBEK+bXAF5Qs/PEwgUWEWV1JoIbuCxGLy
	 WeO4AbwdlwJPyd89AjU0lSUImpc6QxlMTrNZ28cgjZzCubj+1JlbaFipQwCsH1ku+P
	 2iLLrwYhbkBpGa4M5djapVVSM8rp98FPIK57i9Or1v4nkvVRfsUs8Nsb9ySsyFoxA4
	 PpMIkrUDUZYEmkoRUIMMqSPTO64Oq9SktVcWjIvrN1O51O+zG/eVLpxydqFwKapwDk
	 nHDr8Nej8KMvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8E7E88D86
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528333369.908.3271663574914088113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8a4ca1e6ae0ca466b682d79d5ff0d4a04a3f622ae355d4bb1bf8ff9642210b
Date: Sat, 04 Apr 2026 06:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775283333
