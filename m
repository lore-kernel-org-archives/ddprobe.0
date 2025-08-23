Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EA31D8E10
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755986994; cv=none; b=Uy519Ly0A0Rvymx35Rjwv1rVINAx/k1cqjXQt1DDuChfXlOcPRp1/TIoVRq9DcctuLI9b65myvTH3DhLpSOpHmng09G3HiqrRNn2s6NHtK4HT5zdNewRd7t5FWU08Cm6xggDzc0ZoMQwgEnlvhoQHbSKpXSUvM2luyja9mkbVOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755986994; c=relaxed/simple;
	bh=EIspCrEu440lETK9vxbFDzZXzJvk3CFRp6T/MbNTJGY=;
	h=To:Subject:From:Message-Id:Date; b=IIYYECvsDl4QV46AspRNcxl0iyJ1Qrv/z+5wyZw0XTMiJwoKGtoFWQIxAlvcXPvncl0rUDQ3mYevsL1c2sGS5eQLaSuaPPVeYc2BhDjjCfrBTu9qpTiiJMVVKSoE2/ZLjtnJNUf4u2Gvg0sJ8Kg6zsHXqozdO+tUnQCqUKs+KCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFJ3ilun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFJ3ilun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6946C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755986993;
	bh=EIspCrEu440lETK9vxbFDzZXzJvk3CFRp6T/MbNTJGY=;
	h=To:Subject:From:Date:From;
	b=bFJ3ilunDaDIC/LGZfH5IyY7HBjiM0U+BM0OWHvf9v3S+WZgHIbFAWhmo1YpObVde
	 Xai372R/52m6UNwY7M3Hkub+jhq15a485pYmlK58LPdQ2HygXUFoYgBT9AivM1xLib
	 d1AM4Q/y3armcCpwwjSGBczFpBYOAW884A0VhsNxBcfhNG/i9Is5x1zrTriTfJjLTi
	 mZyZ6p4uVI8kWf9UH5JjJtplJMoxyee+hW0yXWwxxMlbs7QpnXsFcO3t5TTGfzDMsU
	 QuNkL4FDAgiv9/PKH8ZItVBFQq86Gs9OpH/bzVszag8CS63lrbXwf7304vtQxyGwwW
	 +K4+kP0uRT+nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D82CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598699357.14845.16417203900476811175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2804a81abb4d097e8593b22b7665d8c4cc5b1258ae004ff2f0060d724407da
Date: Sat, 23 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755986993
