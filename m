Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E6F366578
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769099634; cv=none; b=HK23IdsvjubfyMc75oOwkrsJWiSf1jiiylA2sttDs6ETQfwMnNB7KSI/DMrps3gxiOi7x2ETsSDNXNieikjTDZtSOBCN/Z/BX9y0DUM7aG9VjF+aBvVooz3zmvS6MVkucIe8tVS6NHATA2LiTAIwa18j3iSwu2c2zpxj8AYCKFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769099634; c=relaxed/simple;
	bh=14NJweSTr1Y0/cAzAvAhH0IHUvQuKGYNeh94IjYK1Ng=;
	h=To:Subject:From:Message-Id:Date; b=Xrzv6nRx5yAbhmgX4q6u3TTw9SOaT4hNHCwSv7Y96Ll0aE+foPVASx6ikU6NUbIwjN7rcB764LedQMbBpqxM4MSFsjNsBH6CwqmSYDpEkb8/zocuhZCAuF+i9R+GrMcskhfKuUxasEoUblxbOclOH3MTTqLR1tU25jhiN6CniXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osjJXPTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osjJXPTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D95C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769099633;
	bh=14NJweSTr1Y0/cAzAvAhH0IHUvQuKGYNeh94IjYK1Ng=;
	h=To:Subject:From:Date:From;
	b=osjJXPTk012A2K0h0x5vM1kGE+BobxFmklPaHBB3OZycrrYToBziLRWlwJIwdhW7J
	 Kpe19RMyPcEBTe4mvnY0dktk3538MgQMh/GPAsmP5XBIAFZxBmO6/6KFljbYQPySoP
	 /vIm8Ze2CWLfJZ+9q5ST1se8bmyS7qWOJIwtc0dhA0p7Mn7osPMkhGGRecDdgqwVip
	 70yo2es8uSHWHNcjSsO4z16wY+hQma8DGLVvFAXsF0OWNRiPbimpiAIIgci2iaj4jp
	 AasSiSX6vCtT0CJ+b5WjRdPSSn1B7nEeg17B6kAzyFztQeodoCLKp9GskYqq9O9iSl
	 ufsohj/yJ7SjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93098D3EE89
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909963359.4750.14126736241003820217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3162721b896ab20d684a2b42e2e4b596d03a9e2be345d2809c55027a63b81a89
Date: Thu, 22 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769099633
