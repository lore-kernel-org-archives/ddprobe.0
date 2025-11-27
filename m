Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2757722083
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764202374; cv=none; b=MCs+EWxrodoscwv8XOWkNsNzDInOVqIkCPCFFtTGOlDx5KiRl3etaPGIOPRiczlpm3ll7GbLRcocWfckuZ/cfAXku46Q+ikgjOQwclhNFpUZ2GZnWiYu3LqjJwag4W4NFwIoza9yrTjKENaBZ+2C9Wod0FOc3Xz1ps/2K5vhmDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764202374; c=relaxed/simple;
	bh=c4dIowWXkZy6Kk1H2/QhI/80w8yTWc1470wLGPfP5x8=;
	h=To:Subject:From:Message-Id:Date; b=Md6pUyFgYE3ZzoYVo2Ip8rmoGt6MpkD/xg12nEgjk3cgdh9uRM0hIaYgZ7YJEymJNHJtAKCKKOSezmJZkUw3oNBFTV2DQ1VExeuiqrJR6udejdwKuwINHu3EAhx9Qu+huOywg2BEJ5mEasnXCQ5W3Y1ls18C4u+3sPcbWox/WHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KW5TwB7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KW5TwB7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED14C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764202373;
	bh=c4dIowWXkZy6Kk1H2/QhI/80w8yTWc1470wLGPfP5x8=;
	h=To:Subject:From:Date:From;
	b=KW5TwB7L8WeAgnCzugJRMGx+H+0b3NVn20OA5XY0beevfyis80Aku8jjLUSOKyEuR
	 lyUEgSZpoeMcSVFWlxtC/T9wFIKFCbZMgbCl5+LtRtO6G5QpZJrXdBB7yCDw2GFTny
	 a4vtzVG6Me79fBeENWnjh7lSjEnZzl9x+VJjyMW8VaVYHcpFVdDei5fGdtG30MQcJp
	 WC3reio7oWocxi6QGGc1u0Uk5aPMHHGiLGS4uwvzyFaOhqm0o3/OKjNo6n9ud89lMe
	 2pglsxpO76cQXz8L2Yz85Hoadg4h7oodG4vZRDXmXXdfXLU8YozlljCaUX3T/K1FL+
	 GvMao3J58Zcsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925B2D116E0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420237358.20712.4574881464005152941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6cb454f07881c5c630bf806c130eb1c553482852deec6ce89d563b4c45a9ef
Date: Thu, 27 Nov 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764202373
