Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C94121E3C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729142754; cv=none; b=GjWk0ADhI+CV9wXgprxDZ9ACcA+pcCHTD6q5L3mA9uODrkjT8/yqr9KVMopHo714061ld/4E2o9++QYJYxy17U4lRhwHXOYWuEG0wdV8B0OyK6vqavLlgGrVDMwpvLHc2M3GaIGYHeXnaRLB7fVO16RD10mqLi1X4ftWL2DeIAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729142754; c=relaxed/simple;
	bh=y3loU1hwMC+d68vdODBRG+/zd453w1rPE2hM8v3UhuU=;
	h=To:Subject:From:Message-Id:Date; b=FgEF9l6WWxsGYasZTAH62q3Cl6ZNoAFqjuUophzn1+rBOJhEJpg3Z4LE1LIgbQ2G4zftV5wsrLQqfoxbjmt3HCn9a1yvdetKTKSOXBw2IvRCYZ+JxUcSO0coawlXcSq56PDtPRkHT55yl0KQSWvPR/oRhsWmpZT2aaF3T+eRbZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvVjw9vl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvVjw9vl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4114C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729142753;
	bh=y3loU1hwMC+d68vdODBRG+/zd453w1rPE2hM8v3UhuU=;
	h=To:Subject:From:Date:From;
	b=YvVjw9vlH6Glg47RgsIom0fgPF98p4LNlI+uqyC/WHTBR9t7wRUrdT199nmfRgybi
	 LVmx/GuLF/VHOXkQFHqEYHTlqKQOLvWH8rvDDEnVGllEfl/GPZYS1xdxRIqIVu/OHw
	 URK2RlXoc7gvdrmEqkAScIWcH0Swn8Y9PMQsS6S4nSAg4eBh0HR5WoWkPXVv1dn9ua
	 YUqO8mVgmqtJIsJqJsUH/8wv2MeqgKSFn2Jzv/rI/9eRAAE3AUMwzYbIcCB1/UyvDO
	 /1B4EqA66mVii/6tYdMVuD19oIatuIkqZPBQcVRv9zolLWZBRuGirekTRwYXLIyWtc
	 kjiePJDPGbf1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9369DD2F7D5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172914275359.905.10236846759859710221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f02e60584c578c9f8093227833bee9741388ad4cc14011b8aaf2aec1f6cf5a
Date: Thu, 17 Oct 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729142753
