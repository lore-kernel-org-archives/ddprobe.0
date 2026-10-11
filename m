Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F4C1A682C
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791744634; cv=none; b=U6RvjLB4HT6PrxQcuTxJaBobSdQdoa5EKsvE94vdJ6aH7gEjCzg/bdOJ6wp95xdfJxBdRNUAdSClzAAQ+gGf09kF2vTDuSRAEDdhgwaMbgH8x82S+iZSb3293eWdyviWDa3tQYIZYpidh/yX5s4YVzobQynZlEVyc0IBk2BZWYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791744634; c=relaxed/simple;
	bh=G3Tftl4Cvi/v23MNMqBInsdL2YHEowgRGQKtTqF4iis=;
	h=To:Subject:From:Message-Id:Date; b=sAwiHkZbBJZJVPKWvjcQHIGXZnLrJh+IrWp4F8Cuz57yt75tAe+4ZDtXWXJHehH4i7BWd1Gr7j3SIEVZpxxj5xCiRxI/2y+uC0KQPS4BN3onWmysr7CwiPtH0GWUsavGtxGrO55EW0imXCvHzQ1yp9GH/3/llhaPAuGdaHgtZl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G46vWvZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G46vWvZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE89EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791744633;
	bh=G3Tftl4Cvi/v23MNMqBInsdL2YHEowgRGQKtTqF4iis=;
	h=To:Subject:From:Date:From;
	b=G46vWvZ6BeD/DsZvfz2NFJ4pctlYGU4YWcXDFd0IBJa3tjAJ0O54GqVI5ach9knVq
	 lctcQcv+yiF6gzRXrnRvyJZEN2/sGjDNU3FLLqz/w9XnRXVrHZ+ZV0/akAboQQBdW0
	 tnTaGGHTAI95HB4jAZErbqvQ9sRJso0E3FJRGDF3G/5n16+JpgiJw9LbbQIMpLLCDL
	 IcDODRqMS5ZiwKiXziULB4TVB4Nu+BwBb4g2TA4sZKmQTbfRPTH14AiXJJkRBOYwfO
	 /fDPGp0kG66vMwbOBrWsCgX39MTQbq1yyX2rOFZ1l8mLazPsSDd5Oauh9xKX3Opnhi
	 6izfNdut3p+cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6D0CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174463368.19993.6365107183915872527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef0d2b6b8f4e9df74670943e8b12871ccd730313a32eec73278d5c1748341446
Date: Sun, 11 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791744633
