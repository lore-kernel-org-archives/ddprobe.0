Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A9D1A2C05
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715179943; cv=none; b=c+aEANCxnThi/XkZMc1wQGSYhPxlMwq7xmXYKnWvNigHKm32Wloo+Aw1VkxBxsipsuUdBz4ZLy3OkR1fOyu2gsjBSmDMW3UuPO66hLfsh65mDccz936OYEx6BNl83p1WVGpaU454qfkkSG6Zqqha+S3bf3q7/jZ/i1JymhaPnSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715179943; c=relaxed/simple;
	bh=0uUN6tTuSV79cASM8zyAqMbS9aLPxRgi/rm35Pz9UJE=;
	h=To:Subject:From:Message-Id:Date; b=Sa17lZCrfg2CaBRwfpFR2ps13yWwGVF84OoI5CZy7fN/STT2WZHK1o9P4k9pDRyCvJ9j7jMI9RpRDRQKe9d8+0ULvNFMGzUamA31S7cpkRH5dYJSIX6UuQTrFx3U9bCfjM7eJgqUT8Sb/FfBPj7vv+gjcZ2vz3rppqIrzqKsYzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzYaPMIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzYaPMIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65B0C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715179942;
	bh=0uUN6tTuSV79cASM8zyAqMbS9aLPxRgi/rm35Pz9UJE=;
	h=To:Subject:From:Date:From;
	b=BzYaPMIWTAmCgOJtyFLpdpYj6cZPWUmPVsgAjCXPTxIBsErpmPFha7BQW9xqHheNq
	 KKyLcQ0YO4wI0Mfdt59rLxjm5VZgHhr2OskJem0p4HgKtwLdBD2UQ5mOB2GT/0E66D
	 BtWrOxuNxrDAEZpEadv6pnqfVt4pRBSImmLWHQALz8HzjmqmwQqy127jmT3TS3Ql8e
	 +Uo8Jl0xZONllDga12iGS7bo247KF6mKBrFii+GJb3vmxR9Cg6CgyOXligrJUBjyHa
	 msIAHwvk+7EY6cZOTzEBBNd9Av2psdjNtIvRPWX9TiPbg2l3yyJpOcAcI6UOO29v6v
	 z6pdjhP0IEBSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20C6C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171517994278.17112.13197481797290669662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea6f6ade8826838e7bbfd7989c9ebfd4b874ed0e06847024fb02a2355789aec
Date: Wed, 08 May 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715179942
