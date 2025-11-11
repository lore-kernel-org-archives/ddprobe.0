Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159F22E9757
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762896594; cv=none; b=R8KHURg1cnn/rUrB61GJp0GOwK6yN2bdTebxxeo7Nvk+EssEJxQjP3Jqmoh74lwwS4kc3qk5WxmVFKceioi0vRkLogLUcW8F7ot8t8GBb5G1GtO2Hln0sGt20Rq+N57nmlWO6pTTYzj8G+W5Sme3+8YqeQ/dSGufFyAaEhdDzCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762896594; c=relaxed/simple;
	bh=G8FMHiHgaIpI6fV7/tom2CDAiLvQH4hrmwMnoSZ54Nk=;
	h=To:Subject:From:Message-Id:Date; b=uZGI+rI7RnUDALkyFXBRFjktCxGCFGwIj1iREbzJkNgac+NdjG+0zWBLGChmXw26gSouP3tJsuRCwqqB7Xh7R7NP/FPi7uykrt3XQ/FcjqcThlbNojYitYAyScRoBoQZgNnzdBFVkLN7rSVVvClBzUy/WDohdXN99YacSci5haY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgL1yN6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgL1yN6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BED0C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762896593;
	bh=G8FMHiHgaIpI6fV7/tom2CDAiLvQH4hrmwMnoSZ54Nk=;
	h=To:Subject:From:Date:From;
	b=tgL1yN6VSnRPXqF27tvDcwa0ZGgjtRAIHoM2VR8+HFRcke8BjNCHd5L3BKNKmiZ0+
	 NTz8lVqyace632kMct8QAPt6FQTq3ky7c1AxjC3/239VqlejcbVIMvRiuYzCZi2lHK
	 Vkzb+uHafcuDbcS714QaW8rBLNDMlc0S29eh6z9nRDAmMISsCJCKTizNQ5r3wJutE3
	 /d+1ARzgLPdtySfSZcVr/lXuSLOakQRcvIh06Ho0sefvJiJu0mbVjK8eE/slesSIoW
	 cLVoFcCtrl5+lZEvPEXEFsWrnqkgc9W/fZm+N9CgsLc1KCCIrw/X4PN1SST+55uHGW
	 CyGonphc9pKMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F819CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289659358.5305.9664197718184214773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 216b1299b6bf3d820c69910937d91ec6834ba9fd604ce3b428a0eb1ef228a570
Date: Tue, 11 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762896593
