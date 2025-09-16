Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8312136E37
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757988593; cv=none; b=TCtAF8LOF8UqctaLHH/LioAfxPIczeBI9uWtoUxVc21GHAH1K42uXGjqEGUQHhlRQLJRAfnn0y3s24VEUjPCwuPTPkIdS6FTsNuV95muBn3yLbfeVZluANpvX7BgXWw6kogGFuZ22MYqcx+AWg0XJKMhZGRt0Z0NrlwD63PyMYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757988593; c=relaxed/simple;
	bh=RwtNLQ8Of1jUI+SrpBkVYeHh0iEBZCo0I8RbeijZBzc=;
	h=To:Subject:From:Message-Id:Date; b=OIxt9U0Y9C5AaSO0UFN92RyLabi+XhXw/mmR0GiI1pOECZ5v8LxTM3BYLXvkUfmYnbZhrG023FBxVB3J1Ox4RFNfF6fZWhmOHgrYOseWZZkTwd3iK2EF93aHLH1NfOWoJsCbquZ5iEBuLTgscdOHnvmQn/AqPGPvFmm8XxAzws0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5w98Gwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5w98Gwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCDBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757988593;
	bh=RwtNLQ8Of1jUI+SrpBkVYeHh0iEBZCo0I8RbeijZBzc=;
	h=To:Subject:From:Date:From;
	b=k5w98GwjQCR53nM+eGAPxAc2FB8aGzzl1A8f37yQiwsGsL065qoNf9ZgLXuVFBZd3
	 E1TMZ8bAsikzuKsNTJNyLKlBlin33HO6/e5o6xVJwhqmqXpjWhp0nBV4pFDXOeuT4h
	 r3kgpKwmfmisbi//258z3JwSdLLqhENvqMGFc6J8fiwUwExteKFV1ZhHb+dtBvQ3+m
	 +uz5J1zG10v4TTkUmcDPlR612mrZkk13BOW8CXQtjBkpaoxHVMIg4+k41xc/f6aAmf
	 Kxqo4wjoIWFcidjHYvbpn/oCFZOOEi2pv9n0oS1F3eDjG30kpyvF+qQ7CN1hL6rhMk
	 1fts/+XTlbRnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D6CAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798859357.26445.16777396737874790574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07438b3168ec7ab6233da797ea8f407a9509fb336169eeeeeb87961ca9178ed9
Date: Tue, 16 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757988593
