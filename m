Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A54307492
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782869314; cv=none; b=VUBQZbW0dhngc0RgP9v2XWtiYdQuFBT2/ixAqHpkKBYII6jE8biiSHVqpV2lL4AFHcyDrwT9sq281lvrJuXj0356gti79N2mQpyTIxNAufNiTc8vb1izT4z1UEoyQN4Jlr/K/hRHKoS2U5GIm28e69Lhq5ia90SRHAMbuRnFHs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782869314; c=relaxed/simple;
	bh=OSm2VS9SF2tonzKym2T1CI5gScYwt6Yw+hht/itF1OU=;
	h=To:Subject:From:Message-Id:Date; b=ac2KEpTeTAnWXMp+Q2OSvAhPEHHMuXLYx/xbKN1gE6aSgkYnX7IvoimrQMYeXSz8236yD9s0UNr7dvQoRAVtZq/giW2wUGEv52SD8ZjHEAaFL+gfOiRDksW4uNIiAWRld/1wTsmM8U43429MRJYiQBiSzmyp4QAzrw4HMzJ3Y04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ia6dglql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ia6dglql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C183AC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782869313;
	bh=OSm2VS9SF2tonzKym2T1CI5gScYwt6Yw+hht/itF1OU=;
	h=To:Subject:From:Date:From;
	b=Ia6dglqliDKlXwXlLB+5cQOfu/B2kv91m51PQT4XzS9P1ZjqTBjgjuvSH78H51wV4
	 2UrfTBCMEsOU8jevff8lKRrZa6u/fhaFGxod2otXhl4aTHmjU3hNs2l18JQTKq27Lk
	 /Lwds6u/7Gc4gC2F9nBDtQWV3EtuoxLaNnTl1hqKyWMQqbrAha+Gtfk++RLSkwBBx3
	 mWVfl7zqUzwsHsvmA0XnSNnfRG0fD+JeaAw54MVNUNIAYs6N8mkKVkbLBWfx0vdqv9
	 MXKZ4ikezwBP/3NCfWCCbBaJeq7jJQi7WuQ0CI56XmSAFz0EP9JVAEXGIuAH5hBriq
	 0lSvJeYEy8tRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A952BC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286931368.30530.9497336758378536578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2630b613c2edddf1e3b913008b958e101a46c238c4076436add8fc6cf5dcb647
Date: Wed, 01 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782869313
