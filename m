Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB5E3B6373
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773162294; cv=none; b=kFGG8OY8Gb6HFKXx0BW8eQVZiW1wyMiEXo6ST5bWu/HxerxPQzclZqYBEED0ft2VNCBqb73/mj9rTFigR3bLjLJ3QPtw9hZiyV9XSjRsSmGwaha0TvOvEprS7nMPd3fFZzVmlxzV2uKZeuW76lXLAzacqyKBIlf6ILYcA1Qagno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773162294; c=relaxed/simple;
	bh=2zYbazXh2aI18WdlEW6gKrQrHyIjhdI6CCdKI7+RG6g=;
	h=To:Subject:From:Message-Id:Date; b=qk902OBvus5RdDEhMKJcXiyaGs+jAnpwaqENooFbIYw8r4pKenKRS6B4+vFskVu/kUVypXcVZOTewmiUldRlhhNNKu1Uv/f0YEBHbQOZjPG4QPdBBrSu63qKxEAxVbex3tH1qFditmbqEe8a/Qt0/rzfsmrsL9qwEpddEkr37YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnJbVJxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnJbVJxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A3C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773162293;
	bh=2zYbazXh2aI18WdlEW6gKrQrHyIjhdI6CCdKI7+RG6g=;
	h=To:Subject:From:Date:From;
	b=CnJbVJxYEHBpZwTllYXrppvgFM4YU5IR3DeHURRStp1lWkH8szGQ9Io3w0lXDGsmv
	 wwPhapg1nSm6N1QQY+Kft9Urc2rh95PasOhdiAi4RPDrrjehGtkPt2wh2IXxEhbSQs
	 h2hbYqU1sc6xRsIO9sY2TrExlJQbzFUnmMIIehX8ug+4ZxUpFyCG6gsTi+PwYl5CMz
	 7yIJucve4Q4ZfeY9pLcJGWVSrZmdh8DwnKIkMqittMDzEFeZlMckvLHubWFbCT+ocG
	 nqm2uU83FC2FCFQOnf3+A3uAFTkaUzRQElLK2GKEbh0HBHejb/kpLKv1cT+qJPGrqw
	 UZuB/gY2nEhKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9202AFD4F04
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316229359.14240.15569619536258125256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6ba4491f44be67f7456f9083951ec2285ad2c449c2680ec5d28fc2010f6b0d7
Date: Tue, 10 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773162293
