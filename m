Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B03E417BE5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785412834; cv=none; b=d9Gc6hYaJZ+JuLi28uHPa7p4v298PVmrKc5qjIYb9EaHhkBcZAnGwvK7JURCLpvG69a/B+KME57Wu4z1P8bn14VeQabJpBoRwIv0rzWAutDVakwZnQtvT9aDS/7RP2wDW6q1KdasZ8T/7qVIRSuUQJy2wdoEBxZCg6tq9RJufIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785412834; c=relaxed/simple;
	bh=c4gqEB6d0zdYkwLYjFDEMYQOfZtSgpHVmI4SfVwiW5k=;
	h=To:Subject:From:Message-Id:Date; b=rcZk8oF5aBSlS4xF5sBXqRBEwuOOOec1f4wcLEvrIRgsnbJfyamaJmUWH35plJemygkAWgtFIk+VWPhqTucRtltHT2NYNcjg/vzPcjYRZsLCUp/UtUQDdx9Lyo/ZiR3BRMUh6JZKRXV4hV3oIApsCnBBFJVODVRaHs30SN8QGrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8EQuUqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8EQuUqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA105C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785412833;
	bh=c4gqEB6d0zdYkwLYjFDEMYQOfZtSgpHVmI4SfVwiW5k=;
	h=To:Subject:From:Date:From;
	b=O8EQuUqIwkpVkEkTilDdPq6J0n1HmV74vRR0iZ79l3F/2LwkMv6QeinxEXk4C0I0T
	 Ul+cBLntsOgI4UKokNyFUOVLhX1vxlYggHl3OEDTfZnnxCCrw0AjjbEMoY4JiPWhIe
	 qKZRf1mxhSF7CrpEaGd58/cdCMZwB5Q65Ky9by/L/deMs6wwlTTGveKvG7MBooI6JN
	 kZPoF+vNZaxFq+JHjwRXhUgPHgwiRDSe3Y+wxFVcTkDUhOd9KJ39N4TKlltkUU0ZES
	 7RzMwxlT+4RelYJhywFzvzQzIFvdCg5yOmB5wieHGcCMoLpfMqJp+jPZyTKpZwZHkc
	 MzYdAaNqm0taA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BDCC55165
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541283368.12453.17976966506427826637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d319e29319c01c07b90478ede2a726896a89876c3f7276cda9e4d2cb44a57105
Date: Thu, 30 Jul 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785412833
