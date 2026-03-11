Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A48B3E0235
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773231894; cv=none; b=cq+6IeccbeGJ5XUnlentTTMrSe5Ymx5KgWqbwikRM/cj6GQEoZYaU/t75/sBvwY1zx2kvue2YVswD+Z2yUA+YMue89vwpAEV+HRUFdAQIHsNfTMZQFEj/mAl2dOYlhuQjZhiI4b/NtNtgidwTe3aPBlVCEutAtaekHx7+7dydwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773231894; c=relaxed/simple;
	bh=CQEijNxT/S1eAK8LCrNiM6FuVM0VbNf/0MlCeR9LkoI=;
	h=To:Subject:From:Message-Id:Date; b=iXd14elGs36Gu58qOnPAxlEp41G39S/FlYdcUrOgXo56iWv+offIUNIeCDBWHJKq154cGkFN+JdXk1eB6zkALT8uli8EtdAb3i4aM6joolnJPiXKGUGdXj+Ok5YgXoDLZngyOiOAXka9beLEn26yAIajzLPqVZYFOtbro0aEwQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdws587R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdws587R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6E0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773231893;
	bh=CQEijNxT/S1eAK8LCrNiM6FuVM0VbNf/0MlCeR9LkoI=;
	h=To:Subject:From:Date:From;
	b=pdws587R6deY02aXY6nigGcQP4tbWsXqgYxx1pv0xw/ncaEgOZgI3B6I1Z8RGtEKf
	 V+OQDhBTTtmHM54Q7/Y4dkQmItEFDYdQa1KMUw5AxYsC5qwZudAWm4f6AFNbUcx812
	 qCR7KnaAnAyGZzMFlCbQLfbsoge6yo/GmKTOCZq9Ajg/l8HNqaN+DqXGnZXdHnI3XS
	 ap/tSBXFOZmqIJSaFD1YEjr8rywC+Jy3FNS2l1Vu3MFhNGaYH9Z08gU+O8x7KfJcLR
	 EbosuHG4kBWUk+QmNTB/JylruKaUfRvWJdrR5ZmEt6JgZ0k9egHLfJ6CMSRpbFTkQJ
	 sUwpNhPghh4wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956D01062884
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323189359.15522.15341997974301729849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943f359752254acc16e6943a70f39891de7c43c84da2d196b3592ff12c406de2
Date: Wed, 11 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773231893
