Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DBE1C84A0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767459234; cv=none; b=A4BXp69nJ4zRf2XdKdbcG9uOtTPTE90Yi4YTDQv3Q12Z71z+rUbfNiE7GqDILP5QhePbiYTidHBRKyNcdMP+w1LVa+A+TqgIQa/XuYR5KAEDtdXEgdEVz/H0VbfOH0HEQVlVJVy4SJCpnX++bi920X/Sw7BDRdr/isy0AGykbFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767459234; c=relaxed/simple;
	bh=gL+8JLn/YZmYMkj3eQunzVJBsXrDFh0TZtvMEYm8kok=;
	h=To:Subject:From:Message-Id:Date; b=SQXIRsUTVMKujjJVlt+ekCE8fK2h0IqaoKMTOE+zYAPwafWJHUa78BeNTetmAfUqS6j5dPyhLGyQ+yJbeLi+/MbeXh2B/2N+KKxp32sY54i7yLWfKXk/l2lJVAfiX89q+R5iuJWZRXeHzUnhZf84zFZConUq/v+9vIMNebeuvBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGkMkqmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGkMkqmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E4FC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767459233;
	bh=gL+8JLn/YZmYMkj3eQunzVJBsXrDFh0TZtvMEYm8kok=;
	h=To:Subject:From:Date:From;
	b=KGkMkqmSexcBM/GP+atrCkY1SjcKtC5TbHkgWd40WY0FVJa13vltLn6+Aow1N/Dd9
	 I6uIKp8FGw82q1QGNti7oGuuyKYuV0CVXy2cilYcLrEpZYJYUMWGrnHnYGlOtSM2hp
	 oVgnSRhY00YRhmLx6ZAD32QF9+GKs230q19ofADur5vpOjb+WXC5L4lQWiKlaBGjCv
	 KA0HqDJ2CGIDsW499fhoYfxC4rFZx1h51KE/cXOgzJk7kRkmHTIIoN0Oyb9n1zln5L
	 puCkCLD3QThSKKqc7OvkjKKD+WUY9WE2T+VF6X351nZj2kCqqw15fDw1SDmuDCUnIk
	 inCn8Q5WFarAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9509AFC6175
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745923357.31599.3237801372705222645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c65b099484114121642fb4253243efd6f6e699feb3a86a741cec7e052d77996
Date: Sat, 03 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767459233
