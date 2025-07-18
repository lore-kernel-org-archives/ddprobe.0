Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180E114F9D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752847794; cv=none; b=JmlL3Mks+m/azfyDTmrpvG/+eQTlB0yk0uDqm0TLxq8KrgPtyMn2aF7TACpWi6fptlsoh3rrGS9uKPIZ9/13bUUZNv+AlrpJv4uKy9HOa8Lo50L6jn9YxWgPhQ49q3fRzn9gvhcu+AWlzbCL8muklwMQGfY0/Xr+kqE+Pjw3gyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752847794; c=relaxed/simple;
	bh=aM3xMIHCT1Q8P/t9Hp4Foqx4mPYptDYe/vSQc+4BRxA=;
	h=To:Subject:From:Message-Id:Date; b=CBwnlXPvD05MZYjXbcyCGIlGlTQ7qEaBw0bHrWqIvAsqpOzp13xGrnQAqx2fS3ZMfvM8mUmOu5qHwAJyHmmuhtX7TT8IS6rxxmqgtOy8EPnbqK8Tp7LsCWJ7RazJBKw/KB0FENSk2QMNFiPrirKeuvw8kMKkQizf2dtf3SFQ7Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rd9rb7sQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rd9rb7sQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CD3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752847793;
	bh=aM3xMIHCT1Q8P/t9Hp4Foqx4mPYptDYe/vSQc+4BRxA=;
	h=To:Subject:From:Date:From;
	b=Rd9rb7sQE/zJDmQCHq0cT8kUBtTTBWQtsNcR245RXJ6th5TBbhQaQqoELSJA6oxiL
	 0eH+oaeOrrG3Sbxo1bvqXxgYLVk31y4lcID5OToZN+ckuJQrTUQIiYaU5IdSoOAcoc
	 92ISFLvgQUr6WiWwzbHc5+Hen1OQeQmE/s8IrJSI08v1pguaqhxR+y0wToDZaeBS9b
	 e0GRCwYIDMcel/bd1i+Hf4WHN8q/kvXfRVf2r4WsmTDzkm6L34ciBt+FQ3RHGT0fYg
	 qCXYZ8wCPrXZEpaJ6U8Th6+iIUFLkTqIivvBEynQzfnsgUph9AHObdFJyZU2lBne2I
	 BsGihiOliNU8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCADC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284779358.22068.11829875617787268318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863b4338a32503002b0274d9d81d07193b0de68867e460aa9cf95f96cd199a1a
Date: Fri, 18 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752847793
