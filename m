Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E869121638D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775334934; cv=none; b=C39TNmOwI4jw0/II3e01iJ31wUWw5jFm6+Xa4QW8pl6zjYH2CjfYw9PE++tyZOSNXsO51AaI2JuEZBePquBPrNa8PVqcIPy8WvxTKtjgZxIEfcCk02ykr02vzAPQg11BipQfxVy2Pvp3UWysckrG/hNS9wBU2RsendSwEOyvDYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775334934; c=relaxed/simple;
	bh=95JxaOEceTzYVGwldaWwNdclNgPTwkMNindpNc2flQs=;
	h=To:Subject:From:Message-Id:Date; b=bQEB45qEBAZjf+pxXDaJi9rDDCVNDXneaBcBG85PAAb8mzBEw6qNPDpcjGDV9CcRLBregxK/8j73sAzoDe3myBO2D5Q12hggxUcSU4y9suU7o6vxNTcdGbCPxc0+lJHtiRtuGUxC0NoOuasUSQN3tXCmhS660WAsABpXjT8GPO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhqtaBM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhqtaBM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C5EC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775334933;
	bh=95JxaOEceTzYVGwldaWwNdclNgPTwkMNindpNc2flQs=;
	h=To:Subject:From:Date:From;
	b=KhqtaBM3KVaqR5CmRY27sqB3Pa2nxyalvN/7iNbCCM3eNUu4cbq8P+Bru71kuma2y
	 UBVTQsDY9iEnfX8sdxFeM6FmP88FpU7L8AQNcv9c7noUnh3R+GHc6r6nDxB03Hlf5X
	 SbmxEvFtQLaoxoFatX0yrEBFso46sRh8X77FVrqDIvjKw8HV0ISmnTAPfT41a3qVwH
	 nQfKIiOefDmMpaFKIZ7l5if1JjcvLF2sfj0K5y/En8+0YRELkp/9FgiDaXJscovLRE
	 lwyI0pxIRbSf26frHhRLVbreJcB00TAX6vDo3XDSXsDHkd3wzyV0I8CvVw0tY9VxNo
	 xVrwml4oirgWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD159E63FF6
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533493368.30129.17907489714461725203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6206a08645ceaa3931c84157e24283cbbd5549046fe043eeccbfcaac00050f53
Date: Sat, 04 Apr 2026 20:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775334933
