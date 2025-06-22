Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CC81ACEAF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750583394; cv=none; b=DayZMA9WLQCkVbnavNNh+alqGprR9NogFEkxSHn2xLeisPVUGz6oPRwErrXj5RVn6csnT0b+UMSaaZ61LMw3MOX/0JwDUKWWTHGmLz4FruXccR+/Z7irDlw/UpRAyD00UlIZpVI9lOszorHXCEg1TbysoskGBuqOpLLQU5TV7zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750583394; c=relaxed/simple;
	bh=Yk5tXzu1uLGcwMbeMHwEVZAPyaSMWmtkXVTZxG81sQc=;
	h=To:Subject:From:Message-Id:Date; b=fFX1HiW/a3yxWpH/yqgSfZ6+jz9Zo86w9TzOwdS9H68fwC8wlEyHuc8liNSkilGtK9jQIQKWHtX5c6CAiljLhwkXWyM2YlguyXvvW0X2nWweKq9q9To7apR/rTec21PPf/ClEOIevgGyriuLbCapX9bjvS+ZSJNSqp8eFU7Cz2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUbDmHAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUbDmHAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DA2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750583393;
	bh=Yk5tXzu1uLGcwMbeMHwEVZAPyaSMWmtkXVTZxG81sQc=;
	h=To:Subject:From:Date:From;
	b=gUbDmHAg3HORiLHEm2JEsEhQ5Us2jpQLJ0Q7Q5hnjDkb8k9eJ5XjTPD7aN4hBgjXw
	 BocoEpploQnQRX1Llvfsycor70v2UnDjA8MUm29kOqdr/P7hSmVtsf4sGY4JBpkxOM
	 Wz9zMnR3TD7ZYOaXw1Y6F3wUp5wfyZ1q7SG0gMIDHxGBX/OuUtEv7KKatOqqsYLbh9
	 0bqgSIqdZwrup1kzgIFoQQBHEQ45dPPmbX437y5ZGs2DfNwHCmLKAHzeKqxa9nL13P
	 hMArYujlSPAoy7CH8t78CPw29OFmVWVc8cAR8fRqmb1P8HzsFDwhubnz/EmXwdar3a
	 9dKUjQLMbKy9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B8C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058339357.12166.12783999499049947094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48439d592f26d3b6eb87bed3602a88ac00d30d75a164f3496698d2621ab4890
Date: Sun, 22 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750583393
