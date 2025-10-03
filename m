Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FD6267729
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759486194; cv=none; b=IMNLmIuGldPCQCWtC1GMmCYwM9Y6Y7aQ53GfneqbD76imnANnB12MNY46w3N95tanoPOgTsnfcu8InSeRyiDvLJNVzCBPQST1YCbxOZM6vv5Ek2rHmUqye66xCt7GQ00s6F8Ru5jLZi+WOKwwBwxXoM8ctlxijGDPtd2Hxc/4yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759486194; c=relaxed/simple;
	bh=PsYNcoJgXPZ9iWc26y/O+k6AOIE/gG/iSDsuCftk2rQ=;
	h=To:Subject:From:Message-Id:Date; b=Gxg3AXcvqE7rCZnuaVB8Y8PyXKbsI8EHTFyep7yNywjpFaSflwZNLEZ4SRkq0AMq49CiOaLEtz8jiPOjQtt2+cdwHCq4yWe1VI/Fcu1y435v79D7d1UGttWfmswKOp0OcJ2cSKWr70DRt/85QVktd5nlWLr5k8TPYn8rWrN1Igs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8mJNKyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8mJNKyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB8AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759486193;
	bh=PsYNcoJgXPZ9iWc26y/O+k6AOIE/gG/iSDsuCftk2rQ=;
	h=To:Subject:From:Date:From;
	b=n8mJNKyAnMi8zqnjhpzkGY5yWcbCpZTm4ZBvcIWr9DpUjQf42u0VB/h2wGBj8WhXe
	 Qo2jJzo0p7UhEdibeckF0AR6WahGUjGnG3qjH2dKTzi9fD+h1dV+tYTRMWoN/f6iGd
	 YXOTWbO5hi1wi1J9IGjAJb4TxOfbovt/Y3+SFany5bdJZBhcoFQdWWGaa5WGT6WStw
	 QmbyjX95M3o6hBTleVjCUD3SW0YDuim7E6T4k1NaiKE6rPUgGe+bTj0F5n09QJ4LnI
	 kPc5q5Pau7ALqjjS1kbQmVZtjd0+CvaVQK5Df5LtmqyX86KnWaXN4Rh0c7JFmAgDZD
	 jeUagWGyR2Whw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC24CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948619358.30171.8673289633289203804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121071f438b28f633c53e270ab314dd7e99d1bdf1d6c1c2142eb17fbd4b702c9
Date: Fri, 03 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759486193
