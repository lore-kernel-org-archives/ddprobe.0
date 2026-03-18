Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6F73A0B31
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773825293; cv=none; b=u2AhwqiHKveLuoVbbUhE05ESAQsnAehrhvZl8039aDKvG6BWegBqZF9Sbh1Il/hTfnuDui3icfNeoBtqBcqSHOL5+2gwbdmWpG/bR+BSDD1SIknH0mjah/PHMoIi/ntdo8CAUpkkuiLf9RILizKrEd29tWIutivnnRBfsBaZVVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773825293; c=relaxed/simple;
	bh=l1bc6SHP2t5zx9sOhXQV2vedRh0coEhUckJKm6eN5SI=;
	h=To:Subject:From:Message-Id:Date; b=fBTrZh7O91/Lr3d4G2P4elKk/vDwJ2s0HsA7iUUzs8zSMedJmomFzvNAH2F9PQUvB6TwLMcBkWUAfoHd0bDZBMjhWyDb248qba5X8rJXj90dNAFZL50vS5AGK+zbcVnR+DILC/n3Rq/bbdrGBdP/+n9UJnbSwnLzI9J9jdxevlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=np4vGUm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="np4vGUm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8802C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773825293;
	bh=l1bc6SHP2t5zx9sOhXQV2vedRh0coEhUckJKm6eN5SI=;
	h=To:Subject:From:Date:From;
	b=np4vGUm0uTCKEfCH+UwlvBoHZ0h3EZ+hpQ1nqo2kpqCzjjOnV9gq0SJtTviGJKK/o
	 9oPqAN84gqiTB1nOt58Lo7FPvg95UPxDcVovFKpWheLNQTSi+pck5D1uo1aXpF9vDB
	 +02AzPdGmDDcXN4GyQsIcBaw6PjS5A5fcRV53AQf1cvSbDZ/kFY0b7RTIR9bHX6OvJ
	 pExuO86dB8knOE6suXupV6zl15pZXUj1KPZrRMEDueuEL8e7ZDzqQP5Aa7UnnGoYN/
	 Tjv+/yWbKn2K26P4CwgXkLzGt5Uez/wPI5xlHODW8r5pA97frLHhfCLkyuW6bX2uU+
	 ehkvrI+Ke2Dww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9785C10854D9
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382529361.17211.15931732066513766810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8343a894801c9e0865fe26a33c3d1b7fa3ed9970272bcbaae3f04b8fc20c2c3
Date: Wed, 18 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773825293
