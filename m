Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D571F471F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764132174; cv=none; b=B2A3K9R5bYofs36/6rukLiIXzBKa6JavMwUPZXHLl7p+qz4OUL9bHC2qxXTj43OB3ggPAbThqDVK5TVj65MT8/fDR34nOLhBWF1isrUIQVM1mpGaNIyX9Z9qg77WT50/ROkoVkN9sXerFnGB/m3q2OaRpIQNXkn2agY8BwU9c1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764132174; c=relaxed/simple;
	bh=+OraDFNwn/zfsTGElePQNqSLT4EjtL1jb5HqA6P92+Q=;
	h=To:Subject:From:Message-Id:Date; b=HXtcR+Uj7F4N2DAWC0Y7YAT4QuqMWSLAjU9imAvX/p8KyqRJXrDow7kjYZP8TxV5aTasn+I04+vHWT79djhkk00Ms2jieGe6F78lvFKvO4D8+S/PetKElq2osJodBW/cnHThuASIiHmrzi368DNkyGwiaqwEP7EjPbWKOoviC+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diiWnVpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diiWnVpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72DCC116C6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764132173;
	bh=+OraDFNwn/zfsTGElePQNqSLT4EjtL1jb5HqA6P92+Q=;
	h=To:Subject:From:Date:From;
	b=diiWnVpMlitPVgd91H7ikikzCDesjJPYuVkmv8Fxz5KK100GNtH3RlhmBRasnNJVL
	 W84wtox8HtxTojNgr3MjDMPQwZFpeTcDAv7AiavE5a8aApgf3EZcECbFj/dqKmlPBz
	 3VqyWltNT5I/L0ue5QkY5BxRh9u2BqjR7XqHjkEIcI6TN9yz+fog9DoMmfnmmzTsaV
	 0N2SH84qeXSw7qeezohOspytEJYQk1EdvnXmgcsZ0Dd2TAeVQ1GCpErGcTgbjuta07
	 l+3pxTpjujRsMX3IwDL21w82eatONcsXWHjCyXkNJ3gd0j0ldilE8opZGj/EB2uaSQ
	 q1hi7I5s1wVpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AAAD10367
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413217358.9744.9053650779234559428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b67632e31e26deb3170cf0418085a853ced72c660652f0601680e8d9a02b1ac
Date: Wed, 26 Nov 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764132173
