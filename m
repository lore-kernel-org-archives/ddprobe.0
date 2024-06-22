Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1BF79FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719025943; cv=none; b=cz4bgbLFCVxDQHxtKXBzUkwStjpva2IT3UvFWrgdAPjzQOkMrGTkBlnvGfU4J2Jx0A5o1fPhetXL3/J2cjDCc1pYcRrRzQ+cCP691ls0tMoGjF5LtYSsu8OtVhWPdtxPiQDyuNXGGkvmBeEALAigdWPM1qHlxWhpacFZ6WcSTEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719025943; c=relaxed/simple;
	bh=b2pvpeRvlSlHU4RFMZkbXdoS6d1N0SS+2vlDfGmhUG0=;
	h=To:Subject:From:Message-Id:Date; b=gPf6glaaIAH6lRIHPg5WFmSLbSBbwD2rEVxDeasA4wwLDvLOXqy0NF6UmlVCzI3gPYxYbn/zK9Mt33zPiAWyVYuxH6rK0lWYhaMisgyDYkhwbivbq0VhLabt9LCEMoEUGWxA1G7Pn0F+PtdadzJlU68cLomcGxwEz1GJs+T5HJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgK6l0hO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgK6l0hO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10A3C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719025942;
	bh=b2pvpeRvlSlHU4RFMZkbXdoS6d1N0SS+2vlDfGmhUG0=;
	h=To:Subject:From:Date:From;
	b=kgK6l0hOGdRUFe+tjmBiwvSkmedlEVkSUXHVpNN4v/sW2l7hl9/g8ILkz4FbymM9P
	 M1rJ/sr0pumcAHfdhsRj7KuAToPvOQOun9R9rz5lNRZmTVszfgasGy8bpJrqpemmM7
	 fBHhDJpvMc1fNWmHL7U2gLE0jRx762horXP9x0sD8Kift3q0+rSnjmQHekApvidbss
	 wktUw6N7n7FLXkRy01gw1HkiU0PPVqq3dLQA6Jm/MUgt5sJB0xUFL4sAoVPs/bjDcK
	 oM/ijTJ6XJHoL83AafHBIRDQSOxoeO78EJixToLFRp9EyTb+23EI0NXVUysbvDpNRC
	 tYBzLlARlEDcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FA1C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902594279.16193.5560013772928448791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5dc536492844d34e3974f0b6489ab2835d5067e60ba5f9632a975a237318be0
Date: Sat, 22 Jun 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719025942
