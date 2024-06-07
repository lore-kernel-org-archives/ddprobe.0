Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5C0E3D6B
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717733843; cv=none; b=pI+qjoES81bcyOVMgffYubWaA8XroC6759fw3My1TUhqDFJnUiC0eaiQwMffcwVO9cp1risRDm5Diz9NqwEgspCDwH812o5DWPQ9aMqK+Z6+KROqfZK8saByJSLAOdHP6D7HKTJtPTfXiPRSHVy3IF/pPPgcQlt5eG2LiefBDRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717733843; c=relaxed/simple;
	bh=bmcH4YnphnIA3AyPV/ggUtOev+vI0B/wC0S9SJxNL6s=;
	h=To:Subject:From:Message-Id:Date; b=NP9A3NEw36S1YCXEGy+noSMuumazlHUNCY/ncs7lYjpoBiKj2MzPUx6HcDHt6xx9AYrqRkBqwxKTOV+A0q8Q1ce1ZgkiqwOpC6tH3B0q2wnr3kOuJ8eGmVLu8S1+nMgOG21CqsMcwX43U7/OpQZyz+xf+2+nJqgvnGGx0Xo64gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lK2gjqhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lK2gjqhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAAE9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717733843;
	bh=bmcH4YnphnIA3AyPV/ggUtOev+vI0B/wC0S9SJxNL6s=;
	h=To:Subject:From:Date:From;
	b=lK2gjqhJ5f41wNPykzJoRBlR6LneN8uLl2QUiKnre33uC5EqbLHgVekmSOerHXQay
	 qam32/UsAkQQ3bpKAuRBB6JBJNdAmuV0FRvNcoMywvHXdPRfq3B3QDFB3LXsllswku
	 Tnalk2OcicDgy8r3zZEbPj9xueHbkjTAiPHsnYXsH584G7oPFbeg1umFhw08zreDkn
	 G35DutQZv7r+zKXNiUiKh4a5lh40r4vHAvvKSA78H7OOIQ6XZclGn4LXzWLgiwe2fD
	 DzzXXiFV7DVD0PvLxXOn3Rr0ev6WXGo9UR+MN59UCO9mYLrRe+nL4h3lhKYS0Zv2sc
	 WWVuhiZFMBucQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDB99C27C65
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773384283.24780.10935533068822692627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cab79822858cdd4a2ecc94999f90dcbfdca4fc4129c74e9494204d8b00b141
Date: Fri, 07 Jun 2024 04:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717733842
