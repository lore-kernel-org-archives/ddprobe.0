Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36783156F45
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786755034; cv=none; b=imWYeljVMqdIOOFJkSBFN/47yFMU1O0vdb0o6jKuHDFRVrx1uF/PfkRnuoGW/9+WobECz5RmRF1NOjd3PiIV1/zHhXTRsmVy3G9VeE2xmCUu9zZvx3+Y8K61CB6osiY0iIW+SdkJEqpqpYoepu1yj007c69ZNbDieLSIEfCl5T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786755034; c=relaxed/simple;
	bh=Aa1HLCm69G+HVcZxgmh+ezdHEMii+BqIuHmB0DHQIDg=;
	h=To:Subject:From:Message-Id:Date; b=SIreTJSPWYkDQuC9x1nq0gnS3q2LVhVUF9aficz0uxL1K/htjVGNKBxCT0hXaCA+preLC6NAQweq2bJ9WKG9FlzeGCqviTGJMiVw5q/0rQVGJBmmarYpSTa/pKeDVkpH5wpI1IvYWVSeS4LYiYZiOvM2nvDgg0lI+UqPrCqr8AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmR3vC+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmR3vC+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE669C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786755033;
	bh=Aa1HLCm69G+HVcZxgmh+ezdHEMii+BqIuHmB0DHQIDg=;
	h=To:Subject:From:Date:From;
	b=gmR3vC+7k/VZGn0xZ5An06pEYAP28IIzT9WQbBfgCW1toazQjdsw3WziGw0UHP/HB
	 q0dFNq5+NP4j7VE/+RjFM8pRU7hZhdezULj9qYqDVECkd4RfXOVfVvLSQX7Lu10ya7
	 3YW/Kduc87rT/WXQqIOfNKExgfd9lwYTLG3WeF4Py3pVxHIMSBOmxhXh2vdvAuL9SN
	 YOz/rcQ2Pl+TcSOjUEA5D074u63GZyAzAf0Rgyy3mGOffQdma8/BI5BgKymrbD+XEz
	 tjUZY+FR4HXbCVmgEM/weai7/Nvre9C51Y9sVWe3ieeQkSFHzA1n+LX3Y8na5UlyoB
	 DHrKLBo8XN2xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA494C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675503368.11725.15601511377390073314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44589911fc5f1bac0c2ece24712d587c0ece6a1a8bb00eb3a0bcb448536b9606
Date: Sat, 15 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786755033
