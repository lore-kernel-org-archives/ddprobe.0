Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FB34A0C
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775094934; cv=none; b=Yjzxt+Msu0pdf4pRIRw3YEIIBA9NEaxzmPgkbOejhgVz1YK+xzmT7Dabl0uVBc8j4x7XDjyZct9MW4Y3Jy5Ree70Du4+VQ1lUFlviETT0O5to6eJkusEGkczP9zkLygb/ra8ATXFfdWOqae41VPVX1xLGlg0uQDciTS4qKU3158=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775094934; c=relaxed/simple;
	bh=lJuxiLTTYUmL1+tsBIffn9vFK2tuUw8c5g+E9zBZgek=;
	h=To:Subject:From:Message-Id:Date; b=DmdZKDJySwZI6SBUo1ZWHvsk0xWtClu5uzEDOL+i1+LSyLOQCSPsCTkpLjfe0RCq0XtR++0idmCMIqGmxzZ6IuR2lv1vzguqnuCq7F41PCbOQZIcEpeZMLyv0Ecbcupqe83FsSGid496v5M/BWNBuSE+fiBv86qW5XOVX1zsaxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H01/OP5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H01/OP5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5834C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775094933;
	bh=lJuxiLTTYUmL1+tsBIffn9vFK2tuUw8c5g+E9zBZgek=;
	h=To:Subject:From:Date:From;
	b=H01/OP5Zm6uKidFUBWQ8uqcqXLsNOo8iL1M9xkQLD+biOTCH8W9tqTRrUY0eP1mkb
	 6et5Iagw85l6DGa87isRiRLDk8eFIR8C3I1IgiSuicO8E21n+7N2x0gjWBmk/OcG13
	 HMRtjqptusAOLXRwALaCg2UXT8D93ObyHY7w6jykuTX/oZy+PjwbvLGpZkt5kTRWDJ
	 P5+7NH4dLUkX1UP1lI9KlkAMbZQ2ffyHucVGsOiz3HU+8jdzBPdR2rVPSNMk983qOc
	 yParj6rnmL66tTFDmnF8e/nmHGxIyIWitcJtM3zlRN3B9iT2VLTHJtTvVHcN5/oaG2
	 b3J3Jxj2HW2YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BC8111224B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509493369.6671.3587297511255228626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f889eac5bb78447b0153bda8a4d12f5034834b95184aa5d205191f3ada9434
Date: Thu, 02 Apr 2026 01:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775094933
