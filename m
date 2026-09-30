Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAC9485CE6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790809834; cv=none; b=gINcd4/n0i5M6BW+W3j5Y9mpLy4CQaG0suo9iZaVqBWlVKq/HfJzaqFYTIRubWRPy142h7y1qAISeKS275w/ks4XlCSkSKi2vOnT3Q7xm/jCUOOIgRAPy31OHWm/c8J74irMe/7swbqJMSVNIqXcUO3ZZN5+mo9M7sJBgm0eBC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790809834; c=relaxed/simple;
	bh=XfAvnjaZI0SCM+j2Ebq5ip0X0BzANwwCLUx86uPUbIs=;
	h=To:Subject:From:Message-Id:Date; b=kQVces8Qxm9jfsE956Plvoa3sHjK7ptf/hGB4ZQS8H3TG8woytr71/8h7eyCDARxVNUnxfEUgQLHLoGVvfKAGYRsQhicsav8GOhSf44HvkFTnw9YjU4YIHkihP0GPaIXM1J5h8I/HJng51i/tVgexb9i+3Z7aD2VAGQ/AALYGK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8L1RhpS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8L1RhpS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2F6C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790809833;
	bh=XfAvnjaZI0SCM+j2Ebq5ip0X0BzANwwCLUx86uPUbIs=;
	h=To:Subject:From:Date:From;
	b=Z8L1RhpSYlT7aEO7hG8j5JUOemVAHMt5z0Arh3CuwVAU5hRFLScTtR7PzWciXOKoS
	 JRjkk8uBBqVczOlvwV3QEN7gMdAGOcESr3cjIb/qlguc6l2hWqJa7CIKvTRFcRFnI5
	 YniJGOL07m88lvOsoBg9EiDhPHXfFL8Y7IQA19vnRF2n2tkZWmUEfC4lwozZff24bx
	 /o5mIrEc8F+LNazT5409Y5J1mH+Og09HmxMGpQ4Mxf56BWHKAFZZOdAnpdwAYIHO/f
	 1i/kM7/fp6SZJ1hTjOWBvPCl3pLZgwNrdzKgSVnavB3+jQUtOXQ5D7J9+huTyAMjJ6
	 Cs3P1bDCZka8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD635CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080983368.27247.2750338384254481786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d09104c241e4946fb06fce571fddb7bcbc7a290df6c2c111e8c9c50eeef088
Date: Wed, 30 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790809833
