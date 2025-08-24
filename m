Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AB2A55
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755998994; cv=none; b=E+Fq7gyVE4HvPTajgJQKZkpbYlBZrdPo+9Rsd4mhjQ+ef3cUWXh9rf5SLO9ZinxPmohaBJl6GjmA1IYOu8x4lZPpiJL4U76Cch247aZ3CQuFHuYZI0CpMhPz+CUlec8RVpeXh1rjGjXH4p+ROQ6WC5ApoNtlxMeecJ3E2UI6RSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755998994; c=relaxed/simple;
	bh=FHOdKdSFIB/GmIRqK0mz+yhJdQ+BMuo4SnarDlaphbo=;
	h=To:Subject:From:Message-Id:Date; b=plYyAKwrS/1niHjAYIXmVJs1Ht4Y3Ao7UJrfEUJneoUPCUgj+Wvd7piWaEaYjMfxGfAaPZh/3orwRVKh38ngzkzCdz6b24zsvpz546aiS6+zRMGYqg5Hn+ZC+diraxIKmLlNmJMrg33FqzyaKbCxjgDyP80avr2wHiJau1SJIkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBFrMiVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBFrMiVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8E3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755998993;
	bh=FHOdKdSFIB/GmIRqK0mz+yhJdQ+BMuo4SnarDlaphbo=;
	h=To:Subject:From:Date:From;
	b=JBFrMiVTgrRg4yAaYw1kZTvMw96IpIGiPNHA5HFWf1w9Nw2RfEhCE9wONSc1yxg42
	 /lZC3H1+iB0NaB3sJ6l7l3m6snFetvZHlDvjzwlMoe+Brq9bINQhLNZOlGhZCVd2oK
	 CLZbuxaG4LkbkGANCCPY6XJVUSrYPVET3ShlfTN/rBYQA5zqrrpDWcF1cc+XGhKtNc
	 OC0EJ2DVPgJmJl9D2RRTQJ076/wkEbSa75MYpGEzwsJdampO2iATy/4Gybc2HcF4St
	 uOImW3bnHvslWMGo3IbiRI6/0BliTfUDbgrB6/W0W51JJLlN4/HjKDxPvat1RGCPeH
	 MvdsYzFvYoaeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96749CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599899359.30714.13214388885972481218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2390a6ee03a4e6a70a5d62f724a4e1ca3124afe9aaf70bb10ec6015b2450105c
Date: Sun, 24 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755998993
