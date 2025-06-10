Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4272459E5
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749586794; cv=none; b=UN+IPey/oG2ApeP6dVbvWTKX/iaKeFcd2/LQseeRD9B4OyLcZcp/dn6Aeaxf/XpmHS+RnkfwPRckBshxCdxeN2KnFjs5VFYsLYqvgB9ANLgTeKlxR1VlrirbwKD0jNso2trJ/SVlMNv5bdw04/aEegRkJDlKJgAna+NvwnQd47c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749586794; c=relaxed/simple;
	bh=B2woPQxfuQVVzsZcENzphcKMH7JWmhxev8EUKHDHq4c=;
	h=To:Subject:From:Message-Id:Date; b=pJZy7u1XM1G1diMSyyv2YgYQx5lQ/z8P35ZdcEdyFlEGKv0UVPETvwAT7OvE4IrtfsnYhKO6C8a+oRqWRlWK46o5JFq0KhD4Rf0fpA0+pa7a3ODoDKr+TksoxLAURVzGG1mBplUB6UvjkLQjr1hA06JES56zt4W5fzkuga6sFCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEx089ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEx089ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6204C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749586793;
	bh=B2woPQxfuQVVzsZcENzphcKMH7JWmhxev8EUKHDHq4c=;
	h=To:Subject:From:Date:From;
	b=sEx089eziLuiP9A5GoACkUFMAsGzvZ2DpGJEQ3QaSdq2JlZE/lv2AtGmcYxGhY2SF
	 QK1WoICzlOF8kp4ITzayKRiBca/wXc7h2EMkkzYB0cR3QzR9f281+EQRVaj1S1phT8
	 UXCUuPpjcqZ0IWTTAPSS/VptnS2sTNeWKq5/zUCHMhD0h66lsGQIe2EmW4PBdn9XXI
	 h4mVjXzyUF+9LXToFPxI4F/n2dspR9DvbSfLLdmmn/0vgwBqVOntrqQ3T9YuDJMuX1
	 FlyV3db8dGuHFXvtlIkflver/AbnLqC79tjHkMniZSbiErfVAIenFhsBKCxbDeTZBS
	 tdfmE6WUeyMFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF4C61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958679358.13908.9880385398246076955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef6ef5e55ab0eda97af80ec000d87017c2e08c216ffbd90993e7f41532dd77a
Date: Tue, 10 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749586793
