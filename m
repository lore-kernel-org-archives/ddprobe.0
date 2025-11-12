Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F020A2D97AF
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762971594; cv=none; b=uhp5KyUXpSEaqzDBjFNCXIv+4DujLIVm3fYcy8aWwzON+KRcjktndRazGgzQhiPP/IHeC/RIeDSiRPrdurW69xsSnJ5iYwmprhG6QhJELOwp9bICtdojOUB1L7eESzKvhuftmiB7la/smKP+YtB5TCUJM9IwpqoDSoD365UgAd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762971594; c=relaxed/simple;
	bh=hNs0MoygbEexK3Gz5NKCF6afSAWB5hpDG3xUBy9EwPs=;
	h=To:Subject:From:Message-Id:Date; b=TMNYsCBnR36vVGstLbNHNDq4A9etGViJiscg3wXb6OQoXOnS9KqgyyQYOU5GgJbesN0JkAkOiKd+tCMMVfPe3v5TUXquES5CmFLL96ER9CPon2SgNqOiSzhGPhxS/LP5WhaeSVAZSP+h/WKzS4RWT1sGeWWwqCSyn4K74osYtf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuE5Ldfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuE5Ldfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D150C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762971593;
	bh=hNs0MoygbEexK3Gz5NKCF6afSAWB5hpDG3xUBy9EwPs=;
	h=To:Subject:From:Date:From;
	b=BuE5LdfypwCyDgtzp+7RFwFZLRTjNXBLiu/hzRAoP0m8GH294ML8+9HizZWNBlDSN
	 mjzeY0NXyXoWVVyV3/V1dPZBB1Ls+eRl78YT0mghVRzIJWhUYtDkUrZkItPyuoOBd5
	 gdNqSKoR6O/rUGEw5od2ZvaHmKYxyqzXcwT2+/aeKIB9yzXTFXweuedWCTxmvtUazV
	 DK2+/pIIsUWHBxbdGR0XqwEwJsn2AL+0CNd4H1xQHk3/2WSJdxPML94zLQ74iQ52gZ
	 dOIlFqWKblfGyu7Dlm5IyZ2dEUqI6Ro1GvM7Bg/TEG6xb6FOFCb7hptbAvOT2l9JmL
	 aW6Eyq2Fxfrqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6FCD343F
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297159358.13393.1932747640790096118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481d2c8d9a85adf3052f38ade1ae7c4c41ebd0d2069fbaa63d026bace8ef3ff8
Date: Wed, 12 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762971593
