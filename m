Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1386C801
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711760897; cv=none; b=rqiKDYyjdW9Ncy/WwoDq7jHYE/lsqua4sxuvepHRulhuq++53n4wmmwxYBI8+F+Flb3OypYYkZW8J7PvbyhvqoU5J2E36d7oe2mnUzYuMyWojccl92D7sVQROAR4PA1Er0D3q4OYuZWFCl8DFaUS5Qej+H7eGErXfBzMe5zp92Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711760897; c=relaxed/simple;
	bh=DKNgLEjFY9anlqZCXiJ45hAjCilDKUZtNldWsf+JWtk=;
	h=To:Subject:From:Message-Id:Date; b=P8UvGRHH5fNWXgoRJRiMG096IA7UbXtg2qaJdFF4OBia6cbpRYX2z6Or+NxIw/j8nutsGuMCpWam1utYnVnnxBt4ynF8d0ZA2RsTL5DcWHJyE0//y/n2LmINMcLN659BCYnfQda/KyInKQ0R+Nx7jxTTNu/avvjDfDwI8GzmIGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yn6+cd2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yn6+cd2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FEBDC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711760896;
	bh=DKNgLEjFY9anlqZCXiJ45hAjCilDKUZtNldWsf+JWtk=;
	h=To:Subject:From:Date:From;
	b=Yn6+cd2AgtLu3qmUNEQDzI2aFPKgEW07S1OimOD6a81QMpOe54DvDJ7AEqHXnjtK4
	 jRN3MxlBxFFxpyOtyIc5TKtNnfWMPGjTnETY7Y3NUyoWCsVpUiQv3YNPQBRxe9IX2N
	 u5CgqVBs6h+Ztz2x9X33FqJ2MEgKP5u8LbqrOK4oEPegW/OUOXwlq3u0whjx2DQXCT
	 H3R9BI920cNKXU3yUbzI5vOLpn/YFtndbwsOxrLkI2C/rumTefYl/qS/8JglPsouR7
	 vSwycxGEvWFgjM2lrnXf+Ld9yF4MRnSe1EmGrT6gMsGKcO+JS0KdbOOqHARyJnm8O8
	 s8YCu67iJJSTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C46DC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171176089640.12373.8374708488293029121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ade32291b7f68a45a94b4d072af52a433e39289541ace604d81f2f5c9eef9c
Date: Sat, 30 Mar 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711760896
