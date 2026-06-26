Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454DA3F6C2C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782483454; cv=none; b=ep1su1Jc5mV1FSWZ+QLbGtJWMSw2F5QI6ct3+2Nd/LCeb4R8L+R5grWreeMb7CmKfDQFzXPyEij1APo1if0rPPdJx7do9pLbn4JCItIEsthOYzwMp0l6nGHe2KQp6eOdnQmoLVydKmIoil77gFKhDt/nHOri0UVw0cC6IHbgctg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782483454; c=relaxed/simple;
	bh=oCpfm5GobbeX8+QXyWo3/m2jjh967Zv/FKff6DuH0s4=;
	h=To:Subject:From:Message-Id:Date; b=rBYtrTU7NqaM8t6CdSn2hNztHqwdsZ/TEZC7hPA9ov6+zqB2nUDvIHIgXTCdpTSEWIxBVRr4kPH0hdcJocJS8TLqyeZUp5O63zXSXJ7daU2uUDDVfWkSve5DztVcFYxSGtaPjl0vJVV8ZIJVQi/VgTtErM5LHsCTWomiK3uUBhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irHG43a5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irHG43a5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB269C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782483453;
	bh=oCpfm5GobbeX8+QXyWo3/m2jjh967Zv/FKff6DuH0s4=;
	h=To:Subject:From:Date:From;
	b=irHG43a5peBLBzlg6iaePwTMSoxR1Dy93zCoQmR6mBsCd+ror5jsoOfoPcS4WyzdR
	 Os5ksHpP6mf/G8NL9qIcCtN4PhyNQo01RmVipZU1DHeIHG6okZuum7KLI54gYUXgoS
	 BocU9ygaf77fBSDs3OHzFkXWxGJVsi8v0Q5Wv/Pr1k21YGR//Jom16khbU0LDnC8uK
	 HxmZUW9kX8+txVYLot8Q6Ln3bbM++WHMeWo7186ycEUOKYC+w4A6Ly5rUTdPbf8twt
	 +XD/Dok9MnLHB4Hir7d5oVqk0hum3ZGoipg3MdRa8rOFwvaxcbtAGIKtB4fHpg7uMu
	 Ibi5/cxfv8XDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD443C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248345370.26685.909265469199346980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3eb598d1ec904280c22c4d136c294e0e9884b2cefe7f1ad0746df61a402224
Date: Fri, 26 Jun 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782483453
