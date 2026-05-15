Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6D33DD52D
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778880634; cv=none; b=KLfHzpidwWUUvS4XuOcSgTsmExVhROFKCFyCTqMV1Yqurl8D3Q6aqBuE9ulIpPV28w0VrAheLWgYRs75oM0Zei5tCMUve4+KEWsjBZVvZHPjdgAcxxnEnC75jBEX/ujflsBMv/fCFo9Mt2dNpaNp7VKiMr/YWz3w62uDZ8Gx0no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778880634; c=relaxed/simple;
	bh=l+01a8XvNqwdza+4aIT0Q1AesuNdMhYWKjTZwU08y1E=;
	h=To:Subject:From:Message-Id:Date; b=kKuZdcf/5wMdUC/1kAGCoPpIdKSw9T7Hj8PKZ38Ud3QaslcKziex8a6YVDyKyaN82p4CGGyUrCwcQFL1yX9eNH+9wE5cWI9bSsXg6hNfJRhZw3+Ugpex3g2tYjcjKC7BzEQeHPM2NpCjQI1eQj60ESLV3yVsi8Yf1qYyvTdWPAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmiD/ZDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmiD/ZDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD185C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778880633;
	bh=l+01a8XvNqwdza+4aIT0Q1AesuNdMhYWKjTZwU08y1E=;
	h=To:Subject:From:Date:From;
	b=pmiD/ZDSUfyAbGmqCscnBQhfgIK8ZNuxbMDh11XSPWQyzaOO0eahW0cBmBD0+yk4C
	 M3Pq2HBRPV7R2ee1eQGGGpaJ+VNShO9pRv2WCp89MtHuRbO8VWI1q9BI6X6KRNOnwN
	 9BxG42pa+ay/HxfeSyHuiWmNs8iXRP5f+Sa0w5o1ioGXGmndHy9OB7120Pv1Hw9ueS
	 PxKw4cXDO2nwh41w78fc6R7xUdsDMogroSpfTlb5Y0zFZs7t9U7gix5IUKVf/x6WJo
	 cvc/MyuNN7D2+oHWW6GlUnH8kYG7vKumhJdtOdhw/FNxnie/C6vezt8cqxGnaTX+DF
	 UxJBmyxHskj3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4D8CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888063368.14080.11926028188502106472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51317a672a4e6c5a1154e8ad6af7ba4ed669dc2de52431439eb399055826db26
Date: Fri, 15 May 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778880633
