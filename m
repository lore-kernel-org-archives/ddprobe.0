Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066195731B
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707833897; cv=none; b=im4UHUK52tQVzUCny3UveekDZkimYoFKKm5Jtm7zTwgkQlq8WA+LXDpK7ugptDzCtXplCUrAHG8HfRIBPGvD5gPQleXy4s3DwnCEVfdyGXgMDngwVIix4mWNWWKwWbRZaCXFV9hcX8bxo/wNtS6qEZ1hgxgyJg6DbcqzLRCGXQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707833897; c=relaxed/simple;
	bh=XalBn/TctMWnzFzd8+OIXkhU9yXWKrZA+TIdGmEB30o=;
	h=To:Subject:From:Message-Id:Date; b=JZvAKY5HhgOauHe/saM8DYdbFQH72B3S5TjV3YPXcH2A3WIr3vJbzScIe/oBaXUDDoQKvu8qToNB77xOL882R3c4k48clbnM9XEqKMink+QLXSWzmAmoeerayoU9teij35OrTE1/kajsuF1HZ6Tk3+1vnT3mv8vsb7S1SFFpalk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+7Z0qBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+7Z0qBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A6FFC433C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707833896;
	bh=XalBn/TctMWnzFzd8+OIXkhU9yXWKrZA+TIdGmEB30o=;
	h=To:Subject:From:Date:From;
	b=h+7Z0qBiy+Ws63THcciJfiEInfL8qLao7RFS4UQsLLeWAWV7zCOJzrEwmkvOt5tgd
	 JpoQpL9XFK7huw2m2vfQmkw3xe5/kAExkxMN9K40zedcKt2pDLpzaXWgDJavFPBx4Z
	 hBboespECMmf7BuTgnKmjgCqPhscHIEY4OWrqCBEKL6pFoBRGmWHvi9u+ccULz2D6O
	 xYFpVIAZ29m4jCicZKN8M8QMLZ1muOTuq5ml67G7V6YPf8hwoa7wJrM6JcML/8dTJB
	 b/J8+xCEh9vxx5BZfbGcJnr23HcQWakGSRF19/SJgta4TVa60fJA00p86ckHTHTjHV
	 Ma3Q+kmPOBk2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611FAC48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170783389639.19464.15259938121466252123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0b23f0c0321074ff8de55c9c70cf909033101c2ef6e16394b5b92deaf896fd
Date: Tue, 13 Feb 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707833896
