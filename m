Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ABD1494C2
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759550395; cv=none; b=MNN2snlRA1EDjOsinsvkoqVXXqGhloi/jYFhi/NvgilYhlF/R42uL+k8VUeqMeVg5VTKkqJHpb4Vdz9sErPPrWBTTyDrn6psn22b76wHNTdtGWORLf0yI5nmQEJCIi3e09eQbhdyWCZXWcSaZ8TE3VZwOo2gDRwZa6uq+QTqznY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759550395; c=relaxed/simple;
	bh=qpk4Mjb2yqDu0qfTcgRb3L78xSiw2ehcuuLMAvH8BDE=;
	h=To:Subject:From:Message-Id:Date; b=rV4ewPc2F/O+CTfJVFcvnximQNdns42+JYcqqrlPMiaHRku8YD0qsSZyq5fivuPO9tONx+SBIrnKB6PjWCOrJlAFKbnZiaSsjfaEnQyDJVfA3bLzUXvZkU24AD2jZjAL0MMrHI/UNy4IXVlORN+7RX96aLcnXZKDGj8AFpP/19E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYVs7ob1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYVs7ob1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1294C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759550393;
	bh=qpk4Mjb2yqDu0qfTcgRb3L78xSiw2ehcuuLMAvH8BDE=;
	h=To:Subject:From:Date:From;
	b=NYVs7ob1PBB+2YPJfw627GGxJy4R63wg9JNtNrBYdQluIQaSVkKYpmZ/mJW2pAAsf
	 BLMZ2bMPwL0T0d4cSpyLn+PTWqBk1YkYQ8ldl3rYVeTEh8Pf/JiWa7smlgfW69b/+O
	 P04RCz6jINDx7dIVM/zqMDH4ShicDjO7JmoZPoVpaSfKHK98QTVD8Zulp8qjLIBsCp
	 FzUbeYKp/5zWmAPlCD3VV58ku3DShMo6VupFX4kjJ5VJCUol9TEWF1afwUdK2AfGYW
	 6PhJutRPGT1yvWcA8haWOusbFFhdXybJAcXpAWCmrGEIKUEIXz8xLZ1lst0uFMcxE0
	 EnV5wO2aSNIvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F6CCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955039357.28565.687283123803044446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899e96f10e40f4b5be34ac62432059edcfe32bd36819bc2362bfd2d28ffe6d96
Date: Sat, 04 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759550393
