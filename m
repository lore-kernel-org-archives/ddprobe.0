Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C688232792
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741709334; cv=none; b=LXAwJ6GbqVHtaRGVb9hOAwSB37Z2ZJVxx7b+lFObEbGepCZQJoYLLZWNPE00US+N5fiY/+j84TWvzSBn466F7ClTcHrJeNzbbdbm7Fbc8Ylo/K7e5MWI9oKK0odxAqKbrRb0FAZPCjiXaxhpHsVmJVdm9SrvWwIOlPS7XFhK3Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741709334; c=relaxed/simple;
	bh=rUBwsfT8mw80qqAJBNdn7SCvVWCDl+aI0azxQwSxTY8=;
	h=To:Subject:From:Message-Id:Date; b=NWaQ9uGm5V5bdBl5taKK5w5tO3huvfbYnqLTLLLPGJHr7dihHHQXjymwTblCUTVhplQe+5Q18lVii7To/d1mF88ZNZMrBNbbYucOowCzYKhCuSnPMQLeH7sr97XEwedSd5onsXMUdylezs+su2X0niTtMZnj0ypQ6lhR7lPgmIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urMV9efC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urMV9efC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC57FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741709333;
	bh=rUBwsfT8mw80qqAJBNdn7SCvVWCDl+aI0azxQwSxTY8=;
	h=To:Subject:From:Date:From;
	b=urMV9efCRWQahLnmGJCs65U97C537hxIYewL7ryOzP7MnU2HGoWZztgtJXOCt+7A9
	 MjpmVHqaa7oiaFEJd2Afy57qiFbobtFAsG4Qu1MUupi/zTX1RKr94mEm2gXG0lJlDP
	 WEnBC7HrS5apWN5tYStBQTX2jpbUBbqNymJvHnuCaT6PLLdmV2EFjVH0wSFUopedSO
	 y/D4iOYMK9sgzPkoBW9cJ3Km4Wb1CAtQG8MNZ24jYSCytAlPzLsUc0mtAA7d/fgJ3W
	 kdmuYrW6ylYSAz4sYs6gCAfkxHE9usRiu98B6+YEvR/lLXEerqA3Fq6UqfppL7jRWb
	 dEPX/BfdMTvyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA34C28B2F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174170933362.2284.6228127312346800604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 867b5cb29d766d346153a44b06eb24ca457285ef6069e661683c735ff0315ecf
Date: Tue, 11 Mar 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741709333
