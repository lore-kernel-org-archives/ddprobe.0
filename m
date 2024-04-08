Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10339257D
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712549897; cv=none; b=E6sh3NxpxYiqh20erLUlYkX7s17ow9ELqLtSwwwCXaQb7kp2PNgjOrfX68JJKAdRpVJ0YsDsvC0E+bBX112kE0Xn8hwedeNrf+t2hKwjjUTDQETr+5k/pk2QMLj7KPYyz/9GIJGf05B4TjZvloZpnzZEM6cKUtk2wLxq3FGXVWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712549897; c=relaxed/simple;
	bh=SGJEo3TVQQN4ecqKfe8E0W3ot8kPWh6DrxnZ4B5mIFc=;
	h=To:Subject:From:Message-Id:Date; b=nG4jQF0O9ax72hY+q0cVloWyJ2MrGsl5oCOTPAse5uNAUvFzUC7sh4TWdS1ZA5J844SLhmIzl+AZfdCkrKwa32B0nhgGPIHfvLsdudTlwMIB9sXWn/pJZ8XlaqVwQhNE4Ck+/MvCxosbJu1savMciXV0v3wWJaYtbnTIX3Bnta8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEl3Rcdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEl3Rcdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 879AAC433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712549896;
	bh=SGJEo3TVQQN4ecqKfe8E0W3ot8kPWh6DrxnZ4B5mIFc=;
	h=To:Subject:From:Date:From;
	b=oEl3RcdlO/uYzn7AUeRklFP+Gn3507D8/alMHc4jByJFvjd6GiP1uoaJZ0gRYzwbX
	 dn+8x4mR8vTYlGuqGcGR2YP4AEl5XaCXxbCpXmvWYTTa989ImXPAmjpzsVyjBM35iZ
	 2qSkxevxRA8WoXhPJgdOJF/Smktpl6lSGuIN20nQxnUb2rVfi96a5M8RdqHiBZC+C+
	 DsO/raLPc9gYOXUN5nRjKyBsW/SM9t8HEQRrRBGdohbdHP76MNkwCrvoqnabDcBx0f
	 scHzOipMGEgh1P33+dOTmZt9oQJvmwEg3aC3Y0DVXSizJW6z4heg+bN8z05cbGHdyw
	 38ZOgi8yQs9ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71746C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171254989644.11000.11068606011563867938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b28a84426d4373983d6ab1312f773cb4f020bef37d6acc130a268649df62d18
Date: Mon, 08 Apr 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712549896
