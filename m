Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3327C18A6CF
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760908194; cv=none; b=fAI6M64Ci4L47qPWQGVQeIByI1x4wdSCXF0Jy3oxhN4Veq9GkzTVOOvutIyLB4SD4ltO/sRFtNE8MSkSounHc6vy++hdY8MJOVOtyHlzKQPlhyyAazSdrfqnunYyMqjC+w2ABl4M44jfJb8bQA/21A4AmHMB4KNGpt02jIUGGIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760908194; c=relaxed/simple;
	bh=jv3LLCcYsLU2wJf3e4KsIzSEc0nBiuBPguJFeuQ5+/8=;
	h=To:Subject:From:Message-Id:Date; b=o+WnQtuL0kDJROMWoNklqau+7+NGDKJH1CERgA7ed63JqQt2IGd3uLLyJ58BSYbN4emXGXO1FV8Scto9kb2nfXtgyRyFqyQiqIqQBG3HMWA7WDxYxOYzw8juNqd5iSwEMJrb0koAn73hAK6XaBEgqV0N5k2l5VWMv/P/8HCNxy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXpWW5cO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXpWW5cO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6686C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760908193;
	bh=jv3LLCcYsLU2wJf3e4KsIzSEc0nBiuBPguJFeuQ5+/8=;
	h=To:Subject:From:Date:From;
	b=uXpWW5cOpcjacGBtiQ0KfBbLCPVnmIPOciSo4vdxhtmxnrWYx/5yMldvllPKcg8LB
	 PoKczfX/dtOuEV9t3pyKjPcSo3+B6wmc0cdF9l02A5oxEhLoCTtuj9szlVAye7771D
	 i7rFl8FkhEDQqjgAfbMERN1JkAvRHqpB/n4kF2r5FrVvhnh2Du6J8wPxBV6YrjU9sT
	 S0OMXfjq8+mQgc8a7xDHVWodijQwClbT8NBegAgzxlPHdoSomsTZfPTwyTygJo3ARB
	 k8Atb9KnVMJHQExSjQBD8mRd9n7zDykHRWbV6V3GYzVaNcrByKPd5uEUTJiYclHOe1
	 FyJM+gKIAl08A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94738CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090819358.3466.8735612458373068680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976fbf70caeeac86b2b2eaa5746bea1254535133f876188449f8a8b67ba3156d
Date: Sun, 19 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760908193
