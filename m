Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3936B7482
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721919954; cv=none; b=OqBC16Zf4iYT2ti9BQcyxUuS//qtLrTfLdZuz77nPbxU0YLoWo8J1mODOXSZZbIZ/tug9qLpM29Njm6N1CyCoMjVcORIF07CUQg4guhaWvaVpSjSgotex+TI6Gi14TKosD2S1Kg8CUGRJq7bNpm77Hh0YfwG8AUYDeytjiLobDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721919954; c=relaxed/simple;
	bh=2Ejsfr6EE2XECRGSWvzqIhBUbRjPX9u0QBymXQQBQDA=;
	h=To:Subject:From:Message-Id:Date; b=TRko5YQnZhs3GcutAzSrtdic14U3+pf28AwA+QoMHIiS0OP/UFVw+xNM2J9Bj0C9BNE1H5Fjj2ix0ubGqTWLMo8jxmidsVmGJVaQOFP2ZDdLBH8nWY5xZoNO7A+pVCIYeCD6sNtuoQswLBtDLG5BQ/eCMWV6fiEMY3MfTWIguts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZd4qnqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZd4qnqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C46C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721919953;
	bh=2Ejsfr6EE2XECRGSWvzqIhBUbRjPX9u0QBymXQQBQDA=;
	h=To:Subject:From:Date:From;
	b=FZd4qnqTrvfjAEAbePEKk9WaDkImpoTokC+/rw3RuGPJx0Nq5CW8Gqn5qe1/QxbU/
	 jGh1ey3qkRj6xHwi1MqD2kojWbW2hR9vmxE2mtTU8OUQ9EKFt1pWQ56T6vs4/2AkRS
	 kYsDL9x+MCPHOoPkATyH592iSqviJWORnAyeZsl3d1iniULpL3U/MuCyfuRmcJl91z
	 dCnq7GTBKwoZ1HgmLOv1N4WTCZ69wx62O26Fi/V9luCGwfKpJAab/1O43zfFjGTku5
	 R6DVA/jGPnm1AaPD/GWhX4ztUe+/Up9Xv9Pi2tAVjMsnpupI77/jgEjF0KMrPtr63J
	 BG7ocO8xgbJvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A051DC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172191995364.9013.1328287699484331120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f0bae509fd1b8d1d9c22553d5a792ab0e01ff18de7a26b751ac73a9bea7193
Date: Thu, 25 Jul 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721919953
