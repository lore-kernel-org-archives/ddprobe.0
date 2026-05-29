Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482353385B2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780061554; cv=none; b=PTvRkBaSDxiOf1RRN1Ylbw6/v8EzpV1hKnDgfKw6dTGa+ob+hz7LDweml690xYTw6gF55UrVWTdoIgOavhqa0eQZviHd2n+KyYc8tat67Nl9FLw/ynDU5QNiY1ibgDHxQjiIVDUsSRmiQvKleAONosNdKh2g7TeWAFxilnGGT/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780061554; c=relaxed/simple;
	bh=Km+dh3uqE0O6utpav0ztez0Bq4c0Cki200KoMuYiHgM=;
	h=To:Subject:From:Message-Id:Date; b=q8b7KH/z3J6xIF7e4gLBdsECeZ/YeYB7liG0gJAsoLL+G9lPQbZDuaqsdtYcSD4kf+dl0n+qESdCahdBWiUBEWykTaruHyvS6KEmZK89NKeba25WByzR/0G500A8Jgmw24OYExOFm0miMrJqAM3va4aw2kXHguv2ji1ufj7SFf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cfbn969E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cfbn969E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA872C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780061553;
	bh=Km+dh3uqE0O6utpav0ztez0Bq4c0Cki200KoMuYiHgM=;
	h=To:Subject:From:Date:From;
	b=Cfbn969EOVrKxP4zbm0N2wi32FWjusbPieDcw3eBP/znCzPteB9aHfk6ssoisG8NJ
	 3K6g4ZX2o4RUFR8IUpaNlj/cGE3U6fguDCRvVw5ILZqvAO9zSW4lMJpSQeY9hElcuO
	 eBmUzO6yDzZBlpMUVaWRLrzhSIQ6SRMK40hg8CRWwIq3JWtKtpSMU34h+OCVxyc8Oh
	 F7u4FDyAd8rjcYOJa7OD1pjzdX2rLQypITFSrcVFltw/9WnvagBujDeJI+HUOX2fUn
	 Ck0AU5jqM10wHZBfjzZkumyqOYCGgWO2pMg2J/aZ8/Rst9JskDOMIeCis+9c90zOYK
	 VM2Qy9HIeof3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC9ACD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006155370.14386.7719183881726452944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a21c40fe717cc4644d22c5b4b94f103273e60ccb3a5c0e1105fcb05dd6ea0f6
Date: Fri, 29 May 2026 13:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780061553
