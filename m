Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFE5222584
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762394994; cv=none; b=Ce3j+459UNxt6LOMhigbsG1XC3MfmOH5g1YsEY1K7mAtsppfHggmO+SOlfVjAQ1gSFEl/aIfEJNZNv87mZr4sK+wzpyUd1kme3oeeVIeyM+ubg77rCZlBXmNVAUxnEreVww3vpg02ip7MHoOvdJ8ZOhHsl3FwI5Dl8b94xYZMzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762394994; c=relaxed/simple;
	bh=CWDoxBWyZ6R01BHRLSLg2ZiySna/ZhfcXo3DvxTgvnQ=;
	h=To:Subject:From:Message-Id:Date; b=ADlMTv0fdpY8dWMPtiOgxwDfPY34ERO/GD+kxHfgICPc2x49ONg5N5rjjV6c9COA+kTZ8VO9NK7QIq8A6+icxRIaoPRFaAtmGNVfXa7pAx/60DcY2BF1PSXOGZNmnyZcJRve9oRArcy4oVGnbytPnCmSNr7olPByS0L1rxBWd7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0uNAp4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0uNAp4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAD3C4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762394993;
	bh=CWDoxBWyZ6R01BHRLSLg2ZiySna/ZhfcXo3DvxTgvnQ=;
	h=To:Subject:From:Date:From;
	b=l0uNAp4UnzKw8ZtC4AtjZ2VmdcrHErgS8WrWapHuH4/akU3Fg1f4hGl408y3NcFlc
	 yhg7UxAX4TDjAGMPOTp1i4IKkyH4iB7YT9WtYuPBA+oUyyZO9SzD2JWPOaDS2pX4Yl
	 94AYTE3idphgmzjyXShNolka7r2AkBPzuu/yDCZzu13gyJH4RIW29fOh4ucRTi40U6
	 NXYhoCTRsQce+Ib50KYRWCysWGe5pKI9CQClzyn1n3/cF9xeaVNQGsPaX1C9kh5Mav
	 YFqKBzbkVNe1t2hyprl2gRScWjvt523WbXrwa1xIN/T8SouQRZlJ/cQL31kaWBffwG
	 +jxM86M+r4yxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C0CCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239499358.18196.12368619356706586298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cddffebb9791e69d0c903c57494cdacc573141649646c97e472df6c621470ac
Date: Thu, 06 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762394993
