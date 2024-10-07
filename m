Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F04A13B58B
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728324954; cv=none; b=TvaKSSh6zdVI1bV/FU9pF8Yu/NtIIQw7Qy82D9zpDnn/4b794JKsb7s+7k5sLKiqlcDhIdZdXTMHG8mfbXOXUL8nzjBBkyq446N+ndJdxsTZ45aKlb0BQJkuYm8RAhdDxsDk/UXOZ4kytpzjtoTHew9HivEnCGRCHFHEil9+IGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728324954; c=relaxed/simple;
	bh=48/d/fvfg7r3yoMj5LWXLtQ8RpNFP5dXpJ82mopazrw=;
	h=To:Subject:From:Message-Id:Date; b=kP6gnk24lCoPduzS2J/HXy1v0x9VX+rMLZvPhWvL4oKrYXyKtdRxlRrPHDInKNNWlNDuanJLFpv5USLXwhYjCAs7QeoOde28lPTVpqP66IGXMrOLIeTfPmTkrk2wMu7TmfocNPOxZhKpksQquRHk12M/WLH5bqVzFHDY72qanr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TliL99cb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TliL99cb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFE1C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728324953;
	bh=48/d/fvfg7r3yoMj5LWXLtQ8RpNFP5dXpJ82mopazrw=;
	h=To:Subject:From:Date:From;
	b=TliL99cbc0vBYbuJPcVjs8LWC6DyEG83ga0gIPcEvX53uXYcUBucCVkzgvDN0ag4m
	 ikEI6cdZyj9T3N5LaF9MAKwBiKDK1R9OSx9/ivNdE9fbitzHvsb4atwhDBw+jGfONK
	 4P2XCVETdWuxj0gLWqrA/alDfh3PkGnobjoMKwLPp6T0ZrqlMQjBNdv+OaqIyQTD+0
	 /xH+u+qx10vj90M20HiZcIqxELKhcy7/yEAYx3TOWtT2YIWB19tUdyaS89WGK+W5H4
	 O+tBBLTbThV8UcPfFzhUr2sBSzCKqyBvAqD/k2efwOXm60BzEYLWpJJyaZaVYQEAv2
	 VGzhjlJPtc0bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BF0CFB451
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172832495360.11581.13332913026211841888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0aef509c5f6da90e3d5d2f0260648d22696781a4146c32a7d965675e823e35d
Date: Mon, 07 Oct 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728324953
