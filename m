Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257BF3451A7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771515294; cv=none; b=kCEsx7UWqciSBNAcTijjpaUvVBmvJ94PKkHlgtP/eiXNQyxzZbMhF4z8LFEbDRLQxZMVrWfDQyzqFr2tx0pCaKiXxQpGqYX5yOqqIPzoF2XJ7nKcn6xrd/VNwe9JhNdRr1a92a1iCSI3+If8bRe8ctpa5qnF+w8aunB4sTUadkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771515294; c=relaxed/simple;
	bh=v4PXOiUXFMqzQbQSztO79SckafPHTX+Mf8yAh3L7eDg=;
	h=To:Subject:From:Message-Id:Date; b=fLZUiYJsuZPeH4m1PddUH9S88131swO+ED/7Kk77wJN7iuT4qQhfLLcHVL3cGjif2RygknyFLSG85/kiPlGYp7QvMCrXJ2PUSPswcdLJIBRw9eeky+We3xas2Rmebd5jYpSt/4eEoWbsaVu4X5RgZcrRCJ5eO4SvcVObDPjZ+Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIlnHiDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIlnHiDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0165C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771515293;
	bh=v4PXOiUXFMqzQbQSztO79SckafPHTX+Mf8yAh3L7eDg=;
	h=To:Subject:From:Date:From;
	b=WIlnHiDzlvcXx/DJzShAi0w8CJwDtYfw4BuG3yAmRUYSLHSr2I85/F88zXt+rKKAx
	 rO5rWWPqEbv/BxZctIsQ13gJlTIdXEgBdRkk5hC01dGL4mzT/+WHrd9N2G2M0HN5Ny
	 BmL4TLIbQYafty3W0souyy3U3tqyzGmI9KlpKIcHhDjMWW3P80uYI/N8J0GhiSzp6+
	 R2V/l6PaU+aXAhmo4mHN2+1TjO4DntYOe7hPp4BIT6nlRq6EUarTJcFo1BxA9ACtFr
	 B/J4KfHOmsdU2kR2lNjqZSXLOJAzRvmAvjd3kU2njwc4eyJgAsDxVnf2rSHDwLi6Em
	 FlCuMUfjzBs6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98538E9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151529361.21840.12484741470352971852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bfa1d4d9e92f5b8c40bdf1dc0b2ed874f51f6930a314cfade616b23cf035db6
Date: Thu, 19 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771515293
