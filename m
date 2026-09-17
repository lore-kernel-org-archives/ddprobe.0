Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502BF4D0CD1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789644634; cv=none; b=UBFUu1sQNlLXUhRLEF3ZvidKDDegO+CAP0M17CliRZh8GL1lJRopG4xBMIcgLJ6KbRY4OIabAlod2H995LPrfyd4aibv3hvzObVKDJ+DBjwaEX+DPIKLCtUjpj47cfU/LEFPft9vfwCaqJrLMTwq9yyug0I209DPNSS4FPDn2HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789644634; c=relaxed/simple;
	bh=/ANLjlhHJ0A/fwZHd2vR5YLx49o4FlQS7Zjmxg4vqnA=;
	h=To:Subject:From:Message-Id:Date; b=kkCQ8QjdJSyqN/zxCncEWQkWw7t7A8Op92rOVC/3BZnp69csoNADgF9fOfsxq9Z9gZXSW8X2lgfpYbCZkgPXdzdesqaR/iJVvwpZVCaFWQh/2Ze5M8gGw0YbjFRAAcZNrerTACRXHT3v+ra/DwfBCGZBH0dpGtkid0k3R0xBBG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8NWH2xj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8NWH2xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9110C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789644633;
	bh=/ANLjlhHJ0A/fwZHd2vR5YLx49o4FlQS7Zjmxg4vqnA=;
	h=To:Subject:From:Date:From;
	b=b8NWH2xjfVIaX03AYeLvyZ9/eFSRKHxMxzxrm9XzjeLsq9BBuVnxuRncAFhy4PcdK
	 AHyHgcqL6cpnVbt7ZB+do7aftKlH5htRzJ9uP4axN/HitwGTGqyH8dmFGK+It2Scxz
	 l9h83SMp9iHvjCAZpv6Mp6F3uRQmXBVcSTehBPYWwHxpuA6QyxfUyQs5Sk4HGjDZxq
	 J/EcdEpSZpHUkHwNSjYi/5Ym9bXJXfLVIMblVQbykaJbmrbYb1N/0MAJEaQZCeu8lX
	 s4hnEl+TkQYVeI9VaTqJtPrVcHbgQlWOMznQ5+LazAszal9KRtLEtdC/VRZg5JWULU
	 zz1jYxMX86HxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AE8C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964463372.7949.11709835396115006350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ea8aa9e9abac72fc76a475aac68a287133e672016a50eae3ced1ed6fd1d22d
Date: Thu, 17 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789644633
