Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AC9EADA
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727087154; cv=none; b=uXIQxIXnaBV5+OXSWvi/zxRDGkpLDNk/Iwiex+SIUQT9XTSolKTkLhonycryVMD+S0wJbeN7qRM2kI8ALzaROe8ygs9hjp1S9gf2ZCzDoKVzikkJCgF7SJoKSrqfFRev48wjr3Ogh6R0Jp1zajakeDGiMXuzUVMchf8CUUbzoto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727087154; c=relaxed/simple;
	bh=xeQxzw6rtlb0MQCfbcAL8AGXFyqVgMax0SIMNc6DS/M=;
	h=To:Subject:From:Message-Id:Date; b=ilORV3qxMR8a7Y4KGEBaQXxMpGgjUTVwQ+9F0PIjTeera4mr4OMtAtYifNSxyi1cLRtHEqpBqLO9nZlPJChvUsYbzp/lcrF9m0Ar0Dj1C6vtx7GgHbcB7ov3QH8xD3pZI+PqBGDPweXDnlpS/CD0ImnlEAXakLHFHgy80k4HYHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXfS4J8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXfS4J8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC412C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727087153;
	bh=xeQxzw6rtlb0MQCfbcAL8AGXFyqVgMax0SIMNc6DS/M=;
	h=To:Subject:From:Date:From;
	b=aXfS4J8kjLDMRmcWDeatlLoRhY2qQPQUGID8BftvkIuF9qwzM0WFBTsBMxvBgIAR8
	 LEusVFp11IUQ4nZGOPuTX220i3nSRiXHVFf+Jmy/iOKEhZt+9iL3vvd21i2aR2R2eS
	 7FZP1ONr5wIHvdrxNmY8DaThbTchA/8/jaQE7KcSCf/Uaeu7wOgYtpktRwmY00N5P/
	 h3wfKU2CJcgHDDg/8SaGVAMr6ootI4J0Wzo9LS391PX98yWCDXhaibj4Cc4Sys1/+q
	 VR3ZscZt0DJpDLHj/Rwp/gbolk6tVTRq19IeEei/zj5r2GdPHYqifs2LLghQKxfzgu
	 jrxvYvBR++DtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9451ACF9C69
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172708715360.21010.5658265593437408819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d672bdce3cb609ba96a73c2210114e08795214d5739fde53f5bbaaa333066164
Date: Mon, 23 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727087153
