Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35597376
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742074195; cv=none; b=aWkNGfaiQvf7tRPmbE/m1WHqWyTQULM85iDbtWAn4Qw0XyZ/B4n0gHO0nOLBKVBYK8wcd1qLyDvAqKCJnFfLY4GmAD8ioj8UoPrBIuB/AYT+8rr6rjAiSM+XSuTL4BjSnFxdW/oavA3OtcUB3rYrHS8GOHgG6POLb8mjIDi6JbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742074195; c=relaxed/simple;
	bh=K2/ol5OQHapxZDjbiQrwqdoyqQzqYLWCAQ+Esm+QK3w=;
	h=To:Subject:From:Message-Id:Date; b=Ln0xjKUDQuLTDUzXGqX9OzyANY1jClUKPMOgYgsR2GNkAI2tjzT7kZNg+WOBLixOsKAeEtdUjAIcp7c8kNZeZjVoBmQ/OecfGi3ykDHL4GLC4F3nFkmgxKA7QrCBDyKN1t6Zozj7SSQj0jTxHSbeXrgvhrhu8TEO8WVr4gc/gBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRjqCPub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRjqCPub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E14C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742074193;
	bh=K2/ol5OQHapxZDjbiQrwqdoyqQzqYLWCAQ+Esm+QK3w=;
	h=To:Subject:From:Date:From;
	b=LRjqCPubOGJ3O6TPOX85Mdg2kfAfgUCM1SYHV+UrlxhQiWPy+6O4bOhipLVsGeGSs
	 M8pERjJXlyvff3TYeTMVzrS22AvCE02/hgyoq5I7qlreFly+SKvkflSnazwF7PMA8J
	 3EoaN1My5vfIQ+T8jhZWItOCWueGfhGSlU5Wd8rRu1acFyFYZAHcL/3JS2tCw95fJi
	 ZUtSlTCKpTEFoW8gtqWMvrDsXXBWeVHZeeeHJi6i2H3cnFzggWxYRc29lqH47GfK6K
	 qoCrXKoeulFqp4jg+7a1MblrtvnqxE30eUyc3AuQ1IUXdPyfLtXcTSYVXUnPZkRH83
	 y2wUoZL3VW1Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E4CC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174207419360.8252.10520322553225213320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa56db67c5b2cef3eaaf93001f285ed0ffbd98e37c3e3dc8801098a7b67a9d4
Date: Sat, 15 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742074193
