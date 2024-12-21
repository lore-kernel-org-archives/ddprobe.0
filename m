Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDBF2E40E
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734757554; cv=none; b=cjOLXPt5lOOlLp57jRRadqzWOG082K9BhZ3zaPG5KiCIHIXlLh4UI/VIHgA9TaQCHp6eCFL2+syKRb6J3WC6SHmYqDHAg2f41s0oGT2HN0akg+4xu35WlJULWgaG1DS5ktgWbYTit8y0PTgpxlJz4stP+WH3aEQ9wPabkAcmhgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734757554; c=relaxed/simple;
	bh=GuzxoNVEfuTuyWggsxs0vx1VXwTu8q5LyN7xu2DM8Ck=;
	h=To:Subject:From:Message-Id:Date; b=LOKyemH3THmEW4WNXLB0BE8ppQtl5tJZS8OImui7BoaWJY8fkmm7a9fmLC7zGTIyFK55eAZgOCFmux8uxGenjodhLvD9ktwuWlbXEKHO9KxIxAaHg1MTgwhVHgwxafr95l/PGCfEopoODURO2MRfFKjFQ1BqsBYuLNLTR6+blBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qv+33vqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qv+33vqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF900C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734757553;
	bh=GuzxoNVEfuTuyWggsxs0vx1VXwTu8q5LyN7xu2DM8Ck=;
	h=To:Subject:From:Date:From;
	b=qv+33vqA7YGNRs04HBPbUmsz5vFTK7RggGBCEaBx89aLj4mzMQxSK4JrWle1dNoxN
	 qzdSOaVxq4Odd5UNetGNlXNpsKREdTEKYJE4//kw7xuiOsVVZHGfwItneyay8blRdH
	 M62xAvwerE5StBSN2mjE+q/SqRqWt5U6Xodi7neIXZ+bbrsGTdJpUYeyGiiYzlBsFJ
	 D5K9zN/UKQfFIuiS5/BWgs7uG6I/WCO4EMfqWopllQtqzh6+yYfp2a4wqvZ1Oyxx0g
	 AuH6YjtlWKf7wAMruD43j0SodMWkW1lXpANTHG0L6N8ucBiUXARfZ3Va4txUy2MiP9
	 zSEl5K4cJtnhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A618AE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173475755365.27406.18269942622660494613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b642f74f7e085b16662df04e49c3b79799b93dd1b7fe8f02f9d05f822cc28788
Date: Sat, 21 Dec 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734757553
