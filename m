Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCAF156C6F
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735392954; cv=none; b=p/v+w+oMcSuT84XljKIp7C2OPtyg4Em7Xn8u3xkUl+6Jv3h9QSYnnjdAXMC6hNne8iBMNIQnSCx2kc5V7dWZHfrzduPsPkHSG6Rs7kGbT2voEot1X4gYgJlYPgdMmScNxRNFtvsJ06it9wgdIJQ3kHgTIty38+A2G2g7Mw2JSDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735392954; c=relaxed/simple;
	bh=kAcvTetmmuk1YlgEXv2zkZ54IsbG+9Kysizr8IGcTTs=;
	h=To:Subject:From:Message-Id:Date; b=c5nEVzV2Xn5ua7Q/EhBYl/AtaQuL68UBsCsKhTBVYJ+6S1U5+HPXt7VasCdVOYT5U4cOgPIsCTKi1nD7vRXuBGZ7z+6NnGvGTy7G0X6N/w8zPw/Ca7Vf/1F70rDQw3xc5dDoe+9OV2gPlvnhZQnYEWyj5T/4nzlQ2w7Kr456UR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7zM9MI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7zM9MI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4ACC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735392953;
	bh=kAcvTetmmuk1YlgEXv2zkZ54IsbG+9Kysizr8IGcTTs=;
	h=To:Subject:From:Date:From;
	b=G7zM9MI7Yyiji0ffs8+nTl/vdnXhsiWhf+1AkxMEJTcLI12pysDFpCCmg7XfrIL4K
	 RQXLaFOJ7o1AgUD6paSMnN9MxnHa7MYD0KB51m+xcil9+idl8wjEoMymVfTryaipt6
	 8azq6PrjA4ixHv+wwF9IeGB60EAJLBQC4FCvb0bAliKa2vz7yEjdpGYfEq2zDjMjdW
	 hmPn7dTS217vr1w/8uH2Lyca8m0n01hTSg/V3cq4Syj2iDkbL09OyaNfmdTfoOAIFq
	 CBHJ0MUysGGza7PYZEPB2IZCzkLF61BPJCkwKovUsinBDtPzZDoA4qun0zaYdurAEs
	 0fbOttsi05m/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D771E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173539295361.7636.2496889530697285246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a667d5e753810a60f7bb04ecce3706a6fbda527f13017c9824563f0b9691573
Date: Sat, 28 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735392953
