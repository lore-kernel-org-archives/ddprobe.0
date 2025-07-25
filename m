Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4917E54673
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753410594; cv=none; b=Ohjzltoa3I7qYZraJmLowmlCxVff5Fqb8TYhsVQW15BDwYLsl4KrKlKZwjQi3xjF5JO/kq+wjN1YhJ9DrRjDOWarP6pz9ZP1ENuEJsMVb9UqtS8DO6BkHX+JoRzWFmkeuwLEtD5KBhygdYu7mGud4y8rB8SLRdapDuqB24c1JrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753410594; c=relaxed/simple;
	bh=4D05Xy3hdsBTAixMyyBBdYb+cQtzLRlXbCZ335NT9C4=;
	h=To:Subject:From:Message-Id:Date; b=Y6rX6fjRrKJnAtyGMWCW5gZERYgftBTWGOksQTIRa8/l7HGXIz8+rYaCLIcQMsGtxemvnp5f7sJluV6uozc+UjGZewgB/5O7bZ+6JlVHKzSMdD4WTV6UirTGwgkl+yOzrMahCecc71eZ0FtjmaHlsLre2S4S2WL3TfFWODky6IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Llazazhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Llazazhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3510C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753410593;
	bh=4D05Xy3hdsBTAixMyyBBdYb+cQtzLRlXbCZ335NT9C4=;
	h=To:Subject:From:Date:From;
	b=LlazazhgBc461bs83NPmplZMbE9E9KtP2gU7sznqjfQMXVPv9lSLai0ToLo6/1mbt
	 Qj5zvkDgSOm0OehKqc0oMfn/VyzlJjWFrNOgJTDbiu9SdKvBlA2EW61e6DhUghdbdL
	 jcUSTkFg5xC2ahPrBR6auZjWYxuUYw7taiIona4/Cg8YmQR8mTuVCnhpHxz2lSnS+W
	 gOxhDqk1yroccClZ/wkXfKuV8l7/8a9xq4VRJVTytlhZEkqtJODoo3j9hwNxoWizEr
	 bx1lgm6ClFjaw+m3Epw7VGvm3clCbU8KvzES/WTbynJq14zg6HRvIp5a6SZjXgY6lX
	 iXj668oelDQVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C80C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341059358.19750.13704410667253511669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375eb7e19c3a05673614d5f4a46de4cd56ce44687e3339b583ed814852c2102c
Date: Fri, 25 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753410593
