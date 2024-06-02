Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6050A219E7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 14:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717339523; cv=none; b=oU1isBjGqOcQMLiY675EPEdnNvDEMZU79oh6tTx1aE8w8jaYAXBDsqVQxk9SNA5z+z85lkuRGvNHWfi+DAzY7C6WHucc0z3deB8KrTwCDL3HJoBYHY8X/aMeluJ+wYjbBs6dEGnFlydOJiUc+ck6L69fg0+OgmEVaBJ5xxncu/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717339523; c=relaxed/simple;
	bh=/W+Q+2Rdp+MNGIWWaIob1+6b7fZdxkl+usId5HapVuU=;
	h=To:Subject:From:Message-Id:Date; b=oA1vWtunD6Mp8vP8DLEK2JH+ZEGxVmbYE/MaCvwzMpz7poavkfCicEZoxbRTkBeDnl6dv8PeRr1CrSNROoUILYFIwgoiAeWV+eoU+sxNdjE0WfX9adipisCA6WuxbdQDGkTbCh+ia0DtWI8J0+6rxdfFxsZv0KYdyT6atT7OlQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IavU3I8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IavU3I8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04A2C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 14:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717339522;
	bh=/W+Q+2Rdp+MNGIWWaIob1+6b7fZdxkl+usId5HapVuU=;
	h=To:Subject:From:Date:From;
	b=IavU3I8hq47L+e+mjh9gzb1gNrA+o0xmbMFrjPMOOIY1NAx7hY/Ry03ObWBpxrwiH
	 mnyCmH7cXSZFTSBahsNAwai44dsT24pSXaPZy711GdhhsWjTOtHxbI3VVr6qkhJMBX
	 pvolHPYtKBAaEHWXhLwqKtAJBwqb8LiwQWCPcpiQDKR1Ij8NHuobRRHBKkzGhnfM0v
	 41/8RbNNljvuPII3dnWEif7kh0gzVp+QXWTzVNp1Eyg8ZyNYM+BSy1CERE2z8CpuKt
	 UuzTsLm8DWKgAEkd9t+3ltOQ2gpIkq+x9nZ1Dh4oiO2ZtzORtFivKjGK4A60M8aVHF
	 8y7g2ozzzwn0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5FEC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 14:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171733952276.31943.4339203842445990094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6866bbe69dd71fbdbfa9891b7ea3866e446c64d0758b939f5037144026422940
Date: Sun, 02 Jun 2024 14:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717339522
