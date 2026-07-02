Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C53431E44
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782955114; cv=none; b=qnJG/9FDUF5Wwf5W3lm1ZvDPp7SBQaiDOJapwn1DnaqXC8hlEqcLPPf8ytlL68EKrYWklZNLw0aaZWrTLOiy8on1W1fs/zQBy6ITcRnBZn4e3yuRbCewzUwUr1dRXhgA3qUsRNT/nW5YP/vkI9kqkhVImABoSQsfhO9mqOwRsEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782955114; c=relaxed/simple;
	bh=OsgTNRhYLKzTsga9aoE8/MnhZgwM3AvVOMQExHWsAs4=;
	h=To:Subject:From:Message-Id:Date; b=W22A+Iph4LNbe+wvdTGAbY29UAZtFFasyVMk5LbVdImoJ8ICnQwxmIR3YNer8dhTuCmTnmGftWDtJ4UjlwPCaT4QRdQDTGbsNfHGPOrIB3+BvLvQjG/ghuNY2k4CdPDFjKxJyIlK7xgwbR14ATq3ZzASHI6LRdt2m74FRAwo0Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYNRVJ32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYNRVJ32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAD0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782955113;
	bh=OsgTNRhYLKzTsga9aoE8/MnhZgwM3AvVOMQExHWsAs4=;
	h=To:Subject:From:Date:From;
	b=VYNRVJ32iGEg8nuq48NNFa/ExMJ9Swj7jJlkNHzluKgGp4r1NjnpZnKAUKIAD/L09
	 hbLNB+/FqWvwiwjOOYbZ1UovPVaG1I3C4NjgafvIY+jnu7DxOpsZukb5sEhGDPIhXL
	 +gmjdBnE6C7852ovM1bFgTYT2wAzmjGQ3qOeHYEYat6MxBBDgHmaBvp10HZOTk7Ecy
	 NtMqsnXPpnKCjDK+CH396dLDcriNCj2DAGlcif19HQTCmb5kVtfB0RhmiAy/A5nXZg
	 oQCO6pJt95GkFxfvAvAL2zlcpofLQHLCC8UrDbDpZQTgUQJHDHiveoYwKO7oRQsn5/
	 17DLgvyGFxnvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB3DC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295511368.8700.1294024362714402398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a8685edec1e4ae1878c5d4114ca451eadfbd697b8de73aaa576974a3f7a5ea
Date: Thu, 02 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782955113
