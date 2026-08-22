Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455262773E4
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787419834; cv=none; b=WkDqZN7HIPmYBQ8FIhobEZOS6vuHC3nn1Jz3WSJUt7JCLrJ83mPA4DlH2JAGUJgQ1GFeRA/AFE998YWOYSDbuOaZj7D0SyZ6p9lHPTgGP1FrOMh05y4y96NGxhFnzI9o/JaLJcPypXUOQNJQ4ChpSLnGzumwH7O4BK+DU4HUkFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787419834; c=relaxed/simple;
	bh=la/YC7J4IP+VjuVD17Yg0H/p9llYV/uYdXoz88FWdDc=;
	h=To:Subject:From:Message-Id:Date; b=qHNCSRs3QQQPKBNKWPC3YKMlEIv9Hoh29u8R4T9t1OY7CayaNiBZXebwA46kWEh9EMFHbfFGOzrjc/yxQyyYfjurJNrsewy9+HBlM2jFjcKgWob26wDBAE2T6YvKbUzxpkLxHGvC0/lp4YF+srY6unO+3e7HA2b2g5Tj83kvR5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbogSyOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbogSyOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C64C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787419833;
	bh=la/YC7J4IP+VjuVD17Yg0H/p9llYV/uYdXoz88FWdDc=;
	h=To:Subject:From:Date:From;
	b=jbogSyOoJiCBJOAtfmKn7gA09odKTofDiuABu4JuhghHpkrheYJVqujW7oCJhYdJj
	 oZd9/WIDraQaakJLZLXHY8t20ACMXUsmWGZdjVy/ApwpJHT/G7Q0vmZKKECmfUu3Xt
	 vhRM3xYXlV6vxbYjYc35gRczgkrqefCoWnC4m7DVWEkD29h0mXVUXQkhZ98WsjMwr/
	 Dm+r9FYq12qMaZV4lRSZfeCJKC597bJ5NyzCCecivVOWN2ro+dd+IyNmavIs/5jgno
	 DcXIkGgr7VDgFiVPZyHYmGeRlyvaeyhgsx4LEedNZs9pzxTW1Tr/KPtidkIimaY9eo
	 puKFFjXGfPBiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD87CC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741983368.17291.15940346912310715945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f9c57b17f2033314a9d236965bf1975a1f41580cc7d90da318f56cd083ac8c
Date: Sat, 22 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787419833
