Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D7A13C8E8
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755461394; cv=none; b=fYLF6xpYh+ZP7VXIJmHdZwrQKSp1EH3fdpl7prdCV7YEvoAGU4hAdBBxcTOqjJc9NID1xEkjt5My7WQkvvMG8bN4JAc+HVeAFL+m0ce/m5HxwRhIOGwnHLHLmisDyULT9q1qJHKP2/O3Z8NFad5L13DK2U5Ze23qX0hB5EFiPB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755461394; c=relaxed/simple;
	bh=zZmUjPbNfZNV6onmvkPGfrjT3lqtPE0yskqq8ZKRYD0=;
	h=To:Subject:From:Message-Id:Date; b=Mzrb3ClYp2/ziP+IpX19od75PWzIvg+b9qQ3W/L3WRNBECIcPRUfSklOPBhQw6RyAcaVUUaRNk+OVXr0xwmsDyw4hc0iLFm+TM85vF0SWrk3NzherLsXgDuG3qak2WtUsal1JCX+MmK22qknDfkHyIjEu3rf62exI1Hy5s7zHfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uib5HXY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uib5HXY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1B8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755461393;
	bh=zZmUjPbNfZNV6onmvkPGfrjT3lqtPE0yskqq8ZKRYD0=;
	h=To:Subject:From:Date:From;
	b=uib5HXY/pZ9nniFJBl3Txs1lHSw/RTe+f2AoaauARHvuP4/bV+AbkEnKhbME3RpXl
	 PF6G1FUT0eTooIO0QDEjDu3qnUZIT2rSQ/QmERxTXZa3/Aa+HKi/QKrw7hARYnkebO
	 OmYRajnzh5sTgtiwvD9X9uA5lNaUhcfg9XsQBiGmW7iW9Y5PkNHpZOcuX++z0J9a15
	 xF40HjFYX4PWNV4j0NMs9tsd9ZBDh3O8Q9lZ0QrL+keK+J6dnqVzAKabA64Lop/7Vp
	 yXNKjvW5cdT0dSbygkzjQa9I+RH4SCW0XHuF4oPuwlHZQrwTT66HI9nAA4zNIaXNvk
	 353caBO+rI+Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F219CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546139357.3436.17805138550845302514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a14bc35c7a905a8de93a3961a970e4c3ef71bc27f33868a0b803049c53825de
Date: Sun, 17 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755461393
