Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3515D30E0EE
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789318234; cv=none; b=J/m966TxmdrFL1PsKtZI9n1OfipzyvPJKQtZq3IbFdS1gC7zi/4j6pc01weg1dRFI5kqeYu+0xSWgn+ex5skY5ZKBWnc0LbhuH8Rfz3oh6/0qelnQRpajwlJpYWOnD5pz8rmLRVEY4rfYA4NJRDsFqpWA+0D3p+9s4m/V8CCp/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789318234; c=relaxed/simple;
	bh=ZF6QlaMcY34EI4Yjj5Xhinlrf7ll+JGBGOuOwJXdbzk=;
	h=To:Subject:From:Message-Id:Date; b=AEX/FKraMdEzlUjxqU1N73l3Dbp4RYy/dUlvvsd6qxfBPJgn43RXkyBdsHQLGjR1W7zkks1pqA4XC9CEbEDdzw6KSqupSjtf7b2qsxiRUDZCBROBhYjyV3zfnwP7R5f/2hKFk9OITXvdoixnXkSwgUaYGuf5o5aut8w1nyQCyu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIZOHnno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIZOHnno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB14DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789318233;
	bh=ZF6QlaMcY34EI4Yjj5Xhinlrf7ll+JGBGOuOwJXdbzk=;
	h=To:Subject:From:Date:From;
	b=jIZOHnnojFNokleVJ9kghD2ucWXgeJI4BgGBNeTmAL7UILWwvondAzd6bTH4/ak4+
	 JzFRad+1bHcd/kBSmj+Cwwzy2/e8dQNVrHq6+Ek0yagapnLVdBsGxGhbxU+SulyAJJ
	 SYZBu4ta998czDWV/+H7aijOPWwyvgplV7xLXYYXnup+3yWGSlMi+4QtUeVqQe3Bgi
	 c0ILsXYkM5BFs5Kc74oiiCTHDivz2YWB/XkMUOP73ZvwnwjmRQkd14zWxDTnJz6bmO
	 E79rKnfb0rfcgUUVwcRMSWZ9+P/9h4POhM82Y3GPZ2QWzByg59Ltn1l81TQ6LuIN3R
	 0veTp3sW+aVew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A977CC88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931823368.30090.5656727478757034379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041ac7a9450009baffe8cba0807cb2406c2d5262621dad5001b9f646f47181d1
Date: Sun, 13 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789318233
