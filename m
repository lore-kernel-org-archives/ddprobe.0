Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C393D38384
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749047393; cv=none; b=JpQfPlqdE1I5F/v1DREowKPzbXrmB8Ts644yWUvbTBnPlDhE+d9sw9L0LB6ZVYQA2hsjsqWf0vYpNvaiBdKEgGbnx8oscywzAzrlrkNF+V+phLubsw5U37MuR2EsNlibarl6zdPZYOaMZXi1B2Exqru5/xHr3yazdB07zmVnRpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749047393; c=relaxed/simple;
	bh=cCYNr/zOhNFa5ByTP1L//5ky79WMUa+5C0JRTovzAXM=;
	h=To:Subject:From:Message-Id:Date; b=Pl4OmW6GyZqpd1t48i8CjB5hOS1xhp4RSuTsBeFQ0iwnsIi0eOwqVTsG885RkW4+O7gMNtnxOrtBHfgFwNDWWJgmoRk95E/GR7qy3iynn35m3j8s3GPqqq2DczfeyCoYmCXk3WpRj3DFqrai0i7EzmfQHnm0tB8UtNw+fQpxt+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgTmJnaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgTmJnaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E4BC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749047393;
	bh=cCYNr/zOhNFa5ByTP1L//5ky79WMUa+5C0JRTovzAXM=;
	h=To:Subject:From:Date:From;
	b=VgTmJnaC4WpBQawrxofaKnaNBDIesDlSqvcDovJ+qSh4zT0mFPOtkDAH9LCBhBSTF
	 cb4EncDUt9jpOhWwYSRb9JcbFrJqOwVwpR7m7QcMY8zzRKDbJvdlz3BBo94iELfIUE
	 ggo6GvAf338oZvTkhwXs4gFhLYd1VmzLrZ3tXR/IK+Mkrz0HO7FIFGMn4dbUHJ/XTa
	 DAxmcIqCnImm3v36CZO2wNry+gQGA/HwAFk+SvTBZzxZr7Fdhx861jRa6YwLnbLgr9
	 BIbCRyLsZHHtvqc4dhoZdzRtRFstCGrmFvsgeg89C2xYnaEdRfrD/VOKm5RbEtt9Sb
	 wQ4bPdniLhyeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9053FC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904739358.12295.476030167015253079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11593efda9c335bcbba3668de499e9bfa597a948aa3dc99dd84411b7ba29448b
Date: Wed, 04 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749047393
