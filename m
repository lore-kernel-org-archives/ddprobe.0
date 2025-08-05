Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414E23FE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754359194; cv=none; b=EmaW0q+BcoD4eFn3cx/8tZb4chTHD0OionE7Jy76HNCROn3z2sTuakaHf9ktjbwlnVbInPmGZcDkXXJ0CCdTgMJmMLVkRb97vTte00D/udJZPI7CPk0xHKtxlIKf/KgsS+GHrrervhCm8SRkJy8sGhf5A5oQ+EZJJNvirdZuoK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754359194; c=relaxed/simple;
	bh=b9C3C1TnQIhUf42FvbCEVdZ5x1DM96nYa8ajwM8ejwo=;
	h=To:Subject:From:Message-Id:Date; b=DKNFTY+u78iw0nsIqmF5bjMIVOElAxsAoWEECq95cp2IrHyUdqbay5HNUXO135QRwYAg0VapC3yyWtC36IxWsorqNoYgU/Z5epTkum/iB/EWH4450W1ob09Kljgw6wIpr3bGY9fKeHnrdUtVAeZDbIYDPBMUmEDX5lkxAsA05ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUkCUd4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUkCUd4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60EBC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754359193;
	bh=b9C3C1TnQIhUf42FvbCEVdZ5x1DM96nYa8ajwM8ejwo=;
	h=To:Subject:From:Date:From;
	b=uUkCUd4/3LHfRBV4gmekoGaS/EZ7u3K3RxvfbJJXr9Lm4OpSGd8+z830LuI33QTRL
	 th2s9pG7SNfhcoOzNU77OWPb/cdkGc/YAiPWJkII2E51oJI7PtZAvwlILO/7CiZK5d
	 G5GJV910Qaz66vxJG5Nu9qPsn7fdzdQGbdEMOE2jAeSn31uqtqDkn8sb6VHMt0cyvS
	 tzl8e64LRDUQKkItFyEriUfaUs5kYtOMdILJTfVBwAw8c71NXIZkmNFgJRLXC38ekx
	 jC/aCrJTQAuNZ/hLY1Xw60VQt6+W6G+L9+qLp4ME5AcfWvDB7HuP7TBL88FLU8/KzI
	 X2e2eTWFpk5iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9589FC87FCF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435919360.7913.8825890807609698999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44107418fa3f859d207b5d8963bb94c4fd9407b775c7b79bb95704f8db203edb
Date: Tue, 05 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754359193
