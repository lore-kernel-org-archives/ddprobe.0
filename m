Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1267237DAB9
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778826034; cv=none; b=HiEiJ6V1Ru5RgKM5PVPw/SqvWT73f7f1s2PkyqBvTzDO/b/2fkDZp1W+CnRHMX2/oSJbY6ZMW41otC2vdle8MtcS+Mh2Kfd7BYtNdUOk5aqpreyLsSEn6PT7GFcC/JOTRNA380F8oucQO/klAbnBUUuqZpbIK7R/yHW7MW3rPPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778826034; c=relaxed/simple;
	bh=8gMFiJiW//WNd0NCAwLt33LT+KIqJoQ85tCUcEruheY=;
	h=To:Subject:From:Message-Id:Date; b=REOQHXVZJ+blYUgF5PxrBE3jAI3dWaZ2ChJRgvrxkvx3OPlYA5d8NUCi3wECZmzxM92aC0xoJYKwpxdOYTpYKCIC9eUaLA0upzbXpHoMRmKkbFP7ILGnBjSCMZfZLy6iD+PTiDx3Wr8GuVfn8kqNz9r9hdoAn1Q+JCqCL5EOYxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyRUd5G3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyRUd5G3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA573C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778826033;
	bh=8gMFiJiW//WNd0NCAwLt33LT+KIqJoQ85tCUcEruheY=;
	h=To:Subject:From:Date:From;
	b=EyRUd5G3oety/UWfLK40Arfv5LOJkeqJhdDE6LmVmPI2NYmq38cQgoN/Q1ltHfzSi
	 wJi2OZz/YwXaV3mNlwis3I9mHxvcA8zFNpVM8X0NYY77NWBic270YqLPZZkUxxUnQo
	 ief6CjPdvyXhs7diZ9qDntLgRhQl0ZdPgBLPzQ1nGMIsBfipFlWxPRbeVZKShtDGEs
	 ohcu0fBMD+0eFKGpaxbvA2aXXw0XVFGnBGDTuCP9e/7rIoxFDAA/Iaa1dmtsS64o2r
	 EjZKQPWp/2httTSUv7MXzuAjXgCs8ETuVMJJxlPNhU/9AbU3ch8uclwt/SCaCeGcIe
	 guFwK/BLCgYiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB113CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882603369.12076.2544428749079289153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8acf7855bc3e5c602abd308f0622bfd3b1d3be84872367cf86354e0ec7a6c174
Date: Fri, 15 May 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778826033
