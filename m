Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517AB1474C9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720178723; cv=none; b=rBGFiTSaL/rgtOPUBwMt3/3aiS1aUzHOMly6hnXSBWFeqlFGAFKxssVQPS7qoTeGjRiac+mzv34Un7KZ6vB8YksRetjABMyGNLEDQJ+OUAB9L1Kt2tx3IbAB1RZzSWMdUKC5PngsLWROuMeW9JzHrnpX3/BF8QpBb5+k2uJlKmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720178723; c=relaxed/simple;
	bh=wHi0rs1wAGatqPjT6qyGnFeYjW2En5fr6lDbfOiFtvo=;
	h=To:Subject:From:Message-Id:Date; b=bAHqwaRaebyY/jiCrVKJZVaK9ADuoH6bSkaspjFzrDJMphOvMPD2HB7UjF17RIhQ1EHxakSA9vPLkX44ppV+94qH8efVrswpr2fxBiziMj/ZL/r8L+sWKdrdv2iCUGNqkcojKmahgC59RNJLJNRfGND13frfZxUB9Ui3cbRE6co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhyXjl5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhyXjl5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AB2C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720178722;
	bh=wHi0rs1wAGatqPjT6qyGnFeYjW2En5fr6lDbfOiFtvo=;
	h=To:Subject:From:Date:From;
	b=OhyXjl5Q/HLC473/My8UxRS21v1imKgwhOqUkdsS4AupO3D2u3og9jhdZBBbWABvC
	 k36lnIMYi2tpIZgbDHJTEKwFN9r1fq2wXHw8w2YALfiVymf9UHa5MevO4hlU+KoPyF
	 v+HBeMPQBiqsWGESs1a1nJmcep5KrjjekAGgLonkwHhRYm+zRid2NArljyehqBSkcY
	 nYpFaRcDyVJRDvRsCdJ6O01LSY5kM9qi90UxVRaz6S84lHUUps2fujk2niczSMtlyZ
	 4xwymgbvo51oopKyY43Jd+uq4hwvTmGIt2+S+iuJNTiIQM47z/BTzJaVnG72RVX6XQ
	 IP17VjnlM6KSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB34C3814E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017872281.6144.8875807347515953371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae751addcbaccb656670983e5df6acd0d452bc7f0bb7854a7889f8403c80558
Date: Fri, 05 Jul 2024 11:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720178722
