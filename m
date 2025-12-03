Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108FA398FBE
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764787974; cv=none; b=tcRbP2NbzX53aqaf7HFzaD5qoXnsCzwjU+7+NAxEoZ71A8Gz7IETl6Jk+gNvjVJ+ZqQgVtwZ8NWKeK55t6FL7j8pMcul6JjXyRAVCL2StpGaT/2wGLWKIy6Y/rwaP4+foqBzYiROervOHPl8doBpua0OG8HI6uCzEuFLIctoRLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764787974; c=relaxed/simple;
	bh=IMSPQ8mlR7h4S4fTpuT1UcLOZFIECm2g8QSIZu9n7R0=;
	h=To:Subject:From:Message-Id:Date; b=lszYoxSPrYJHaFA9G4ZAFlZKJ9ywNW7Qs8JB9pHjUwmlJAU9iHfPVfsS81hSG4gaMUVpQ4hYM9dzGVjb+/YLZEDu46E9bGk7hynFFajB+M7jpP5Ou05+L7uQ6HdiRU60vnzZ7MVbZ8Y6dZS3auB2sTGi7Ee+tNw7cKx+2WntobA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9b7p7N1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9b7p7N1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96AEC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764787973;
	bh=IMSPQ8mlR7h4S4fTpuT1UcLOZFIECm2g8QSIZu9n7R0=;
	h=To:Subject:From:Date:From;
	b=T9b7p7N1p4CCRrS31W+T3Sju7IsYfSI/9lOuGHy1pT0Rbz9KoCRWJ1IZ4guM38fcr
	 GX5JRuVzRv6TkiygidBncHaGHCQhteBk41rOPfAY5ecavSEmNpVmd+iPBT+FD6EVRx
	 Z1KDljn/wnh/VieyyZiuLCTEusS+vK4R17T/PkTw8DMomqgsMT0QaHlduc5rXMb4lO
	 /PcYf/FHVr6rsgscPPsJRGINg4gBnj9HxAwgStPzg/lG0oYDJQSFjncqJN7PdoXDI1
	 E78vDbioA5MIssSOsv4I/lg/J3Hy/DOIujSoc0LFRYkBGFrb76pNE1r4cJ+pQG6NGN
	 Qd41PqnkQ694A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91204D1BDCC
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478797358.8208.14214086953122791115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6658669831deb15804049c44a3cb656ab7100fe326a49598da7c8667bf3393
Date: Wed, 03 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764787973
