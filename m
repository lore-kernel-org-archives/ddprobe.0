Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2CE155A57
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 21:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715809943; cv=none; b=cVwEK9mTBmMW78ka8C5/wxHguiaZSaP0hDD4deIR0u9haOKfY6a/LT9G/oF9Upl6IiGCG6mXZs0g+Vur6W1uHfbn0ZaCpWpTo8eVQf0BBLN5KUTEBN3MZTYVeTJTsfVlOymIOyldxb+lD7i1cbaHSoFDOracjASQ6xB0J/dw1Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715809943; c=relaxed/simple;
	bh=VrjUQh+D+Ulope73dNQFx0EUJeDhlEiE8ESIIAZJN0g=;
	h=To:Subject:From:Message-Id:Date; b=sAMV+V4d2pqeo/HVddJGH0C93lVEPK9WD+S1mtmjSbVWXpNgRN95p+mPcKHAIB9UxmFiNmF6+5WapVJtIGeE79DBfdtJeVmTZTFeJqNdGmhn4lAsaq6b/nsTDLxlhmQDdFeRnv7DfmMUDfqsyZnCCvfDDHnABjJ0sKqfPx36Q5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqwAMyAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqwAMyAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C27C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715809942;
	bh=VrjUQh+D+Ulope73dNQFx0EUJeDhlEiE8ESIIAZJN0g=;
	h=To:Subject:From:Date:From;
	b=SqwAMyAcDUCt1prIAVNVeGSdkrpdgmjrhfdFSqoA3K+4CUbtPY4VnX+Fsgz32J6Ag
	 kJ+Gui+azi2jw9r3KFaFZHoh/pn4DqlbohO9ciWawe7OHnbnXqPc7K7/4FapDhjcyh
	 iSBD5pHnV/z3UJvsD4vqvlu2Iv47aUc0SQa3SwbXkUG//Y6MGGxDDSkM1gyRWF/gG0
	 67IPKI1/uO3u4p0W0MCdSAomqCUGgC/PoHCh29xYCI7RMU8hUOqz7mvGpQ7dHK89h/
	 EfzZ3aUyuy7xK617siFjxl2tl3nvBiM4LoeH1WTtzBQRYSg1XKeLZxBgf+JETFjBGg
	 GRyleSJ/nZKsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AE5C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171580994278.2986.13326456532224055445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9461e9fff2ce4d18e6f1d23aad15d446f0c0bea93c6cb0b3af3cc1e457aa7f
Date: Wed, 15 May 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715809942
