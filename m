Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DF52BDC26
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777052854; cv=none; b=kUbtzXiqM6Z5mqb7uC5IE1lh/lSTP3/q5lSBlgGZtoRu0QYlN/WBulmig1IpIx5JO6ETb0Fb5fM0jxTddEBH6itc34U0Bf/vswPjrEaK8zDE4TmyuHK5x01ByXeDSesfW4u119e08NnKfPMgLollxArLGqoAMncOIR1HNZjpO3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777052854; c=relaxed/simple;
	bh=KGiVFEEzpI1vALS88yzKz4FQgStR2noBtvO7FuCBypU=;
	h=To:Subject:From:Message-Id:Date; b=cZpDnIA1/3s7k7WQAMv8k6nuuiiobgdSIcwqRP9xDvzv8XhFWlKXP/u7Tm8Qo75oUKQCdBwDHk4WMEvz0scVLQxm75FFRcyEvkIZuM+SK5xFlSKK5i5MMAA7Y0zbjOpMBo7sPRpqMQS/NVGm/YrPaZLr52yL8Xoya/Uhp54fEzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDmi2SCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDmi2SCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90B3C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777052853;
	bh=KGiVFEEzpI1vALS88yzKz4FQgStR2noBtvO7FuCBypU=;
	h=To:Subject:From:Date:From;
	b=FDmi2SCfmx8941M4hKE0Iz2MQ5VdTDhhxg+TrBHwbgCZ+uieRnEmYBaeYUsqpjyxW
	 EnwW1PX8D5VTxmgB9W1ZyiQtlkJ670wPCwqhS6a+4A+CL+HRlTQ+nuFJ8/gr9ZMoND
	 U3Ccu6ABE2dHdp3YcIBq5oHKWTqqudvy6aU16SKO0BJ6awR1vkRuqsBXb/nJHYTGPw
	 pJfwAnY3FfkmH4sAhSW2HKASQ/FALDgOiaHv72yr5p03bkrSQOjlBHxjwanFobatB9
	 2kDt/a2UrGJXfiwXbCy5/gPsT91xAbmJjJlStM7s2mr0GYzgFJkI56r2RljDigst1p
	 nvW3hPyNAggbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96ABFED3F2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705285368.305.15984296051604867154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ad87eef056e545e11913c4534ee83ef719d6c0aeda5df3a1895ca2cee2dce4
Date: Fri, 24 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777052853
