Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7F23655D8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784144914; cv=none; b=JkRBcZ23Vrl1Y0eZJ3R5Kh+FUx67zDbaN/f5+2LBr5LzcmN3IEuCZQaqSKc6Vd9uDb6L4qlSunCZNudxi2JUVibIXbKbQ4wvfOGn1E+AaHk03dQkF+H+cPqWG4K4R1MPTZPGn7GL2lIl8HUybfLaj1C45f6DiGfxxu/8f8YdFIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784144914; c=relaxed/simple;
	bh=IfDsBcw4lSb+pIQ76GOgNkdkNd8lhJ7PBZd/jyMU4U0=;
	h=To:Subject:From:Message-Id:Date; b=SRLEbfyw8JyWJa2yAYI5KOnbSjMXOXAC2h7/KUqJMHje6Ctib7uDqtfNSQYAHe+oAqYv70lIZW3/l/NWrSW1bd/ONLhZHeF0tRCxCTPutPAHllvuoySe5zufauPFSidihCcXjIyoy++58xaRM+wJUuC93mW9BwmEGNlZ/XiVULU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJKEb+Ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJKEb+Ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D915CC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784144913;
	bh=IfDsBcw4lSb+pIQ76GOgNkdkNd8lhJ7PBZd/jyMU4U0=;
	h=To:Subject:From:Date:From;
	b=KJKEb+AeC9HuV/EUK/SS72Z23HUTF4RYrbA2R6aAzJgI9CxnGLvKg31ALMhsUKlvI
	 7XJXauV10nxpfDOv4Qd5uujg3Ylw9Lftk2/mGk5/GBueTDajX/2EpCwrAvGEjQ5CNa
	 RrSq8e9dD4vvqJZJZ5vObsvJ0oFZuEQTxZkOgD7L3zSM1bprqA3YxkobeTzn0JOgmN
	 tmTTxjdTE31IsHAmzOESTwlxeOslPYCMoqAqKMwTiA1GklJ/N6xjgu10Q30WRFscWX
	 TMcWOCWwz0RD+fUoxdEARQvhft4bUWL0shIO/HQ+9i34rN4rcakEWp/9yQ360TFu+O
	 EyhWIxJsT7pzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3007C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414491369.6961.13459431958876269193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021eaa7ece05c7bf0eba7a2b9b2be7ba69b54bef8c868e028d8b329131218b1f
Date: Wed, 15 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784144913
