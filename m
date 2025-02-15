Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306FE19ABAB
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 22:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739659734; cv=none; b=LuIPgy6Ow2MjWz1WrLMyY+uA7vdjRBgIvA219kdeVnckn4TCRhC27XJINUWFEZTGbrSNMIzlPgLNbwOJw0y0texfvG+LI3yrWZ5cG3OohJbgo64nDOScOR5VHgllY8ACSMdT22WJEPfVhpr1E48MY7f9LM7BOoCXrTUjeHl7Wc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739659734; c=relaxed/simple;
	bh=mUVC29l496tv9Khc28sx1X3vPJbQKluw3oMenLNH96s=;
	h=To:Subject:From:Message-Id:Date; b=lZX4VeLW/mKkD/ea2qs36mCsCZec8PJFVtyXKYn0D6q59sUP1ZQUn+1jJoXylEN1kpcwF0Ujq2oSZvfGWx+hGBd0bXpwExiKd/RSPvNkCorIMmQXQaIhKAMtK+7JmQAAtQPlKVuzZas0DkPSEYHLHhvi8y8mYq4kGKf9JDnT2ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7KhyJ2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7KhyJ2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35CBC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 22:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739659733;
	bh=mUVC29l496tv9Khc28sx1X3vPJbQKluw3oMenLNH96s=;
	h=To:Subject:From:Date:From;
	b=d7KhyJ2zR6NMrYE20Ih6KDKcMFb7GP2gkrOmgJqbjkUoEfv7P3PrjQTXikGQ22pNE
	 MXc5KXEaNtn5SUjDYZrjEBOu/ExyXF33+Uute7jI0EMhDxIg2kF59V7aEn77cjhKtc
	 XsUSPcXAtqXPVzlUqFsT1TnoyQH1l7gRCkPS1by9WxML1Cy2y+koVopOtIBtqYV4xD
	 TDtHth2GBK5DpOO7Eawplm1+ZMApAqgXv2iAc1b3lKisatcapAwdfnqc0SPNVnJz8E
	 ZRPLY43ycrvANbjzHfT1okPbQfy5Qk9vQZTqfE7ufxq3pO+8Y/t+m+guvX6/3bz7fv
	 BBg4DbmkaFxmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9050DC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 22:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173965973358.19312.3005573092754762031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67a3a26373091bd852ba6a2c7d866c2fd723f5a1a3d673c4629b5d57a8f1dd1
Date: Sat, 15 Feb 2025 22:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739659733
