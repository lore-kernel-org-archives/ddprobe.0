Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC0615C0
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753936194; cv=none; b=gprjOHFzUPvllzb6WKYpk++az9ts2l0u/tfUFYMo8MCBQkpbIetuanZMzrXoLLRzfQdm66JRax6BogU0PZ4OS632vvDbtwhZZrgZsNOtCnNrx7+cZtDBROmKV7yaN85fkbqGYeUgNO5cvGPsS/BrTwewHkFfcKL2PExOXmuTXm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753936194; c=relaxed/simple;
	bh=iaC8HCegYs/PWNvuLkdeDqUF3WA1NidCryiJvU+iw+0=;
	h=To:Subject:From:Message-Id:Date; b=Or46OAijhV9Imq/AFh568xejHBuxmU/D7pLWk+AKeShvjhC/KDi2O52EP2DhSLzP3LbhCZfRniBnM8hX7RCDrndnAq+cHcBovVZAfnkc2TH/5MwyT9JyBFEWMRaJAcZCpsGNs7fU1SCKGgayNUt0yTp9KiUt2ZchwWUB/2XCLV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=horc53Qx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="horc53Qx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A52C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753936193;
	bh=iaC8HCegYs/PWNvuLkdeDqUF3WA1NidCryiJvU+iw+0=;
	h=To:Subject:From:Date:From;
	b=horc53Qxzu7MbpHoXSDvODwVaBI3ZoLfbDmAu7UwuvwZBINYbRB96YaWVYon84Waz
	 FSbFVuWAMotR06hX3Bkmgp5nmUsiU2Xp7x4dvwJM/kTRN6C51rROOsfOFC2+mlUKZ4
	 V/T2YYzqaAg/SAEB0ilBoFAWzoArer0hlQVzRcGuhwozsHLTjn7BSHmyeeeVcmHmkB
	 S9I7/O9MhGFDQHqaqqhtW+ldaB4Fk8PpF5HOItnYMMOWEOVgZ0b2ghHty4zDLDd1T9
	 JLTmgU37xIzce8agKykURaRX2KjHgOWLg3mbE4IU02NUnnxrhBsbBFo4OipBJgdJTr
	 fJ70bGhwrYpHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CE3C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393619358.23420.17762878825450462390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d59492dfbb6bd46d359c4ed03b62c7bf3eaf99fd9288e6118b121b24feaa4a
Date: Thu, 31 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753936193
