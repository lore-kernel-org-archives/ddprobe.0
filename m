Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBF51C8FCE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727798154; cv=none; b=PSR6SHgQxFw6OjmFCuKjGKqVv78zedNUBCnaGjjwnqtsiN6Eg+6lAt/A7kv6QTPYyOfvQYpL0707c0jPWGZgtzLdWnXYrX/5KBWUY2ti9wM9QsuPcysD4RKGssoBxaVwNbCBZXwQBW+ImnkvGjnb4whmcKgY40fcJnplzHKb6eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727798154; c=relaxed/simple;
	bh=z7+aUV3LQwt7GgIDfKwgjuv+jzd0UeH6FFurCK0WZgk=;
	h=To:Subject:From:Message-Id:Date; b=PPaw0iEL8GswucnP1FmfyC7EC2uGuK4nfAu/nvuVDtjWhfegEYW4AnLAOBwB8gOEvYKFswF1Y5UxdWhF0ItNcs1YFzLC2quDWF1MS1IQOuCUj+o8MLQpoSUduVNbzKlYwJmpMVJZO07/FUtFAbB9o6mwyTTr4NmW4Tp1yCk+llw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVflQBtj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVflQBtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F3CC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727798153;
	bh=z7+aUV3LQwt7GgIDfKwgjuv+jzd0UeH6FFurCK0WZgk=;
	h=To:Subject:From:Date:From;
	b=CVflQBtjfsu4CnXJT3CKn8vY9PWsuFO9u4mmYS2csNrNOwU3m2UByEaqwdD2aYtpa
	 S9X5naFxMAu3k/f2Y2p0Oyn9dNFP2dMmcd8sfyBnGX4VJyNfFcmPmG87EllsVYFkyG
	 +g0w+POiaHxTf0d+Mk7R1JqBg4Q3G48sQtDgfPnN+2xb3X1wIrijxoCMQ2q2CxFK9b
	 DzTg1rLFMYXw9F2PmuXrBCANaWBa1BWaQLRdE+ALtrOt2dP4IkxBhD2xeRuEz83VC2
	 Mf9pBlaZgwH0R3PY24KK4sZEqNb1In+4gn6MUBdadY1CUr2n4irUsHOjtTQmfyPhIN
	 Mw4Kysz95zfuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951B4CEACD5
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779815360.28914.7071514156642193830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6fb35f9af4d4983ca010b7495d8a923da8d55075cd1daa37c2d09beb9618acb
Date: Tue, 01 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727798153
