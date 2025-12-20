Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3AB23A9AD
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766270034; cv=none; b=SNkReivoLovcGRF5jAeJWAZyvdeTffWQMHQgn7BUOTFDVHqsxiiijmXX/6uukVZtwN0E1zQW23ZaJDh7nC+yqyVsLsvqg6B4kx7eh/q5IrO4/I4+/Mg9lgGv3aizfhqJX63gAfF5MoRPG6lRpv5D0LRxlavDhB3xT2aG1A+7YmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766270034; c=relaxed/simple;
	bh=kiOduXRWfzbYD7QrfOuTOkc9KK+9iJPNR7WQ1FWJgnI=;
	h=To:Subject:From:Message-Id:Date; b=SDTd7aNv3y8FXaNCESCXgBiwSYVtKYM2F1aPYrsnrLBDwcMySpty2hCRgwc8fw52jcrK/wbM/RymKBdqMMacrsYCMms0aX/Egqq09teMkzwDMe1XZfVwgcBEz180qMp/S53mZC7V2GEHN6KL+odKVIWYGHJrapeb5vuax8byWoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXcQEKL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXcQEKL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAEDC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766270033;
	bh=kiOduXRWfzbYD7QrfOuTOkc9KK+9iJPNR7WQ1FWJgnI=;
	h=To:Subject:From:Date:From;
	b=CXcQEKL5Q88qTqIyk+vXf1eVHlQXNviFlcr1vONfmeXt7UJIebiDHcvgevGrG+Sme
	 h3cBjljUWVY4PZHB//kH8UA0UirUJoGCxsmbeXdvSeMGDtfmJ3U8GdpVwhyzNB+RcO
	 +thhN6PttHIGybcB9U0EK0VwCtZkLsyYqExkABMZMUoT5dHf6vve9TC2VeRfiqwGIt
	 wRiPJypKV9kndR5ahqka4qPcIc9XzMDAUPTWaPU09ANNpd0HCOUezwg5OZt5fkG16K
	 92z77FXNI/YMfNDw6rbld24co3TxQ1b4COFfONeGcq87IC6NiIvcnMs62aYhSVEPxW
	 3bG5cq84b3mGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A5E6748B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627003359.11289.508539655927595556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cccf3c8b3dd02dc4113818b94e8921e26e2ad2d7150736ec749872ce7e0a32d
Date: Sat, 20 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766270033
