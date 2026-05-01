Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7AD2147E5
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777595254; cv=none; b=eETI0H8m84BkTJVkaNhh5HHkdShQXybS6Pj3BXiFR26DJLwGe7RRWPNls31ABoX0A/JacWk+g4U0Lap/NCbOciWafUqzSoGCMBX9B4WT++s/Xn2OK6uKaSauqkmykkE9E0ZEW+aQ/cmLSyUHz6dof8/aNXtqEe4/5nFSAjkbJq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777595254; c=relaxed/simple;
	bh=1aton1RmQdM3C9g9IOR4099wqpx/FH6hmuRKPihc0mg=;
	h=To:Subject:From:Message-Id:Date; b=TQdhrAT5VLBNzeHbj0VcnMqz3JxqutEsGJRRkHtKHZ6gHTlKn2VRvydOXxQcSiYKk8xJRmjWfEU6JebQJHWi9P8XedY0wpA0MaE8gVS3UBvj6ICCmia1ev9ap+LWVa+P879hla+3v5vffE7Op2eIb1WM/fh0Lgh9BSWOAxe+QWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6g2e7J0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6g2e7J0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2892C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777595253;
	bh=1aton1RmQdM3C9g9IOR4099wqpx/FH6hmuRKPihc0mg=;
	h=To:Subject:From:Date:From;
	b=E6g2e7J004LwKAp+dNrAQH7SvSHYzMbBYHk0IGpKpLFES1Wks922qYkvu0Cnlv+MZ
	 Hq9hjhupExCOufDRYnyQmgMa3lAN+8GjlmQN+jsUwrQT1RhQYCnxh4eTHd+k1DrK8o
	 50fM/z26EaFrbTt2iCswq7FquJOKPNtYSMFpss+bsX3Nr0gcr09qZCyXfhCpU8jVN5
	 hk4Qnc+LtMLdG+WQ2K0DbjoPqBbgf06d9i7KI237jgAVpJG2aQwOSHP5pG4XmCUho1
	 v2pj12BWcvLLA67nPhUCGSiufwOwMF3lSN/ZBlgDxo5RADMfRlwIp5O7tcgZY/kCUQ
	 7DWysc7fIJGjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0636CD13DE
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759525368.30349.13242703065335869917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079ceeb0d9089b1f389d92bd246cbdd2bd7228a399bfa90192c6bae948766271
Date: Fri, 01 May 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777595253
