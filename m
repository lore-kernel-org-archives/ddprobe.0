Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3712B3D891E
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785997234; cv=none; b=QTQbNLMykjrXEtvBQFv856Js4OF6aICVTBMknEfvQNCRXrKapdiOEEfMgC4/zlrNTF0Mc3X+qTedcOM8DW2LDIJ46vDHBABnUMjYFreVtnLa4XJ6RLyFo+FoF1BCbyXMtqGEFZCiisb0VP9xnygM/trCRhDcnKeTX+egRuirRkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785997234; c=relaxed/simple;
	bh=k9bj7f4HLJleVkXWp3rHZe3QmGobFE5CdW3VE1RJMc8=;
	h=To:Subject:From:Message-Id:Date; b=bopWm+03RgcxMx1BrmmohUq4N1k42iRpI/PsgW39aAP5wcYPXOkhGpw9BGsTn+3Vg751GlX1BGU9zkUYkX7H8HcHhckhEydOe2a31aik0uxcrD2bJY8by633A+huIkuZu20HmNpyLeIP9yuNj+gsucz5Y7xNNC2nmmlP9WKV9qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXkaFunw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXkaFunw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E34C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785997233;
	bh=k9bj7f4HLJleVkXWp3rHZe3QmGobFE5CdW3VE1RJMc8=;
	h=To:Subject:From:Date:From;
	b=MXkaFunwKbYWTa1n9l1Z7yyvIak5oy8PBYhdXXwE/LfnwcvbEwkHBxjgxWpjyXLPr
	 RXg+Y1acvYf/Spxr2hp47UYuomgeQUDAFWWXhM/RacRkY4qbMfMTIYbTNhUtDHAfKQ
	 pUd1gBT0mc48pqBPTHcN6P11XDoU5nuqD5UfzwD4iUpEoRxWDxLgydy+P6sGebPAmO
	 c6xQfLiGAttnTee5AvC4dEAoPopKDEmf3NOoA5HgL4hQSg14FulMvL/QPXqxScNlrK
	 UeCXmjwcp2QVxlc/U3AK3O86qsEZard7isKWbfqsEDqMCT4NpLsA2fEFNl+IMXOOvl
	 x3bUn1eLb1GZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AB4C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599723371.32161.7729103447188272026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9adcdabfaf6716dd59d717bba53f9a64dba407dd2f1f77b59ec690a34268d1
Date: Thu, 06 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785997233
