Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA7D335BA
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736345154; cv=none; b=V7+D62rB8m1RqtMyjnoHM57v8D44AbSd/uc5XNXAjik390VjT1UQzKgt0Yv7iHUmReaWqukxyCKRfYLumBj17SyxT4onswD0o2cA82BnUF/6sudkhRhSuY9yvC5SBATZvZxUjg1Nmw+qchN8nmV/EaAKOUnEDidjvV8NEbC2VQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736345154; c=relaxed/simple;
	bh=wrnzz1Ap9fHRgIyoM3Kukm11jgIbtylzo9whKVXfcyc=;
	h=To:Subject:From:Message-Id:Date; b=Wdfy6OrNT0lO45XPBY47OTnuAeLbfK/okX7OQl1tRjo3GgxMaHK+3wYUX+TiZfjshqLoIrFjckcxiI0NmTNm0nY+LsW318CJaLV36lxd7hGxBO8i5ubeGwg2kMNpUwUub2US1g0nV+aVLxenTRPa7MdxgfM6QQsZj0QKBFWfl+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCvjb78Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCvjb78Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1011C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736345153;
	bh=wrnzz1Ap9fHRgIyoM3Kukm11jgIbtylzo9whKVXfcyc=;
	h=To:Subject:From:Date:From;
	b=hCvjb78QeU1fpkIDjwqgq/Pj/u0ldNSFTgzPN/8aeC1NUbd3ORY2NzwtR1rzXclBB
	 mxEqCnZxzHNWN3jLtexIcvuaKVoFZFw5gKh0Cdoz9kGASJDfx6SjK7QuvCpnK5KYG2
	 /u/W1EBKp9DQjJoZFYe9JjuQBBoEIQZXc5j+sLSaQa9Njb3TzeYrQ3tQ9iqzG95Hu2
	 xFr/A3rHyxlyDzKiLWMoyFXX8y1WNZpvB4Ubytw7LRrS1+h64pBYYNyiZG67GHezXf
	 /Ne9aDIQmYbuScrXdgOC9YXiLgwh1ksGoI5tXlnnyhsM1zInTvmbat5IEf1tVa+v52
	 dH+wVfd4Le17Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2368E77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634515364.8042.5497390912662808731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05af2f7f8cc25205f81a118d8d768c6a5a7be1c9c5aba167df3f72b114ae0dba
Date: Wed, 08 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736345153
