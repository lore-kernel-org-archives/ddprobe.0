Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3082F34
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728861954; cv=none; b=htzLnfTgVZ+BqdRWSsjNih9X1QAmRCqjRijTCewvAVbuK70GL6m/kBhEE7tGKiW07B/LTLvYj+j9ZCVHSby82M71agj94wAR6ntgM1ABEqjyaQUzOwL8uoj2HFB2gj2BdLsMdIx1YM57h66enH9fSd2Y3GtE2AexceO6eQaJYlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728861954; c=relaxed/simple;
	bh=M+/+eMwA8RjWaG4UYwWa/5+m6uKU10zSwXYu0K7oBmE=;
	h=To:Subject:From:Message-Id:Date; b=qElLNY0ysIP+PYGhJYYkK6ceJFU9DCNhnm7hcaSnSqNuCPpbzMLRXtKPzGiDvCjN5MnIDMqrfbgvqYOsTX/UWovdXP49Ve/HOkLS1GJBxeQWOIQT/3BcAAfviojfHjfSk/P9TSgb/2zxKfpB9fsyF2KGJCy+6oK+lU1m2L2Yn7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jbe2e14i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jbe2e14i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F28C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728861953;
	bh=M+/+eMwA8RjWaG4UYwWa/5+m6uKU10zSwXYu0K7oBmE=;
	h=To:Subject:From:Date:From;
	b=Jbe2e14iZqxlPL7cvBOOShDwq4ZuoXeaDqmoVGfj5KyNBOQkhsU+ImJM33ELKKU7P
	 L91+7BGmMYAz23mlFLKYBZ0rxhiyHTlJqLTlx35ZAR6YgwqA2fo45SdBi2eN0hVRQ5
	 jqpuQLNEsAeSePOAXk23G0llW+h7/YYaAQ41ZcqgpOFQFXT9COwe4wQK3c7r2ZQfkX
	 +p4wgmZNABjcOvxbUanz0Z1yZCI7Z6TnCIJd7Eu96sDrC7gwmqcKTICMSSyZCQYHjW
	 roMKNCpuPLSKDugZ6IC8eie666Wy3+2522shOJqjXB0tWJhwmSburSP2KS96izxqa2
	 Bh04neTa0uTow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE78CF258E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172886195362.1946.7357340097241993825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd780e18c477c1bb24ecc12621ce0f3409065dbd407447787e7f45aa378e6ab
Date: Sun, 13 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728861953
