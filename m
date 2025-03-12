Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505CA1E8351
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741772334; cv=none; b=Cs/n6aImFitW+uhAOY9YHAb9hWstrtHn2XFz3c0sLTebTaeD2Gm5TFXxi1vXHhiDFz/o2AJABSdZxwh68xo8muxvRX3FuJCnRWidcIXko0Pc3PGdrBgT9gx6SuHbv7IbbhzvVXRSxguRStDWJBR2l+9b+2SlNp60H0mB6QN1/gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741772334; c=relaxed/simple;
	bh=aK+7TXhUVXleqN83qmc0Ji8XXDenkxyLGo6Wbtd+Fg4=;
	h=To:Subject:From:Message-Id:Date; b=H+Vw850faRK+pml1o2emflqVeMQdEjA/Ray07/N+91IYDz3wI1xd4MDKn5H9iXK6sDTyIHf/7oRyZ8GS5M8Z/R7pS8kWO2MYZNrdL42+EN3FNn5W9AbqJ8tfbiJgaG+6yREIFsJLeR4RfO6cUe8DrURzTpTrVrjUmSy+RrXTefs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2AidrG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2AidrG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CE2C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741772333;
	bh=aK+7TXhUVXleqN83qmc0Ji8XXDenkxyLGo6Wbtd+Fg4=;
	h=To:Subject:From:Date:From;
	b=i2AidrG3dF8nqhfM5udIxZrMfUmnA6QT15HNUOuHR4bPgnAP8EjZnWsjmDgmizoDS
	 oNNA7kdd5t2RaOZM+l0oBey8mqVRO5VhlrzeQ+7rTQIMlQJgWg+fXGQ87X+pbaMhWT
	 rReoL4dh1GW/O1f2RXXJrbaNe2rGGECqYmracSSQzOxFGXUEzucgUth8F8PGp4I/2U
	 tOuO2sN3y3XLCfXNHTugkJ9pjII8hw69YOlB4YBwwHtE/tL3JJpJ6j+cOeBhCL4R8N
	 hjppye3rjeflGabZq344g5/TrVSIwVJzeeb92F1iF/WADH3ipEGNyK6o9tK+zolGUr
	 EfuWdSclJ6A7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26E5C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177233365.14375.13190068741807722042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dadbf798df8f24b95587cbf5233189ebc9912c6751fd27faea94a161e56624d5
Date: Wed, 12 Mar 2025 09:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741772333
