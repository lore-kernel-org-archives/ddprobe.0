Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581971CD11
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717140263; cv=none; b=Jj5qFYog7/iys17HIcPxVIOycFYksZcUw1Valq0rRwvySv8fBmKlVM2HBCSkH30HHfwD/VTZKk5vUEcmLzkE7v2MOEEgpLZk+W7YTcoiK/0N96eNlKuYHKMX93NGUZ8TMIvAt/CUE9/yeTUeTRqaXgoqW1vq/lFvgk7py6o24Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717140263; c=relaxed/simple;
	bh=y3pS1oeMR2lyZShMAp34FuyhmC66E1NmjF5JjUdRpkU=;
	h=To:Subject:From:Message-Id:Date; b=oSGL55/jaxK4YsCj7QdDxiH5BxiVdDlENa2nPG1I/o+NaxxZj3By/+W29igmR1V5EmF3GHWh1TLvfGVtwJ3+Q4Kzu5en/8pKGLqRTGq3kAgtZ9ZGWtAWpjwgMtiOhoHv+s5wMLdFUE7vHAG1s1VNKkYXMe2dHOZ7Y19ZEpxVBSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UN1qaG80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UN1qaG80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8B7C32789
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717140262;
	bh=y3pS1oeMR2lyZShMAp34FuyhmC66E1NmjF5JjUdRpkU=;
	h=To:Subject:From:Date:From;
	b=UN1qaG80sEXtdYdCoqNuGyn/qO5Sp5TEjtrX2gKKxgeWJ0+qka9vaQyh79iYPZMdy
	 2XsPRNZojd2GfgHSxCMp1ii11L1f5Y5kASD+sSwq9HF6LL67w/IyCVNezd8XaF3Pcy
	 7l32Ak1TfTm0d0GkfDQ06Nn1703abhYrOmMXjy68Ysrybz9GqaQw+Bna7K0COvvVTf
	 +zTz+rkdamFW3ceK04k7V9yedCufZ//vArGnQgj6jGAJa+Q1MMtwc3rKOULcLIP5o5
	 8dPwpdGoosDoZ4eaRS6S/IB5aq29001ahWjC+viL1+FbGY7oRn98UujZJsqPZNVh5Z
	 x2Vrw2CszSiNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEFDC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 07:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171714026277.1127.11194596370480968902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eab4b6bfc7813ff359f8808f61723256c3c8189e65e23f23d6b8a5d56e79d07
Date: Fri, 31 May 2024 07:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717140262
