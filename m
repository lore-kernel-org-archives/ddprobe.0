Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A44288502
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762142394; cv=none; b=mw2PKETXSfaW+cUqVzBISpv0MZ87y/WatEHlX/aMPYNwMlA4kAh8HfGPI2AVbFPIQqKKi/PIrbTIaTNT+PU9yay437Mx2amvahZ7pBjXr64wEIoaB/DTwe8j10LjhGTXV+dqXRP42W8P5J1054Uuo7jmFmfdRlC1Y5tMBLHWplw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762142394; c=relaxed/simple;
	bh=iB52yZjjfJrP4nNGliUL6fGuIvLxbZuH/ACv+tw+SuA=;
	h=To:Subject:From:Message-Id:Date; b=ZbaBRnkQQp0mNhDFf+GzuBYiJXigRtUBlhsfGNzuVVwuRwMvyNAZUtmBMw1sRivcbY74r0QW3gWugASwJoTyWVJvvS6Qgq8U2P2oVI1JoU+DIYQMzoFrVv7MRrYm632rWbdv+I72q8osB8XntYO7kDKOQ103rqwMKTQdpZwLv3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPL3bGT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPL3bGT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2115C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762142393;
	bh=iB52yZjjfJrP4nNGliUL6fGuIvLxbZuH/ACv+tw+SuA=;
	h=To:Subject:From:Date:From;
	b=tPL3bGT/YNhW4CBL/sSUusIi2O09eTQ/BrvDQhROpGBXl+IJyQYtnDgZDruuWFgFJ
	 Af828aO+2/x3IUKJti1scyd2jP/w6MgHHg7TQ86s6+0ZFP00M1kEG5eK6Z7klIA2zc
	 0Jc0ShLzdSu4kt/y+fOy27Cfe/woojLhs8Cv0x26ZONF/5hyY+ZkVANoY9bFbUyBOS
	 gn1ua9b3q/e3RHK//KPmKDSgb+CbF0cTq+kw+K/YGpmHeT1PgIVSfs+DjQf824krR4
	 PJ7mm2/kTUmGMCISqSQuc642/n3ARDAjptWdmkPW0Kh8VdjDe5EpRbaZk2JqhR16yK
	 zRy+8TukGCdJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCCDCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214239358.10655.16212380773731977771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dbd177958eca6934752b84d1affbd544f4b12363c5d229104e07894650e71f9
Date: Mon, 03 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762142393
