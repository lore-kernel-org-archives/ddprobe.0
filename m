Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB442EB87F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775241334; cv=none; b=SgeTs1JqGPQM9fTJgmBRtb+n0cJEVEGW/vTVIaVorx52YhDVSI+cjtH1Nj/yKgmQpITuA/oojpGampvhuxwmR3bIMOCW4hUBUBJSp0iWzUL7T9vBCMJTZ1WsUj8BWDF9+ZRvNDrrQgPL2f6riK2fWx+a3D8JWU/PQ53ezVFokSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775241334; c=relaxed/simple;
	bh=wOsFmUCygQ4mJrNdGG3I7T1ctwBgq7V0KsrtDiDORfA=;
	h=To:Subject:From:Message-Id:Date; b=i0wwswzYKaYBBkoJazAFtiR1X1h+8ZiKPqPmJPemmDDNd3ti9N1t+SzGimiGhZTJMlXZ91ZZI0icqdgwAkuiihhLCZMzfpuldWbFP9bhIwqU2MU0ILXOMot54cmdL/WMBhopfa+KplkP1qMSuycasAiM+qXQxDy42eEd6uOcBw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VF1w1n63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VF1w1n63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2ED4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775241333;
	bh=wOsFmUCygQ4mJrNdGG3I7T1ctwBgq7V0KsrtDiDORfA=;
	h=To:Subject:From:Date:From;
	b=VF1w1n63ht9sMHuLpcI50Psa6qkU3gmMrsq1qE9HyNlp6H5LIPRX71NYDD2ykEsFO
	 hr+SEJJlcxRO+h7X3L+bcv9MCm7xBnEUB8ZQNQeL5C4W1l+jQkMxvZXFI8LL+1oEZ7
	 WnW7e6y0N26IPQKV55C08+eWtJX6Mpnpo6E8jBmqQ6anN8VJpUHS3yFpEQUvxj//5Z
	 rV163WnTi2tF3iJvibrnvS6DpOvPazbamZNBrfrTwWhFwK1t2HMvhylUlHVNfPBaPE
	 ZIBY6I2jhCdba7En6Ug3GXR9B7a89RLb7Y2PvxQQlkg2Gu4oLrFshELfYE5KMUUyHc
	 WUfL2AKJ+kjxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23EEE8538F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524133369.19396.4507258596582056209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086f725283716e87c2273ec78f0394bf1f4100682214d0347c3f3cfbccd38b38
Date: Fri, 03 Apr 2026 18:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775241333
