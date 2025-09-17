Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275A6246788
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758092994; cv=none; b=XLStRRT+lIOY72RWfKWuSESTzleoHjHSqG7lBPNVpdxWs5szupTNGgXCHED92DPkByxHSdENXOxoK6TT06lN92x7b5R3Gt5Z0VsTJzftBqNnmCMhg/F09vh5TLYATGvs/QQjuXymIQUPy1HfXw3qyX+RfV64txH2B4Zmtni3b8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758092994; c=relaxed/simple;
	bh=BjLWNYGym2MkSUGyQ8YQcghDM0vTnZ8hBBP5WEQ6v8w=;
	h=To:Subject:From:Message-Id:Date; b=fsyR2f9AKKv3lMzy2cn6wLK1BxAH5nsbP6u1teUpGfONWdZVv1ISRZ3LpDiSLKYPh0rFdv6gjZVn7WZ8CVZQXRFF88MsTS3fwwjvhsvpIOvIXLbFQRXTLDa7xwry6Q41sj1GrkP6LUiYxER8YU2ZA57Efm0ksn3XYJOFYz9ZeeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNRMFmsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNRMFmsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E3C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758092993;
	bh=BjLWNYGym2MkSUGyQ8YQcghDM0vTnZ8hBBP5WEQ6v8w=;
	h=To:Subject:From:Date:From;
	b=XNRMFmsOXwd+ixSKhJcHdAvKzgZjRDSXLk+dswZNgaUjVpjBVkNZRmPvHfaFiMbTw
	 EtLjaIWyvM0PhdyWVjj/YnX3BOhDHCbqmmpuplQjnrDRuEX7/LlJtIWBU3dcbPpYqT
	 QowXqDkn0E4pPsDSwh7/VFOZbXQC3Sia+OUMnPMfj6xCIIwik0OMajfWmLwP3FqiEP
	 woESLU3Tg5ZgX3fLRcElPZy40vSnljeD9bgBYxcCU5NE0HF0J+Krh6GHNbZVgqRf+Q
	 M90kKxcKF3CkbBM6vhncuqjKsJZLzvf7PmlIh8JpV68+fA1D8r7uHZ1jsstVth0rv2
	 r2qxbGMGpnyeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A4FCA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809299358.2601.7005117702076889973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7559878059c234c3801c6a9b6689bcd9fd15a55566ab3f2693a1173f860ee8cd
Date: Wed, 17 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758092993
