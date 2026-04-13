Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263F739182E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776060454; cv=none; b=fVd6FjsMHaeKNOpF7FAVR8Yi7jS1jLatbgVY0IwtzwEeyJRDs1buDSOXCV+3LC7w9NWV4AcbigOnYjddWJRVHsAUlt4U0vr9jvqeBqODDHJIifRPDM+lEjhjuHsnhLjpJ2vGt2rA7ml2GGVIPNUn1ex0ml5arQEygm1PBXMxxN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776060454; c=relaxed/simple;
	bh=7DpVcsmJmMZTrfcp3d9+rvVS3uBckYFpYKcLLeswK5M=;
	h=To:Subject:From:Message-Id:Date; b=ovC87a2uLcEw9J9EN0uxLqQx4qY4F42csoOi5FbVp68Sy25f+eOUh4zDvalF5TFCOMfyUgXn0gQGaPvIHFgkksj/oK+6qgTAxcN7pdguqjNQZaxAj+8SY+4H+zvR4yrtYKfSOEHWp4Vhluf5kIzns99IsUxF9UUgpiPTMQ0WHjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afjV9u2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afjV9u2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC242C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776060453;
	bh=7DpVcsmJmMZTrfcp3d9+rvVS3uBckYFpYKcLLeswK5M=;
	h=To:Subject:From:Date:From;
	b=afjV9u2qXDsR5mUFPDvClLo8StFD2Sq8IV1dlm8B/niNnooq7IifZL6TlqgqjQEkR
	 2sDUHaq1y9q3iGRmcVN4uyzu9SVu74k3/L7jPKfEhVOCTlHmNn6+Ffk/9SkhjNuGb1
	 l5X3hi2EQ9Xb6HsOVufnfsm39rzUfu2bNog5fMcaRqnFBYp0WGec0wGus/MMZbSajx
	 ehHSVVkunxP23LidsYAigEQaSTvDCrVKt1RCeCaZbvxkl3lTFvYtrkyJDdAWyIgl5s
	 lQAttvSImHV0bDtz+DdCG3wdaijHhLcXDB0OLVLpdD/9dgXDNl+sbSw8doMO8UX0uZ
	 rOk6h9QWkqr+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F61E64008
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606045368.29292.6562158339469195011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eea79cc6abee2068bbdf9b541089e85cb6c401033486c60781930cd8e02ce38
Date: Mon, 13 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776060453
