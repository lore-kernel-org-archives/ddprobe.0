Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176A7233704
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758861594; cv=none; b=TtVdPrnnTDil8HNVb0uE+fnJijvLgDLDhuzmfV8qAnLUswmJY24lVUDpO9vk+10ok+EGMgjUGPovX4g1UQYR1JNsw0xpanDqN+N1IuisQ4lr3/KRmf8AN7U4FiXxiTKusDYUcXq/Hn4Tsiigetvgi62W8uYxMdwxI35MtBctLDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758861594; c=relaxed/simple;
	bh=/zKDKobOfVatHUODr5V7Nn/Hnm+AO9geH8++pgFghx0=;
	h=To:Subject:From:Message-Id:Date; b=mXT5Li01WJu49EgEKwEbsNUCOjaPdQZ5AsAVHoncVUJQ/nLxfbwMl8XQJTaBnrDmbP4KpxXHeDQS0JCckb8cF28iZPSD2OHieJQnriJZTMe+K6z68BYxWLis0wNaOwyS2FSm2zWczsr9stwzkAiSu/ff0/cU/Au/A/Hd4mgafCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHX6Kcdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHX6Kcdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB021C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758861593;
	bh=/zKDKobOfVatHUODr5V7Nn/Hnm+AO9geH8++pgFghx0=;
	h=To:Subject:From:Date:From;
	b=AHX6KcdgVmLDKuPXxP7mifwYKXm8djiUt5Apl9TJyuWWH1HaVT5E/jFmcdupcb7IM
	 1SzfXWBX6v2I14LcLPmsZOqOmMt3TlEIdnB9KUJh0kzTijKmV0nABhfY80HZ4sCrVf
	 Zfazzc4m0zfd672Mhy9wFMAI7O4+O1brSxUIs9GmjPMRFiQav9a9uxnC62mu2nYsAm
	 +uBm41TAL9pP4FQefwZmkbRu4lqoGSKD9KBVULE+/VlWwRVmPvuETsFvJ1beaqQ2QS
	 spU/P0Bhxo3zqjQam0ZluN21iKZbKpBV+6h/nuni0GGJJqOnuPccna6iSbvJ7TWzXl
	 JL4OfaqdVvtYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967ECCAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886159359.16619.8764093728656376431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f027ec8cd1d61cce9a548adad6df05e7c83a2d89339d9c4bd0bbfae78ecc55db
Date: Fri, 26 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758861593
