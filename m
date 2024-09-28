Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343661CA80
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727553354; cv=none; b=KibNIvtli+WWXRqOJTv1KGRgcBecrp6t66xeB8RTZ/3zahVnEPQLD+taqaAjeHdRLJR8EmWj9+RqqsaKYc1zwnI6xIIZRNq6eIMr2HrxrfWShcq6qGccKoN8U1Sh7n9kgO++GKoei7d4eZGt3WQfcDqYTOS8odou7rpOZe5Lu2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727553354; c=relaxed/simple;
	bh=iyw2lfxIqduE4e22ozTtRJZDp8KFl5m5jh9AjicelMQ=;
	h=To:Subject:From:Message-Id:Date; b=XfOS1mSxwmzd4Ij6vf27J5U7/vFEiLAWc4+3nkdNTinTRZF1jJI97yiMc1Gv0YPwlp+RqaCWbkAqwl3HIijG6QGR6Mi8eNsHrkVCghwuvlnqM4jMYw3qUj6OfmCaTtBUXGtbpOYY46HgeaifXTuRfj5V/lKbzrfS8JnHmMpSa0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMq5JGcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMq5JGcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E13C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727553353;
	bh=iyw2lfxIqduE4e22ozTtRJZDp8KFl5m5jh9AjicelMQ=;
	h=To:Subject:From:Date:From;
	b=pMq5JGcMX2Yl7kajiOghl2R99kyV1juo5eZR7xz+Akkd3diiM3BSz6td3KgL9QXh7
	 1EerGuMK+NX2Qw5KgzoOcrhtp1X6py1HzlmKsCLlJPorB+eY2i6L4tm6XQ8ygRYEpy
	 nJpv8d0weS6nokpb1IxLbvwKeQvyHv88b8MM1EOdHTrOG//QEniSEbv89RKqFiAnJV
	 x19LT41qXDwqdM17eb0zmDBG87qYmvxIf7omJT5aDuTMZG8/rUeOy10PPrqnnuFwop
	 iRi85iDA3Kyf/Xe3taxneLQ9uYwGfmEjVNPwH/pKEChPL61YJQfltSe7PfjrR6Gvqa
	 ALYTYMV8sGbvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB41CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172755335364.30158.16483449431707148168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efda9b36da2011c2f80e8803e5d0c8265f30e7b7bd730d8d6487f615748bf5dc
Date: Sat, 28 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727553353
