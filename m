Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264494A04
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758136194; cv=none; b=XADlhjBX3iI7wSdNEfzhej4UkcTao9v5+Uix0T4BMYR5xyLOf3+EsFqatWIjHiMfwexofTdXZG/nNAUWXQzxw5ex1bGjnsZb7lht5Osz/FToOAi55u0gB6BWyEeKP3xdUVwA5GrfVLHdtSi/QsA6Dxt/zfkywVb5vm9ibMPJdnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758136194; c=relaxed/simple;
	bh=mcSIfBRyzub4pdOoCgvqu+cAzi0pZt3S4LxRNjV6yiE=;
	h=To:Subject:From:Message-Id:Date; b=Bb/uryRTtJRszLc4sEgTgz3o6fY1Cf3Qwh7CrBBbilQdb/j0J+oSV6I6/SI8rZN0TpwdaVvgsBhR8o5AhNZr5vqPI8gZy5Qx1mXjQaSQbAQbhOf4Uhg1NkMMiCeJOd2meXdd1C/YqOFLxt0Hj2K3TYJqZ8j50NkOKASj4EE+gzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boaBxfwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boaBxfwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E9DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758136193;
	bh=mcSIfBRyzub4pdOoCgvqu+cAzi0pZt3S4LxRNjV6yiE=;
	h=To:Subject:From:Date:From;
	b=boaBxfwdfmmpH0eaa7kKIGUPoMtu8YpMuWtsoLH7I8JeRUoZeaP1IKHWEOVkiAE0E
	 /8YnD8A2cAn+rMVISnfeXCFEig6xk6hZSh30VH6MnYVBVGtAmth91DW2TLXj8bhMgm
	 jVm7FGGwBjZrsZylpyZG6z4zdPjVFFAgJzWEeq5EMAetXupXJCj1BpW/bHp4SM8LlC
	 xxl9wNBzlSV5YrqJ+s/KAm0hYUFbSbCT9Q7zzW6CK2Duc2sZYvOvHrp2mdElBDGQ06
	 enl0AWok4bU/3SrSo5IF42iPGJyiBl88atGBDmhg6dPtSfFrJLr7c0okcLryBC5SNe
	 PCmFcTovbGFMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D4CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813619358.10486.14629011726212466938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b36874a9f1cbd286b741394216f9323e270080cab340ab5be758e85c1b12094b
Date: Wed, 17 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758136193
