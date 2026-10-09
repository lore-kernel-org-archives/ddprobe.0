Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926254F472E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791574834; cv=none; b=pXGQZ5tRTX7ctHKgh7ZuFmvjSy+wKKzUkqvxP1mDoKcr9mtMiJ+MwsqW4K1Bfqb0VCXbEr40w1J/XNd/rgKqOGa0WRi+b1XpDHp20u1vi0ZEY4eSKvZ4N3aOusCcCHG7WHqTmgReVn5bntAEQadwiOa9T4U1F15fo8B585Glua4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791574834; c=relaxed/simple;
	bh=kyaIA0E08JX1Cez2wEZmmB9GOLX3WZyuNCFBFKclel0=;
	h=To:Subject:From:Message-Id:Date; b=q8u6t+2KQa4PX9yzcMn/O4gV6D/zwC5voAauX5LdwGCHZ54mRbFb1I4Vkszo3LG7ehu7XswD4Fy+5C9wUole2tqaMiy3H+A0jgrS5SDvFV64GJqVTpbS79w/WWqyZWkNSewsE3cOhrDPdOl/RJk5hOPBHNTG+UjG1d9eTI+Fsus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W41F/+xs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W41F/+xs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FDBC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791574833;
	bh=kyaIA0E08JX1Cez2wEZmmB9GOLX3WZyuNCFBFKclel0=;
	h=To:Subject:From:Date:From;
	b=W41F/+xs1vHJZjIVih7nwG2OzsluI20mW6E9YYVOc7mMJgTBgqBDegMHHu2bqEv62
	 F7pkTgUVXrClxe9kok7Q/9moCA+aPjXWOJLuv/uxx0rye8lcVywN+nn7xYgCC1SqkW
	 +OANUVgHuZlNOxZoleJ8La4Czo68/NyMSwO5yE1DQ166vYHY18fwrimN5jFrYYufm7
	 xfz1AAL9nfpyEF1VZw1PAuu94xgwILkz7sqXkDPvWgXnB3lnROYMuPzy4cDNkoiB19
	 SVvfCki15mojHEky1LUB5Ry96CETeeDLO4Ko87QaNa/3rbT8jGDpCHEIrUPpGDwYo1
	 KSGeyvq7HPgSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC11CA601F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157483369.12332.13861427978039573419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241a7c0453d7d31e551241350f8ad24f2f79ef2ec89330671cf49dd77a2c720b
Date: Fri, 09 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791574833
