Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455271B424B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735848954; cv=none; b=B9PxgNYSC+8sny8TAhVRz/MiolV0f7oxizBO0g3eblW3ScE99ZriKQt3QVBGhNNCAPPcmnxmUgGjg1CJ+pOIQHtbD4xT00B+CrOwZJT5UqXYXXf4bOs8OnQkzR/Pp0vtPSbi5DBYIB9h8kHltidVX4gHXSZc45khp7oE+f+YndY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735848954; c=relaxed/simple;
	bh=bYxp4vCoho4wdPOOgB0tEy8FYyLA3HqpEf+t8l3R56I=;
	h=To:Subject:From:Message-Id:Date; b=sYvQDypk5qI+SFVfrAQyuq11TktcJ5t9TIbwkHVMgSTQCJFA/ZzlAfRkeugCwaS/+gr3ESv+umMJFy/9na4HS4Wsqr1q4sS7Ls8bsU5iIOEZZ6hHANEvmAalht4ve48pKDxKf7960Xl2FF5fKXCV4GAOMy/JZc575ovsvSd2Fos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqOoRU54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqOoRU54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21A0C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735848953;
	bh=bYxp4vCoho4wdPOOgB0tEy8FYyLA3HqpEf+t8l3R56I=;
	h=To:Subject:From:Date:From;
	b=lqOoRU54iXDcqwoBOl3fuHwaKWp1z/bYZmK0/MG/hFk1b4Rzeqli6u+XQmEOMOIiI
	 XkBFUbXbegg6Uc0ELdjMrBrJ3iC6jRiVLuv4Ww2RohYg6k6ofwWzx1fHs595CrF5p+
	 uWWa1BOiAlTagZC1QVxK8ts61pIHYWNLJVml74G/k6Z6xnXdcJLCe7cALm0408ntzh
	 T//xGpRsHWe8XWVEQv7Jy0bhMJ7pIFx6iFlzhN8bCPzzm7/boERGU8u8W2vVzu6ydn
	 jmtYTJTLvr2ywZK2LV1ziUfvNBw9vND2+OfmiswS8J+T/Q16j9oZ1T5ofB0UUHxI9v
	 G5L8b9Obx4TgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD63E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173584895362.24257.6920815336114425024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a888049e53a04fd157e25a7aee2e22ca13fd168154d3f91fc1281a9d456a4ebb
Date: Thu, 02 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735848953
