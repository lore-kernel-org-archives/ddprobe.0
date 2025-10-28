Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206F430BF6C
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761652194; cv=none; b=TSTCbyMNraF/Pax7z3PcsXF7JMjNeLIY9nyui1X7WpdB04eey9pggkqH41Q9XOcGGH8RKiNX87wsNIrNDsupKVshufgx+bMaBvLhxCrJITSloFt+Sf8xdf0+hSDustdTJI72tJaFr2/nbeJVLOAAR7qKu2SZzkM80O6P1GyaSlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761652194; c=relaxed/simple;
	bh=ngrb4tSpr8jFao6czXv+/TeAG+X9d0rWJg6WOWop/ZM=;
	h=To:Subject:From:Message-Id:Date; b=caGLtGykYI/asLR8+b52y5uNWvbnCSYwRIpUgq3FbMNZMw3ZOvGXpIkOdh6vxASt9AkirgTZpk1RCVYAwvRjM30DrWblhPOY/L/ER6W9yN+2OE4XER3Hhu3fo/LDJsaDocwDXgtxUBiWEvvwxVSg3d/DNpRUNa0tsWwQM1xFMpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtuMnVNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtuMnVNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE61C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761652193;
	bh=ngrb4tSpr8jFao6czXv+/TeAG+X9d0rWJg6WOWop/ZM=;
	h=To:Subject:From:Date:From;
	b=DtuMnVNsC/99I2DBAE3VS5BVp3YpbghOv1EpN5mu8lhORUJUlvXGmkHV1rSpdry/Z
	 hg085QJwBPQlz/AU/LD8rDFOSvOBrkKB9IVpXNSFgOd1CH87qyUOXcH9lMiDgdRX39
	 MegEUoNRevhLYSXgwXHesFfRFlyBqLv92eaN1bBSlab6QuAMPlGw5ea1RBYxl+p+ay
	 smONZVPaf2omu6Z7WCZqxJmpnz2aa+02zAFFLkOHP6orSsA7c27fNXwre2iIRF+nN3
	 rkkFIMOInacofgK0lRq4LEe41B95TSjsSGKRu87nW7yu93n9QOTLsu60c03afyVRpl
	 PzhEaL71OhjLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6ACCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165219357.20207.4208897099541622745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2253a52a8a48692c40f5a819e4681e04fb064c3a7e94c7a39b24771a97e911
Date: Tue, 28 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761652193
