Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3572016EC08
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 15:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719329003; cv=none; b=iF2wUsuq3UfzR28c4kuasWTiRoNFBx8fP/3+jnWnuO6LWK6lhFsegXixcP/emDAd/XQW+9boMfr6qmaEw3SouodTb7Tm6uLewmKL9MOKgEC3ElPWIvl4G2ZsN/vWZj6PgXjhrOXt902plwGBUwUfuf/2nnRxE+aCttA2jCtrqa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719329003; c=relaxed/simple;
	bh=0qWtmlmxEyeWG2Uj4ARWxY4J2FKPwcj+ERKPdCMU5n8=;
	h=To:Subject:From:Message-Id:Date; b=tl8PB6hpxo0tqodPWAIA6bdk0U21OWfxZP3NhyYsrF+Ivdmon5/grgOoM3/+IClkM9ZwPiTInDBKM94Zr/3i/6MbBqFr/PXBhRVuUVoJh5xN1hkObh98KA1/X5F+IN21nFxOTg/zDgEMY39o3Ty8NtQDguXEiO69JgM53Z0dS98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ao082g85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ao082g85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF68DC32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 15:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719329002;
	bh=0qWtmlmxEyeWG2Uj4ARWxY4J2FKPwcj+ERKPdCMU5n8=;
	h=To:Subject:From:Date:From;
	b=ao082g855G66vZ2fTqZTKDN0wF+ReBLqsCZoIpPkEzDf7KOW7Qcn+Gg/4hlUB0tKw
	 j5Xhdk6EOUiOzWVkQw+Rw9iVjFN829re9sBJgv0WFDakFBlVpIwcaUbBn01cbliJCX
	 yR5OkHh+EU09MmdbD/CzGRnrbG8ERzozJveeIRzfe8DFv9K+pwmrWsIO2afnK/g4Id
	 xVdFmtJ4Fu2slnHS+w91jcRyJgK96+MfU2UNzff8Ra7SDTh9DwuC0E65qXgtxGa7z+
	 gB5fEYiHmkNF0pO+XgbteWzPoYUYnw2GsQluNlnXceCV2/U8AiT6B2n8KvUtWA3EV9
	 FDLcFCjxdr/1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAA0C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 15:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171932900276.8646.14606234782552004450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26540281bdaf509d4487828338941836c9b9e27fbc5c6e5eb02246f675f4d4e0
Date: Tue, 25 Jun 2024 15:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719329002
