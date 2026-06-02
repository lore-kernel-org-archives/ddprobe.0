Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488CF2AE7A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780377874; cv=none; b=JCDMZXFrigu/fb0Iomg+1CFy+NFysM3Ech4NX882/mr+jrTsiMxr2jv8z9VFLv0K7LrXy5GU/bPUFKqx/CyCGmX6Vai3V8O20dgt0Gj036jEAe8Bszsw4IG2oL85jJm5i2L5NdKiixplWvPL7MSdCCt1d2LYXP0f/H9Hr1KCyl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780377874; c=relaxed/simple;
	bh=ShwAmOiPpLs8Q7jTwhAzRIMpHPk8elCtrTfv34XFrME=;
	h=To:Subject:From:Message-Id:Date; b=hejLqbP/wW4ecrH427PBmcIXK0DLoqHkSNwfK5VT5DHGsvqBNnIeP7c0cTXr4AinOiv7QvgtsjpcRGbNEhEHCEV5Gom7vbH8f03k4jXig6mkVGjbn4GEyp1CyR9pKkzGWF+mQHSnvbNAeff+ElFzpprIF9X5Vn0VzCwwfACGyMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBuAvgKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBuAvgKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05EAC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780377873;
	bh=ShwAmOiPpLs8Q7jTwhAzRIMpHPk8elCtrTfv34XFrME=;
	h=To:Subject:From:Date:From;
	b=GBuAvgKIh4raUQUi0X18/8mQ1d0FOnmnLiMhzt1edxYbhAY6/Jw3IlmTV1Tg8XPcF
	 Xpv5mwLjYTQiilU1TRreGDpna6zn2g8vuXkV4bbzwcCKAMER7nWWt6zyKnXvk515Wg
	 HGZhxsuZkINhJrR+xpMQum1jBef+jZ5PW7c+GhyaLBkS/aaGwU36+T0SREPrv9baXt
	 HT/o5Sas1WNjUQdm21XDtZZn3ORmONvc0NxWUjuK8p28z2+6iyoDOmFrMXM1eWAH9C
	 gBpgtlFbfIdh6c8942UMN94nTuDA5DXi0mPF9hs0f8fQ83R8tdmk3jA4KgoZ8HMMhN
	 GojjuTBpq80nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A927CC5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037787368.26653.2500814461526200183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b9dc018441cf0ab8b07dd7c9b40b02db8ce9254bd67fe73fb3750f61d252857
Date: Tue, 02 Jun 2026 05:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780377873
