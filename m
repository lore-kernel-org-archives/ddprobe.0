Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EB51A76B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757907594; cv=none; b=V9ieAr7eMbSb0it+z03ekiI2v7DNDxZUT5ltEncRxqhRffT0ya7NNsBFVxLWKxAow76tIeGtWAe/xJ87nfgWtqJFdzcZgv1kLgPoBLOSArG2ZveGrNvSPBZ7XXMurcddRtF3wMTTogYzhYXFgyKgRWhMUxnYa+4HEhuJCVPoLLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757907594; c=relaxed/simple;
	bh=ELiNJNFpTNhsjLSs5u/r3UwMx6IKGv2K0h41eiIFmC0=;
	h=To:Subject:From:Message-Id:Date; b=sZpKBiGFUvKwV2iQzTTN6x9nN/qKYVRpfL5fFXjP28/bIzAJvGBj7O8i3WDlnNDg67hQz9wpCMgdf1VNb4TIDCJFV5SSW1q2xKgh7ZKNl0ea4SLHnQmrc2dK1eskFVVfAXYkHLpSnDsFAn94I4p4OQXqqrBY+8qGZzyVc5gN9xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3Su5lR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3Su5lR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757907593;
	bh=ELiNJNFpTNhsjLSs5u/r3UwMx6IKGv2K0h41eiIFmC0=;
	h=To:Subject:From:Date:From;
	b=r3Su5lR5GbvWLI+0EhjRYFvU9mRZcxuZJp0p/B+2fC0iqNSH1tMBaXw2TJh7+hWOa
	 QrCM9V0KAj4QcnDQWe9OeQ8ebKIx4buuQ533pC5WImJb8VYUdy24GFJVFBnqt3PgOk
	 ccDo0lnydRRWPXzQBcxpLq9hDW/go3gQVA/b+p4eb2SD4WXmT6em4TNThiPlooqSm/
	 iklvvgAHKN3wKFHuFiIgQyt8OZWbjl8viu0SF3180dPqqleq2oxzNRlmsFt1bkbPFW
	 kt/wzgrr6fRExwduzU9f50kpWyNp9YERljyexGWL4K8bd+j3o9uePSRdvYZ/64PXNS
	 qCIrRKpQFyoSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA98CA101F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790759357.32364.14054759085401820124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e1cf3aebe80b74bdca53437cbc4123ad288ad6b980eabe9f4e8fb7630e9d097
Date: Mon, 15 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757907593
