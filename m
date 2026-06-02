Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEB13F1AB2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780416274; cv=none; b=Tv3fvC5v3O/SnVWq8wfnJHjerebOf/cN01+LRSw1MSzSBDL9St30G0KcsXsTwR2L6vHYI2nR+JVPeMNTrunbUQT8+sqKNPmRe2aL3TaRXakOqxsekHUzwQezGhI6hvV4mabIAZ1eQ5lPOvJSoIDrXmXJME3HwsyZ51HpbPAdAlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780416274; c=relaxed/simple;
	bh=Ibuq3qmxnJfbS3tg0hUq8SZI2bGZSONGggoJsyusdw4=;
	h=To:Subject:From:Message-Id:Date; b=FE85+LCIdiX4RfXSRY3Vggm2e1io1jCku82PMXqw8NsDQzEdXtCOtS6J98/8FWdhtnPDFioIGWg4dceuZXzz4oWDZZxDEFOU5VMBhxFdOzLN6gOTW6mL1MFGnYmrGzGRl5wg8J6WW8zfP2eG5gT8B5nEXfk/7+IGXCghgj1xJwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDO51d/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDO51d/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3541C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780416273;
	bh=Ibuq3qmxnJfbS3tg0hUq8SZI2bGZSONGggoJsyusdw4=;
	h=To:Subject:From:Date:From;
	b=FDO51d/fEpC1Paq7SZMr+8Z0A3nWl3X0cezTALWe26Yq4myiJOO1AVc3kg+fYOP5J
	 MTghG/wM21BRAtBASEhr5UmplRY7tTqlOnGojhtNuAdFaH7bAmIrcYdgigfsKitdHA
	 jiQVRG2fb6ZX2ErvVzu5EJy+FVXJ7rqmzQ5ejlmj/j9Ul6VR+oyQMvzMTTw8ZDWMWY
	 KByrdfr5ppcB28bVk4phoCL+YQ+VDysaQPBI0ijUZlvqJTbwi5Q5IAtQP2eq+wF31r
	 kQ4A/cRl7/Vkrxcfu/KtZS3LGVSIYt7MxquGx40f6EzTwhU6rxdVwkMSp4y4NOHL2X
	 khG8qOI4fBknQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7D1CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041627368.6267.6563515660705583754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13554c880b4e391031e0943930dc5c1ac725b2d99b1f700cb9bf466e537467ff
Date: Tue, 02 Jun 2026 16:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780416273
