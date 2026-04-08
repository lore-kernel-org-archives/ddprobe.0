Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CB83783C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775683534; cv=none; b=nXFSN4XOcQVhzbrCxVHRFDOldzpSfVrqvRPnlqkJJqQeerB2u9tJquDuitlv9LYg90aItO2MfWezGXce9ktJYC0PZrSInTiitkgFyR/VyQPwPfRWS5jdCJVJZ44RBPp5LTDXUb2h/94hY4V5ywm77MOeESq5Rv4GaEmJQ08c6UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775683534; c=relaxed/simple;
	bh=PAOt0ngeE7ixLziP8labml2Ilvelh3epkk3Rbsux9tM=;
	h=To:Subject:From:Message-Id:Date; b=jGJQrGIUxf9IAG5Mj2YJOsB/nuF1jlvMfYnqEt8DAB+zIzer4CegEgIYmlYBEm75rOvbeyTb5P1JpgHqWD5SUi6fbSKYvTpTlcP3OrrrSrJ4x48Au0vWIFxqD4LilvkMqH5GGFd+u6/3dncuBlVybN29v0hv2jZUUd9ObXCcXyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKt4f0px; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKt4f0px"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3009C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775683533;
	bh=PAOt0ngeE7ixLziP8labml2Ilvelh3epkk3Rbsux9tM=;
	h=To:Subject:From:Date:From;
	b=gKt4f0pxOoZDQHqbK+jCOe53rZjy/XQ3ygBkUBYGnDmWxoh8aVAnOQdyDipdhRusl
	 HF+Rb3f4AtEJm1C8KPz3yschAvWNVOM3BAVkA0cHnpItM+5V+F7JYB4W7fP4ZIWMvb
	 L1+waxRuVvDCvsuF5FRPmcZ6FcVOfUNt0sbRoepOlZbJQuIkX+XWaF/nsiTJOMJEAM
	 A6e6erfg627d0AIRXDpRYqAgSZ1/sXfrwwwmcSd8FUevI6UopKGjeAnsIcLbE227YR
	 p20S/BMR4btlHgS7EqyOUVCC1t6D7tE7n28RLi9fvqvXdsGwRjT9pgo0AAUrV31N9u
	 haPF2fY3ffUFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B053F10FC440
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568353368.2540.17494209049096525677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45b87ac3ad41ef72e94d532a151a0eaadc04962bb1d107517a4c7aa50656e8b
Date: Wed, 08 Apr 2026 21:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775683533
