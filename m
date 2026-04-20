Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F669283FE6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776686854; cv=none; b=ncJoVkdLMHfL4r+m5R+TBAPXqWncYP4kXoqhErxSM0r02QqhlRMdxbcXyLY5v3AtGsVbRN9gtEbiny/HK0Xwu+iHzA43gqOdGzd46gd0SVsWHk9Z7GaMJT0EC+7cWEEkQoeNAHEncT+nNUIq7LXXPJ8FWVAB8B5MfLjhaHyhIlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776686854; c=relaxed/simple;
	bh=hmsHQVFX0qSojNfpB4KtbOGaF/nVhuGaqvi+EKh8Vjs=;
	h=To:Subject:From:Message-Id:Date; b=eb7S9F3Vn0KBfplQebKRNZmqpkSWerePMMqfaqH+3gBkqgBFc0Xeqjfc80nedWFIc3TW+jId9GOfykr8LzLxVNO5T5Jj9PIfXrCTnIRGcPmAXstEgPIX1WP/WtZHNYDx0BElHtGMbIDQUM2gXWGweNYFqUAIQVapeuaBz21HLXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulIBih5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulIBih5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81CBC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776686853;
	bh=hmsHQVFX0qSojNfpB4KtbOGaF/nVhuGaqvi+EKh8Vjs=;
	h=To:Subject:From:Date:From;
	b=ulIBih5GG2D7CWSREjPtcNBR5scp2Qcisc2K9eOTXCqt+Mc1H2KHGEJ/bm2+GxF4s
	 Nb7TQ/JAtZnFx03/mV4FIk+pQGZO5b8SeIsZdyOigJmMZZdWKxX0OF4z2UWaZlPxqK
	 NRqrQy9DVtL/67udZjRMSMxQyVWbA/6qIAgM+I80PBzTSWD1toAf+M7DJnQbtxW+da
	 PwCdY2xIh6pA5egeiFi4C9ifIMcpp0eW06lDnMhkCPU+n8mhrCKQ15gmZAKgLkX+sa
	 hYJ5Y3vrVUNZWAJT1gzJOyFmFQYvvdweRulOVh1GvS3CVAAkrBvEtuLle7I7kbdWfL
	 5FdybcxMUooUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDA5F36C5C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668685369.4446.2147758733329432987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55aa6dbdde961be24a65fd315553fc850df4e5fcab4bb6c6b3c5f48efc220b98
Date: Mon, 20 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776686853
