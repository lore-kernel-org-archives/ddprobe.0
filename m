Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73142EF66C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751555993; cv=none; b=CYRAojELGAWHoJrh0u23Ue8G7MLf0eleM3pNJMozgOWo48JvJ8KI6Hg3Jn70CqxJVMNwkyYk7cK9oforyL2r3zX9yuXhU6iWjd6xK+t3yV5ASKYzjS942FG+qtPzI3qvG2eUZ4hC4yn3DQLSgqMLjmLAs/AXA5nEuvcpIvJX9B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751555993; c=relaxed/simple;
	bh=GrG3ysclMtlfua9AGEk0vRyz8HCImchMhQ2gjSSgYbo=;
	h=To:Subject:From:Message-Id:Date; b=g43o0gBwsOUTV9hOIupX6Fx7zFiiFdd2IX3hP4yAB/Lb/G5p6SOnK8Ddbl6VEz6lWYV2Aa5G+2w0ZFyNO66G1uVFzPqztaW2EtKsj7PcWnmvJSX/4pbMyvg//GDeU0WlmasGtpl0JMjebb96S57QDguflqjsvnaoSnUJJ5GSxKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GK/3qgwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GK/3qgwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCA5C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751555993;
	bh=GrG3ysclMtlfua9AGEk0vRyz8HCImchMhQ2gjSSgYbo=;
	h=To:Subject:From:Date:From;
	b=GK/3qgwKlwgiTamcFvuXIcF541zmqTexng3mXgrpQ55B12W2hqLUqZIVtb32AaaD5
	 rAjQ9w/PGgVKMgAJWxQJctQTA4qFKmS5MA6700N277qOIm6FpBCo9N6nl2FFO7EYzv
	 1ZIV2Qf7kapbMqHi5B72lrA16nfQyS/vLK33mEOXYXbjX/pPG0vQq2e/GKstkN4Dsu
	 S/UqtxAZWRlD0K5a+D6SI9g86C95eeu0OmuzZqeLenv+lJ4Fv5QLNOfXZPbqbAgbLX
	 DhOXdhRaccseeNOJiaQaYwIo2c3yY7T9QBIvEiX0zTMAZ6SuygNYYyX0Z5aat+75d/
	 s6/hS1A6uSa8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E383C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155599357.20134.7010538776334827349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8010f0ed186d101e6d28f9d1f2ff4f0dcae38cf315da0aec13bcd6b44d9307f
Date: Thu, 03 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751555993
