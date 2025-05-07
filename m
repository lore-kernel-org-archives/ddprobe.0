Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B351DDC23
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746593994; cv=none; b=Qh+SsoIiNW443F2Nmncql9N6KJufRgbODwP0eRNQIRVTKkmkBV09JnDqku6iknLSDBAf3BQeQmNh1Zsu1fIi02k3eLQ6k+HdRVeEhEmW07jHoPl1X6D8Miv+J4Ff3nCtJjXMmq8vlu39TUqWB/GNBBQqmLVKt6TT0VAKbqR9vio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746593994; c=relaxed/simple;
	bh=Ommi8eKzY222F2M/Pwy6opBJvvFfxdS8mzA3sPPPQUo=;
	h=To:Subject:From:Message-Id:Date; b=alz4tqg7ARLQM7sMwen05Rytc8+/fVQ/e3nQlBilnRYE39IlJQXERGaWecNGbhjHcGKaLSsnEn5lEZM51ctvaY+5vzgDgv+XYQseoOP2/9sE9QJp4eCm8rSImRASvNOg521GfJTxgCUCrQC0ao4ve2TDqvk1Jonwu39tgE5Yc7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bk9EIany; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bk9EIany"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9842C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746593993;
	bh=Ommi8eKzY222F2M/Pwy6opBJvvFfxdS8mzA3sPPPQUo=;
	h=To:Subject:From:Date:From;
	b=bk9EIanyGxCO6U1xlHQscRFArO8STHfYUlJriBcToWIGysDMlemYY7mT+dFBHskS1
	 5PH89yfkzOaWqnbPtl+kKgIF1P786yA4lqLUsLGavucXzrp2pKwqMVp8kvncDdUExd
	 WkBR3P4Sr3YC5Mi3ztPQ0jfnRxOLqwgUbStKqylAwhZ0+Tv5cIj87HEnvxMozaBRqF
	 XskPVSUdLpPx0Mxkoh1WqzZiYvXY1QV5y3OrUxtwEjscYOZxVwdkYc0/0u7vHWX59e
	 EHlcZ1X6DjL3tWAWIz+Y/4OD2uzZfNpmcuFVEKXHAFUkGu9pJa2ViohZlBFLi8VhKc
	 L15X1QO5O//5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938A0C369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659399359.23840.7916817135031976189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a4ba9d839c23ce0e1e6fd0731e6ed6c73c640e43d2b4be26fe57d0ace69c25
Date: Wed, 07 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746593993
