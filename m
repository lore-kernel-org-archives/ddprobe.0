Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1FB344D8C
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786519234; cv=none; b=YtlX2sCFUYlZJegkZ0Jv6UOF5T6coXzWAGhTPVw+pgVgoeqGCzkMEI/SUXmMm80mp3UbyAKNYYOvFy+emqnMhVqKqXv1uYazkZ8tT2J/VrMazUYN0bK3psDv0fCtt8aICLhWpIbZ8qkal0bhRaIYdftYvMdd1TEQ3sGoBDtbR5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786519234; c=relaxed/simple;
	bh=W4SxXz1ZQwN6VVH0S++zEDSUkjeFpEmJlMoqPEpGRNM=;
	h=To:Subject:From:Message-Id:Date; b=A0Q7f8LpMICALsXACMcVn0D6WYXlV/yrwzuufo+ofZj/udWQ4T+OrquasGjbtBRB6xLGWx935l8uc7mzecvvgh9VevYFTRstrGuRJhMHkXWSsL0iJOCDV+Z7DBVPoIs9fgxllW4NL9M2HwE/23Wcfi3G7UPzMN2vQ+odx7AGr7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1udWy53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1udWy53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF2BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786519233;
	bh=W4SxXz1ZQwN6VVH0S++zEDSUkjeFpEmJlMoqPEpGRNM=;
	h=To:Subject:From:Date:From;
	b=i1udWy53iU65wtsSvMcyXlmws7/4M6mf34IliHbRlKe8K/6QplRoC8L2zKZJi9KM3
	 mn8qUq6vrPoHK4Vly3a4LUBgmXyvkbvWSlBIwnUXR1xJv0fmUbTrPA1zw6lmw5uRR5
	 Chm2eSWi/BP2OkKEFJF/UJQdgRQqbOIYOYSOgLTWrkc3YqP8mV2xewtM9LJAoQchqb
	 /cob6t8eH7JFzOc+EcXkOCFhE3zh+jUOHds/4NauzR6kUCk+VSEIvfw89jmnS9sZTe
	 OLWIh2FdgL7m5UA3GKXAmg8p8gp0bPQHKgNd7lzQXUT2Wt50VeT3FBuxJdoji05mVc
	 EgqC7gNLBvJhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8960C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651923368.19139.13738245832053278015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c4ff20eca02b80fe8e7c06c1dc0a34cc6821f74d0356ab9d36345cde23b489
Date: Wed, 12 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786519233
