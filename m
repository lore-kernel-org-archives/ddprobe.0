Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9571DDC1A
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745708394; cv=none; b=Fg82r6kZSI7bfyAM4KqUnVmJMDSphVgDiKUstV5uxQBd8vvyS4D+5xQnsCYK2uqYZ250Wzv2rHlPcqk71NH428YG3o2bgh00OGQEaydqibhWSzXKjNMBaCi3qX+rDNgTnxhbHcBxqqB8Le1iIoHvpTv7GcrAf7ux4h4F0fuV6zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745708394; c=relaxed/simple;
	bh=o91SrEtqt1oEyIM7x3REJjqu0sCmgsWjblpqdkTKISs=;
	h=To:Subject:From:Message-Id:Date; b=QEQQPdfG19OGAWOjy3ggvW9u7QwFNS0PNCxSq9JZYNCyd2ipccxZdeWoChBUeLn5fdlzKZV1waGOfN9CUhPNtRLGyIZ3yRibgcLqKQy4ezr26mE/EjlEWHhZD5DmgB9dWv+bBHDzFW0mqwU1FxnSEDVn5PpjD9B1tW/7uozbtCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOsaOivr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOsaOivr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A2AC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745708393;
	bh=o91SrEtqt1oEyIM7x3REJjqu0sCmgsWjblpqdkTKISs=;
	h=To:Subject:From:Date:From;
	b=JOsaOivrMSaivONn7ykAdVWpv3HZKqDbbdzAlkgt+kcWdaDYRaiJeZDO+/b/rJtF9
	 3Uo1HEH91tSM1wXnNu2a9W5LjVTecTD4Cnfv1MfQpaNh6IQgalG9HPZDhsXM8eUEVh
	 hJClwRTd7ucJ4H8sIxtiIFtXIHlSPTSF8+OaUswP9k4Z47BucitdkxOkOzmD030aXK
	 FLkqCHeHcOlccKtnWN7AkHyN/4A92Rr+G3RD2tlXBIqpYdaguA98qvBiZMotxRJGgm
	 bBcYdbGJjt8mMRmODugInIT4D7RupLjl8TjYzqo41RIGuh2uLKcGcwZXl9BE2/QH/Y
	 ypWNXZUa2HW4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92024C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570839357.29257.17100472625773737490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1089795c4acbb40d37e117b25fc359d482b3d05dde69d27c28cdaf9cf482f7f4
Date: Sat, 26 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745708393
