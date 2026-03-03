Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E44371867
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772501694; cv=none; b=AjWI0TsFvn+rVWm6wLqzMEfqhMcR5QIbzqAFuQFlKPh4ZH/OGSLSrLhHoX4HeD/cHzqo45N7sc0LdYV4RrBWFIyMKbGV0ay3SGHl7yJ3qP/QX0D9ajT+B5yEQnsRyAToas/E260b0CgJvtHUszI7zDElHkU+kiDTRfcfDORSa+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772501694; c=relaxed/simple;
	bh=U9yYyxGhe3mgRDm9AyIy/ZdRyxR5qGPlGlpSEvndIUs=;
	h=To:Subject:From:Message-Id:Date; b=mqYIX7aqvGZz9EU0Cr4CqX8TBAwWe7WrGN5mkpotLHyBIounZCnKg58uRK4L8+gXT3A6D3a8iKQdL70fLGc0VfZPvcZgP3hM5EzQKImYvDBHmoZeeenxDWzFw+MMkeGNx1KXY0gCkUmMpVFECZXN7zeLIE/E1bovvu4w1JvekPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHBcsg6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHBcsg6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB25C19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772501693;
	bh=U9yYyxGhe3mgRDm9AyIy/ZdRyxR5qGPlGlpSEvndIUs=;
	h=To:Subject:From:Date:From;
	b=XHBcsg6/2IlN4kQ/WhmpBgPXMolbeEpqzrNNA6ZWdCoeWP5LC0xw62BokZDKpeuzR
	 vAQCO434EQy5NrdExq9g1gLE9xe6jA6upNXhUtInBsYrgGeLInxTntmnc7u1OFKdgT
	 qzbAIAA8ZvO35gYOGuaBzRpV9oL9BxU9PmYQIdZgTnyeFwtJMAEukXw8WgVJZG28oV
	 agV6fkK95gVZSvSj28PeQkv5lr8YDpNmmX1Gr8u51g5W3cKjBH33IVM+jupsJiTRTg
	 zdjT2o6oAdNeRIFnLZHUJFrW3UXjhXGfLKDdFSQvRK2GJrPnDLPg5k41lfDdM9yCt6
	 5K+11yICgBZwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF9BEB364A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250169362.20980.3683303844835567346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bada6d558db20e49cab2d51aa9bfab24a51b8767409a55d1e0efb1e453bfe847
Date: Tue, 03 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772501693
