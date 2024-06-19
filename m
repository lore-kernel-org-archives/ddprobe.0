Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EE21E495
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718778563; cv=none; b=ZJuPLh+9csFKY0HlekkjkGE2L6JpDO4earrMAy4PF+AtUesTlbiSdo1LfbrBh1GJVmGpNvlt5onUCAf8IE193FqcTdMh+NkUrXx/a3scu5TOqg37VXsc7TGGDykUzxjtLBniszKJ3HdBQI5u+YMeAYCo3W8bUscVoPija2MtXk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718778563; c=relaxed/simple;
	bh=qT0n+kbr4qUg4sNehfGy5IGniEDDs3rAGucchHnjeQY=;
	h=To:Subject:From:Message-Id:Date; b=giVT15qv6u3vuRLVRbuIkErUjgnT/f5fHpcJ/0ag0YiCkXzzpso8R1y/GLk8WzbBXAeu/DcF3gbE2wk00vnavfpjUoYMAqYhHtU6eQYDU2WR4dka5lSKVi9amQlqQBv4gKM0pUElrIuGPxJ1xADC1ppD79U8rGluy45g4mDa1OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIndGi6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIndGi6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC530C4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718778562;
	bh=qT0n+kbr4qUg4sNehfGy5IGniEDDs3rAGucchHnjeQY=;
	h=To:Subject:From:Date:From;
	b=KIndGi6sFHwWldnNlahBxygD0dfm3TLVkPTsAooRty7DhkI6st/B4SWdjHkaqr2Wv
	 9RLV0OX/7TLum3e0Ozwn7gLhmG/0ZezkaA4Poa3L0vtDN++di5W5EfVzkFe6Yn/BP6
	 mkK1TMAtEGtTUGoBtjxGYAPSWn95VD/OqB9MKlfyx4BPgfpP2VaskNIgKALL775MUh
	 6Jdz8yIUKNJtmXNBVKeW0LOk8qSY8ha7Z80VYBHPhkBaLJkgdAxBRLKihDQxLFOJvq
	 YbVaTfazfKVZbSlFhWyR1ZKPzPMn8rKTEpEWuLwxKY9P+pW0AzQG6bWB050cyeMcMo
	 TXpJ81U1eLXOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5696C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877856279.15477.8821266430553713253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7484b5735a771c016523e1cd9be858416227853fbab26109c217e1f3a43259ff
Date: Wed, 19 Jun 2024 06:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718778562
