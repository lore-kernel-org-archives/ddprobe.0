Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27064280321
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748938194; cv=none; b=B0BZKT6EcKNHgkZYiXSdFt3V7HS9qM3xLObTm74jRk/G/BGMfSad+Kxj6209A0c+R/Y6vFzybuhWZ/oHzLzxoHCeCRGM1K0qos6/JyvT9JqymhHQyWfcVl2IREZd1UrrShCurT9gvHpctQZRjWS8IJ/KVkG+2qZOMpogg9DU2Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748938194; c=relaxed/simple;
	bh=u2C2t/SgrWZS+6aKU/Ngzzkm8gH3hCrhCJ73vW+Vuhw=;
	h=To:Subject:From:Message-Id:Date; b=CSV03mhmTP5qaBaQS6CAzMlcGjOnrfBh8mT2VFjbLDB29BLlxIpQsi3EY1jDnSh8x79pgtP1NoFCeyb9H/ChST5N7ejJGY6/PI/SZixvAfBOiTqWkL1Qe5wcvTemFqi3QlNEr8zfeQjj8uN0cXljMnv1qodsPQB2ePBdj3CpP0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRyagyPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRyagyPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BA4C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748938193;
	bh=u2C2t/SgrWZS+6aKU/Ngzzkm8gH3hCrhCJ73vW+Vuhw=;
	h=To:Subject:From:Date:From;
	b=NRyagyPGaNGjbGiHe/9IsRhkVbp+ALdCBDI1Cbi/sQgOnRuYdR1wybb4qDHkP3Hu1
	 sxujeN4t7Ptcvcyx6MNb0gBK68XRywhmUuOrUulh6FjKZilXyCO4zme+0qYL9XwMTl
	 fvI8Znj0+9/65n4nkmow/t1RdZv+5Qcz2piNP+XQPUJss30LBxQhltOf8NbuAnGHC7
	 Zf3pQJkL4lQCegXQ80qQ2mTgW1qabD/giOqX76u7/gRErk4Ukr6xSpwpKxFp21rTwS
	 eV2dN/5K6Pe0jOdICjxf289IlF/iiSCu4TkPA6WehoWZM6HJRCdHehJALv3b/9OMM7
	 kSv5a11p4yBWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA1C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893819358.25945.729568038566340623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e218ead190e0c52243f3c86916d45c9dd4471dc35336c32665799e741f22a41a
Date: Tue, 03 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748938193
