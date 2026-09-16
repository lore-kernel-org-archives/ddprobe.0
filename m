Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98094262FC1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789518634; cv=none; b=cBBQOlYxvO5znEY7KegOzTg+VZNrOLTHG78s166JvmYSdGACofHWimNwMzlKoG+7O5+U5cE3sTAvzTwyaMktouETWJr8HBGgbiGUIbi9piiGdNJTzGpo5kUGWgMCJYlsSN4j0RePrD1tfuMwZtw8YR2MLyy2lVVvNPxQLpjgXVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789518634; c=relaxed/simple;
	bh=51m+Nm3arRRf5Vsi8gpBSgwlsPvMxrQlKW5SFiKsrCw=;
	h=To:Subject:From:Message-Id:Date; b=UNVv+zpb7yzzigCurTriL9Tji+HZAqFCpgdpV7kxczBLhJ0nAbem6RB3b0NEXyciG0JRn7kcGlJfr3izSq4cnsw8qTnLE8e3DDQESXGSowjfK97kvXrHv4naAY9D7ucyoiAAvlo9fORO2NylfWUYhWxoUvflxHY8EpEoeA62smI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTeMiVJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTeMiVJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD3DC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789518633;
	bh=51m+Nm3arRRf5Vsi8gpBSgwlsPvMxrQlKW5SFiKsrCw=;
	h=To:Subject:From:Date:From;
	b=XTeMiVJaq6/YvOzUemBtclLybn5EGdRqm97QJCaEHLuBdCDuRxQUAbwqnM/CzDyFc
	 5UmCMLuDGooXSCjC0flRk20NDlMVk4t6Z1F56wFz6EW35w0mIBkc19hSH3mT/7e681
	 /6Mq4LOwpwUOvaTuHKCpJDD0jBzaex9ZkVECNsOPr7Z0mRWasT6bQWzzt3z678MysA
	 DLF0xDWAFPju3UyFa/cMbsJgKZHx7NUllL3VHwhHvUEyqkztoT85nUAW+eFZb+CW7/
	 AJhdLC34n4qPMfYLowCPedSJIjeeHt75NDSRITYMS/brcVCm6ZyAN11TrGYvN7lXEB
	 3Q88vQGW57Egg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD03C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951863369.31913.4668167647684254124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57bfb9bf3394784b5c30ae28002c48f3d09f14f5f437d22108d2347878a5ca4c
Date: Wed, 16 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789518633
