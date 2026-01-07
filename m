Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F307519C566
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767753834; cv=none; b=ggZIsA8AmKJSAbkSY5hx36vTAH3IPaphUNsGk9Lh5bYeUB4D8G1HvlPCxOA2hahRV/buRBJF5TQH/qJy8duxPlJKxoFmaxvvNpAATd8rQFIyhRCpoM7rvvk4N58jupiVUIfiAQ09OmQfFZ1hhdF4s7DDM+BX6ZwBtjLbbX4niEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767753834; c=relaxed/simple;
	bh=Ff/BPBUnovYjbvnEq99vEAm6INCI+ZkzEdrmzI8sqzQ=;
	h=To:Subject:From:Message-Id:Date; b=jozEhRpM5eHDiRTIdotG4GRiliAccv7DAvLuExxPRVmGdUgNoZQWf1Ywgv4cFjlkXAYrc0UeCFu3ai/orGsN5rFEihdHc7U8MTrbeEkAolRk6ov6G9JqfV+B5oxrPj6FSFnRYPEBSOQAo4WnH62A5mdq0rZ4EyA0w0GWXK30yS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPxz0iNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPxz0iNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD61C116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767753833;
	bh=Ff/BPBUnovYjbvnEq99vEAm6INCI+ZkzEdrmzI8sqzQ=;
	h=To:Subject:From:Date:From;
	b=sPxz0iNJC+ZJgOPVOmrgQmMoD0pfaIg7ErFt5mbuht66hPBp6wJ3SMEu9x7OxRhgb
	 5toqLkrx6Qh1UyBzD33VfyrLr6cOtcCtHVQapvucx31DS9h3gd2yfAShkvW7ZR31PC
	 S8C1m1aU6Nx2MQc+knG5+r6kybF3D3FH1q2OyPZtzldOQZF1yxqfjL/NSwscSMkApK
	 alwRWDSrL6Qh97jD2MMaxdDy5fnSQhuaLGB++X44xkGMxEUkUgITGZHnOLiDh8+Gx1
	 6mPYCvA5dKDwN3FtjfkFNLnBn3t/mj0C4gpikvTBak4bMdgp/GMGwj6S7jDEsMa0eN
	 vPExcLLuG0xGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB8CF6BE2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775383357.13687.221074640100770950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7edc590c97a2220c5e44a1d4f828d828d3a12fa3817cb857e5c60809c3446754
Date: Wed, 07 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767753833
