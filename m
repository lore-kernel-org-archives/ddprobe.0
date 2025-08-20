Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E822566F7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755709195; cv=none; b=mc1vhPwzobBsw0BmwgnsjZ1neaOAbV3bHdeNSufPhY/752B6lS5mOfhLQdVa/6dwwRfHTqNhQFa6c/+yCY85htNtlZW8l0m+dTGI2FYw6WC7nDd8gcp3kjRiF5+jjVbPr/gMzvnLtLEo9KuZHgecKa0flpaXu3em9GqwRiqPapU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755709195; c=relaxed/simple;
	bh=CdO2S3ixbU1Sjho4whulRuPrYB1Mta7CcT8ZMqfK7FU=;
	h=To:Subject:From:Message-Id:Date; b=gwdf0mjhx3IwdG4e78LUOtYnM2HUo+dDziEr+LsRYAC+SsjBFBe743ngZWQTAlgivkJZWA2K4UYU7N/mlPBwxfqybe9ljl4D58WyEokcrXqCPhlcdZdHrrAWQa2t9LL6Unt+0yWSYcD4YBzsi9qzfDFsQVVjwBn6yQEIl52ThCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pS56D/+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pS56D/+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA015C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755709193;
	bh=CdO2S3ixbU1Sjho4whulRuPrYB1Mta7CcT8ZMqfK7FU=;
	h=To:Subject:From:Date:From;
	b=pS56D/+doK6FtvYvsVCvBHpLXtLmoqYybI9h39ZeqINyU59akIwlS7wK1koRdh9MG
	 FCio+mm5sdxkAYunzu+8gsmDhKixzponSfQgYFW4nEg66I/R1hrYTo7LmjAWhWXBRr
	 t/aiMJCcsA4A2bsDkzdhVQE7O1biuEkMNGHwRxquy6QTw7CG++78pefmBgV3gFoqp3
	 U36fwEkHj+63t2CjxunhFPVy9jRF0v3HJyCEO6Q7/bTygCbnK/Z4STdn22i956Etxy
	 6oc/WTLmCRQMGqkPuQ/ccP18E4CSFMkGR0ey9of1lSJeiQszarpU+kTinAkd5tfEoT
	 nZWEoqSDi69Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E7DCA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570919358.7768.130197139177833948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4b7cf0ec0162c7ad29b0603b3286da208a63e41a78199f874daaabbc3168b9
Date: Wed, 20 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755709193
