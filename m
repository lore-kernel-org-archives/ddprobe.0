Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890F337FF68
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784223514; cv=none; b=AZaKor+9kNRNBOAIGxPPVOBzXpz3d6RAvzaT2PSvT1HTgZeloiC0743mA37SEvrjTEHk1kstYemZ69BB1yg9SmdLY0A3QOCV597ZXwv2egkN1lhvtognxRckdOJHqorRhGFXPCTtRDUpnBX7I+184otaKLN9s86cz4Q3vJxb3O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784223514; c=relaxed/simple;
	bh=5MU5bmslCbdxJL/IQwkmNq09d00l8Ikm9ojUuiIIL7Q=;
	h=To:Subject:From:Message-Id:Date; b=JGTb3F9M9lR0R3kOCcDFvFerg4/IWfp6x0QWyGFH/tfR0sHff1wub6Ew0isYPgjH/vYtX+GbI9P+OrH7fkgPhTIi+yoWPkBY7mYLS0mNsPGb4Suw7ltJPJP28seAxDSs91ZQ2pExZMSMrz63MHxRiS0WGfxfMQftbP6/q0sR178=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChL0tb4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChL0tb4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCBDC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784223513;
	bh=5MU5bmslCbdxJL/IQwkmNq09d00l8Ikm9ojUuiIIL7Q=;
	h=To:Subject:From:Date:From;
	b=ChL0tb4fipQLDahoEmdyg5TM1MFSSRaCL8RHtSDg1ka0tEz2MJjthGi401iPKWacs
	 PoSmVCFX6FCkFEb0mxb5d11e/A9zBECKjckcVu7XTbSF7Q7TSCcAoxIv1foksCPGif
	 XGUtgyQxKthQiwI0OQYwsz3zGP/116/x1Qr7//A5bm020p5ExTAT3LfYSVadWYqcgU
	 +PZnO2CxImwrrUrAdOBTU7cJQkWt6EPrVm08nIMzaMntQakZcYqq0l2yJG493iGC1F
	 +W11dlTx9oAjlH+63t+fJJODAD+6iVG630bYNgi/1/+8lOF2WC7PitKKwr9t3TcQmQ
	 unL4DQwNibRVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0B7C44515
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422351368.6590.2234679033915607133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d69379dac79ae20c82c5540ced487ec797efb0a00f1abb8be03e268278c1e54
Date: Thu, 16 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784223513
