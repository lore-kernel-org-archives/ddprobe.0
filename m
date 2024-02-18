Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2545AEA4
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708229297; cv=none; b=Ld2by3438wF6/OOS+r4oUA2eVvI/zgqqTHOPy+OK6jOnzg5X1bGiYN56j/uaz7DW6kcRmAtKLf2S8pZTO5SWFAiFaFbbNZi6agaXkjHs7MQ+SdziaIUqRwQZ58ZKeOw1cl/t5YGrjGsgZo0vxBMn7/2huJ2LhHNkHz6iLxkfN6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708229297; c=relaxed/simple;
	bh=2JjAEDF15l/q/fsuPdZ+4MNcHuMpyy+bgRHKFOAIse0=;
	h=To:Subject:From:Message-Id:Date; b=I8b832dyD3CzSsfL/fpiWHtydD5PFXNv9mmHtYKOJGhrSNZdIDMBY6mnhhFWKKL86BXy7txh2axrw24RcmTE1/+gwSMb6dToIFZv0cCQ8U8nP6wGY9NqfJjZ9Dw8Q0/jMuALhs1Lm69GcEnSMr3S6gFSRF5USHgE+bf3LKLGjSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8pn9KYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8pn9KYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E37CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708229296;
	bh=2JjAEDF15l/q/fsuPdZ+4MNcHuMpyy+bgRHKFOAIse0=;
	h=To:Subject:From:Date:From;
	b=m8pn9KYzhLYuE071EYrPFiFa/ZFUoLlR5FVGTcwRklOiXOuDAZg7S258uMrj4mPXG
	 c216kUZ5SwMEDNNaeJFyrRFGFrbMe/ajs2c0EIVmK7oNlE1HbJka0E1biLXnlov1Ez
	 VwMxlV7Zjm3so8RRa464iUuq8mDC5ysNwY98HWwfu4gGLqMYiwOf1xvHg6WJTvcUbL
	 VgSxxZN9KRRmdzS6vsLHNCAxnnIOuZdV2G02KbTwSDS5GKWttU5ioq5wD6Ud6Tvj1Q
	 L1OpRNFbwOgVgVhGIk+yRljTQs7tfvwNCfDUvG+mnArSK/YwTMb1KzfKhENNlKqLk6
	 +lrA4XvDFRm3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C02C4829E
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170822929637.11295.7192993960004295181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6ab4fe4c34f5486ffcf92173c10ec8a18c3f38259a8c6f4e0648344b8ffe84
Date: Sun, 18 Feb 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708229296
