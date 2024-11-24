Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8D7C2E0
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732412754; cv=none; b=oYErsr+O4E2xj1QymuRcUivBa4TWU7jUWXiD+aDMlrl577URkwcdRwH7Nwd7jOfb/+Qa5e2A/OkMobwVVnJfn0kghOwzc4X049RFG/wC/SZiGKRpE3mr7C9+nDP4XAR6ofphevS+X/cPG3mmVYaB7HW1SDCXkEXSzdiIrvgDh28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732412754; c=relaxed/simple;
	bh=SKiPJledA5uhqZdlGwobY3gq23SobpFVR6Pv38nKVB8=;
	h=To:Subject:From:Message-Id:Date; b=Bj2hT5wHumgrLnUBTjsUdaLqBfCUU5CcShWSZd62fcWTAa7lVxy5Rj1z/NcBVMLT8Rf01URTfFpHNwY7Q9dPTDxbYsxlF7gPaFE/IMU5UbwBDlZsSLk/j8NlzoqVgpuEC4WiMmPrIXBKchHINFY5SZmDJKrL8F9WQXSXjopXqbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAY96axW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAY96axW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14F7C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732412753;
	bh=SKiPJledA5uhqZdlGwobY3gq23SobpFVR6Pv38nKVB8=;
	h=To:Subject:From:Date:From;
	b=uAY96axW89F4rSrun9sqvwaApiwcnNjD4AeJEv99NyECD1sBdDiOliIcmy0mMCo4c
	 QTZ9uT62Ptf9wz8P8Ac6hGwZLvOEJPQwoc7o1kP6fJpV5O/kZ6ARLjOpdEr0t6f9xa
	 zHP8jMM6iNtShg9t2CUXVatbvh9Rep5BaFyolRLJcMX4qTKxQbCEOV5BoeVYTqsfRC
	 fPQb5mIyAF9zygk73sVooT2bTtAZuuza2637Fc1EIzb/mvs29GbvILTk9BiVhjpgC2
	 0om8Xs4+1dgYIMWIsFgjmV8fMArJCYhi+xiadcsPsKnqitgVmWoHIkWH9dGUi25rp7
	 RNovvvbP5f8+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC5CE6688F
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173241275361.10234.15289200746164969362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568832a045e1ca27bd73f86fbf06da4688f607731ee46e9fabfb2f714112e215
Date: Sun, 24 Nov 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732412753
