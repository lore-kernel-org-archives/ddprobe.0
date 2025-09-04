Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287852ECD11
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757025595; cv=none; b=sIBQnIG0KNkjku6dcKIaOw+cq8ORKJzkM2Xl9sFYqpxT24GSJA8/YYJC+FLMeT7hV4k5svFv9FTgc/WFJj4r9BCrsXzEK546gXEOzT+qmw0vStL+YqLw+sy+SjJaD2tSHERjf5M48KkkmDNnJ492EUCexYjbjkkgnJlkei3jMIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757025595; c=relaxed/simple;
	bh=LjQfPYZ1tOJKl6xnfhFqi+de9PZ4F9Wqxcv5EoRV898=;
	h=To:Subject:From:Message-Id:Date; b=k2+x5kvVW4Hzyw7Y0PE9j6vkAUN/ucZwgs/ojZnK40ocr3xK+6C9RSgBgUn4DNlmVHiPONN+pfprbmw404NJv/0Nv4eYpEWkX01tG6YpVUOoJQK4jp8hUg/gjX2o58S9YXWEvDhTVd9oA9CC9U+6QbV/qCXKPcCHNE10o3oGyCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2HqfgFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2HqfgFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FF7C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757025594;
	bh=LjQfPYZ1tOJKl6xnfhFqi+de9PZ4F9Wqxcv5EoRV898=;
	h=To:Subject:From:Date:From;
	b=h2HqfgFFCNYn+w0xzfz95JNYWkbm6CbPEvicLdn+m86bTZjpG5Opp58iJS/yyEZrd
	 1kEw8FVITX5Rrf14SFmbwv+BFdMZBUgJLqREWDwV60IA55hx2bnPjobVKOwi0c5D8E
	 KWP9aqwiWzfK832laON0y96Iey3DB4QS4upWpAAeSmp94TtlKMUEVDeTrcbehsv70Y
	 myFGU82pl0BtdDxez97VzPlH+Ol5jnmFg5ukS1WSeVwK0vYYiMcOgOU/m7oj8BAmxB
	 uX9+v8oRPHrhfUj7/TIOXAydtgB3Urf58Ej8LFx0gBciCEXcDILX2rn2z903ClLXJj
	 cYEV56PKWpDAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963B3CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702559358.19345.2899520679787483823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5ca9e5788e33d6393794b4c9ecbb3b58d431493183d65f342eef4ce5c0aa29
Date: Thu, 04 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757025593
