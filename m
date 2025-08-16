Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411661EEF9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755384594; cv=none; b=B2AYaP/pMbN+VQl9NhNwL+b/3QUnGTQo6OFT9+sWsC2jV0x5AMxsIKJF7EYFiK53d1XKcllaXj5qSRmf3XgQmazrH6dLLauMnkjjo/1LkTEAp0EKMVkMQJxXZiP2jOr5B00T8mcuBu7MPd3LRf84Un5i9mtAQ3JkKr/zfN4ez+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755384594; c=relaxed/simple;
	bh=nyPvcRBTVFdXzajT8tWdR+0V9nz7pcJIxrZXhOE7DIQ=;
	h=To:Subject:From:Message-Id:Date; b=meExAIL10eT0oi08wjy686oqlEpq/yFpXSE4DbiQaPfnfk8ddwngL9FeK598YOfF1NcPfv1x438/eV9adC4fYic9bgQTLcT+Vzymi4VVk1WtFhtfLC/DeojBb45BmNJ6wm//bYvl1w7X7TJ7e/aUDIe4r7CC0ujZ8J63bDCOWR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EW+iIIti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EW+iIIti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A480DC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755384593;
	bh=nyPvcRBTVFdXzajT8tWdR+0V9nz7pcJIxrZXhOE7DIQ=;
	h=To:Subject:From:Date:From;
	b=EW+iIItix5MY3vNEcanvlmEEHJFGeg4Qq4Z88CTWguva73d1XKYlkmbBZ7k6fJGWb
	 B+DgWx2O93XB9XFwtz7l9ULUKVo4HEOXL5kjaGNZFrctKfjaCJZHke6nP4RriDh9F9
	 JjOureXv25q1dnCbAD8dNtPMfwxRlEs18ZpO3EA8Mz+XlebpOCbEVUJ8Av50EHjiRS
	 B+IBWoUU2xxVLcsM0jtCHO+Aw6L4EUaAeS8pHnGoWQ1a9Vp5igFO+CbJE0BT1xxIpE
	 HalvRsujvKFh5503Uvn2kQ+xU2suzH8KRYwpfs1NfEL5+By40UvYXS5696tiHLcFOI
	 g02KhQDW4qfdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FABECA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538459358.17214.13206617630879746365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a843e46a5c8138421fc0083805c035cf2d84d9a883173b4fbbc9999d38d184
Date: Sat, 16 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755384593
