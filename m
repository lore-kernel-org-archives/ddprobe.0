Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146652DEA75
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772912694; cv=none; b=iQo/v6Q7YLRkIlcuPI0ArSoU0AlyUjxhersLZZNWsEg6BtYvqTDUz3k0zW/iRZnA58ASWb8+Y1gGys8ytArHRWRDmM8C/6nHvdilCqelsuMb5bSI6wPbCnVV0huPVCCyGLVkDT8djIsl9qcosKyUltFVJkGYPj4W6O/p8HnJe4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772912694; c=relaxed/simple;
	bh=v5NFkMhFBhePMTxrTj8naEZU1NIIRarxHR+5t9EUVyE=;
	h=To:Subject:From:Message-Id:Date; b=bhQpT+sT1TsUubJsojt1s1w4RF88N6RnhKVqV93HOl1lJcHdpu8xRZZSFMzV9CxP0mvJV4JgTKEtpO+V4GEH9XKv4XeznffhyDQ6CexnLdzt6JHzgiTTWYOB4sqK5pFKTnCSQTdttCfR4Tyfk29tSiwSWGlGjARFbcTLDwkZVGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHA4f446; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHA4f446"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D1BC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772912693;
	bh=v5NFkMhFBhePMTxrTj8naEZU1NIIRarxHR+5t9EUVyE=;
	h=To:Subject:From:Date:From;
	b=ZHA4f446EKB3a/M1oHltFubW33D1D/pAWy3ZEXEZpvXmEIfUChzd0UmkiCikIwYRZ
	 sdWeWebi/x2+GOCS68yqdiV5jdVcWz9za1AHPzxzGtUwgSeDNei7qcZQKyeocIo/a/
	 VbOyibHDaXQ1xg7mDyxlwn8mOjg6I8cSCtgATIibbD36Pz8H2Y0tp6yRfWhXCJcNCp
	 qql7nI/AVa/dDuRg1dbvrd+0erJY0/gqVkN3et4X75GMtPKpTFFRbF+3StwSdF4NDA
	 vJLy52JpU/QL5jsTEyTUTPPnFmuh8tbn3yRgOo1GgpqNJ6Ud9xQPblAz6XZIHxkf9A
	 SO91QWiTAFNow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B91F55102
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291269358.28155.15677481264900384152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62333228024731f9a085dc0e1f147330557f9c20d6b27b691c4f0bce2d40eb9b
Date: Sat, 07 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772912693
