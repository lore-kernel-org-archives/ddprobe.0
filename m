Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4B32367DA
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752737394; cv=none; b=EsMnWBzql7HvTUiK8qGyMSfzQ8uiyGOP1Ytc/w2CfaxaoH3vl1ed+b5yGSCdYhXlUND10P0K1dnSl2ndVHrSwbGS1OuJTitGb/h/MqHlTYZ5cOSJEqtE82dxi1bGqMMY/TvM9aPvg818Oe2EvINKOXior0m79EA1DswS56cTKg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752737394; c=relaxed/simple;
	bh=+0ST+l/Jto8Sn91MsiyYzMX9OUZUghisyp4dYXOgxss=;
	h=To:Subject:From:Message-Id:Date; b=QdPPyBzbZIQr2ZqMQcP2AkvKLIM5rCyfTtbqAxUggzt3O3KNFeQ3WlVm+By+YYvmVufcv+0x4+aVSLZlpJ/nRR86Zc/7Kg8AlpclcF4+BRTrEWqHOB8VrgzQHzTXv5Z8tYJ4Hz9R8FJUURlym0HywinGo849o88pyeTntQPx2UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfZJsagI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfZJsagI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4678C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752737393;
	bh=+0ST+l/Jto8Sn91MsiyYzMX9OUZUghisyp4dYXOgxss=;
	h=To:Subject:From:Date:From;
	b=sfZJsagI/rNBNdL8S2Gw9CcvJeeDwcTFoXMhIAwVl7x5U4LMH16czf+38U0sHEiGf
	 boEomffr1QgjRqKSu5J3XhFCRCQHBCozogk2B+E7fetUDfEEj2MX4XVuq4UBfUpIDB
	 S00TAbF5fW5nKDjnNGJyqAvmyIF2ec80zxclSKfKAysQOfWtnSrGK6CLwI2NGIYoTG
	 ZTdA/s9vy9zfnwx9R9xSrpz9kYOqsDn8PDguR1Ta7qOxymgkRcNqzyIrr83ZYvubXl
	 4qWjHnNxpdIAuOR5u9GKMD8TMej8+/GprZsb4aOjvF0w8E8wH3tF0eUM3GlutCKkTw
	 VFqQItG1HsABg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F45BC83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273739363.17764.927476281370392509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36676c495f732c0c217f6db9bfd79529ae5704f66233dc530266e1b76a7de97c
Date: Thu, 17 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752737393
