Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4542D0605
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790416234; cv=none; b=en2+Yh4d+i71L6Tv2CGu0UrFQySc8YJjmuOO4H6welGUHZWL9MAMsqGMLsgwEtcOt0i6q1FhZxSxMbgxK66di4sa+k7RjqCtggcrNJIbYizkt7amoYDywO+FQ8gFaVWcOsUUw5eOxXofy9T8fu+Va8B5i1N4WI8aPvWzJ7E/OrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790416234; c=relaxed/simple;
	bh=x/5wMc7x8iDA7p/IdzZW5y2myQA/851VknD+fJpt2a8=;
	h=To:Subject:From:Message-Id:Date; b=Ny4OrZSj0Sq+j+brHtasEn8gjomskaWpfqGO1ng1I+bSU/bS23418dWvV21rVX7gbFog5JjYjVe/CYfnH73lKx0ddm+7Y9+SugSkFnHgp2ixC3brq1HxR4poAyglLITqDpjNwryOge4czWFBqirkDTgQsswlo+2iz/GnhXZFNfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/bS74nW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/bS74nW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB364C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790416233;
	bh=x/5wMc7x8iDA7p/IdzZW5y2myQA/851VknD+fJpt2a8=;
	h=To:Subject:From:Date:From;
	b=r/bS74nW0wLywOxkmCTBuQER+zUB2Ax7UEx2zb6Npng7ZGxDwRHK5Af9037iAbmY2
	 +/6jkEHZpKi83M/CfUK40KxiZ3VmUijIcjZ1IFayzavcu2ZQZzKAu9Rg8/Ps/hfUZy
	 nwUK7sXeMPwlM10iDHl5WOIDxPC1/OtOpOZE2NZvBoeX5qIOj2Dr3W6iZniUtKS0yM
	 B8SG6dsQ4JOfItlhh9y4s5Ztx4y9Lp9iC5fAbMhmYENP8VwchJ8yT4Z4+/wyMzDfIc
	 0d81Y+hVftGwHSgoG4a5Kzcj+qkhYVOSlphOvAOe/xcQr9iDBGVjNJ9+9NfwIJRcVM
	 ZKCQ4TLor+lxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E36C98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041623368.23485.10621631487323361457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7a73a99636e1d7da1cae7009d806d01e2cfe6f64b5e4a85c70fa101edf8a55
Date: Sat, 26 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790416233
