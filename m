Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598F31B580D
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718632103; cv=none; b=SscIpWz3SzGgguWsSwoKQw63yanFtU1LNLSpGYtBicOVPRGccp3L5iS2V/N8sY1HcmZbNf2159o19xeIQpyaxuMldKshp1DOD5mQEj7OIGcrw1k01VmNofwUed4+6CoKQ3JDwvtlBMcQAvT4hMfwwiO29oyGhkaqKHYOu0koBOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718632103; c=relaxed/simple;
	bh=o9rMQq6DiQTurm3jGjoObYZKDIZdRNZEOJT/1+C17MA=;
	h=To:Subject:From:Message-Id:Date; b=hf2GH/OT7Eo/kJuGMg8zeeiiW2GoSLYzoWA6nqqGmMmqKO/NVptM89kOPKBQkRc5L3uC+nUv2HnVQ6IxBavxsNhMr4ge5+vXuGAds73l4PKeJvjHwL+qK4MpcBYviIwqlXWEracLc4635Tp3fEspzBK1LsyAXoSWy20HxXslV3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+C9DcNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+C9DcNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2169C4AF48
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718632102;
	bh=o9rMQq6DiQTurm3jGjoObYZKDIZdRNZEOJT/1+C17MA=;
	h=To:Subject:From:Date:From;
	b=U+C9DcNFfznWE8GnOHoWXwUKANUi1zDLiNAUdBbI4M2zUZSuin342ppPpnFFgzUzH
	 UJFBYFKQp7UW7HjSe6ex5RVeWSZwCgFc//JzCi/lj/XT7CN3vYy+iuui/hq7M1b9iQ
	 xpUcOWkRmFfnPCqitlJEbTyS6DmZY249O02LnsfFFZH5CZ4qmdeHQXjC3J4xT5Zq7p
	 aowqG0CpwhLVFkcZxbwKKkOX/Tj1ghG3dr2ztDqv9zRViruwtQ4J3MHmiFZn3EwGh4
	 bob/NvHF4TX53kMJxqIVOR6ciTX4FJknJJ8+8RIXdwP+siPLbGSyAZxaz2qWD2K4/S
	 ESHuUTCymDlQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB24C2BA18
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863210277.6066.10562971050470970771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316d247ee6915d214bcb8b8dc24b0cd47131feb8ede1b065e28d98a06bd14321
Date: Mon, 17 Jun 2024 13:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718632102
