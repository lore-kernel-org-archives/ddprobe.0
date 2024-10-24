Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295418F77
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729733754; cv=none; b=a6jfBmMwe3Q2YikCo8WJjsxnjNXV//CsXB/eUQqYcGebejDHhtmUbxRfjQ344nGc/8Vdab727wDHRur2/PED5u5M7B0Sh3LwVrvPLJBW7x25nzlQz28Lakz8xAdMaotroSYNxUQl/x60s47M1XZRC8GkclR77IzhgPxCcaY8zgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729733754; c=relaxed/simple;
	bh=pUAKfv21dLY1vLn2EqX7pjjPxIifTZmEiMpXOtYc438=;
	h=To:Subject:From:Message-Id:Date; b=FxCn/BpeKu8D/5eNR4i0lNSYZai+u1tRIF8sVUISq5vBvzoBfBKm1ksp8cf35NHV5OV9Q1MYdRslNj+VyudXSrWeByC66hfhHkd+sNEeAAAkLmPwTV7vKYc+NCVUjgrlvYg6mMPxqvXv8tdEEeP9ZTb4mzGqPVPQ33wGlLC9qsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBgamT1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBgamT1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBACC4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729733753;
	bh=pUAKfv21dLY1vLn2EqX7pjjPxIifTZmEiMpXOtYc438=;
	h=To:Subject:From:Date:From;
	b=lBgamT1yD5Y2mdGi9zcgmoZDN3W+dddCOV99OrXWDOrbVV+RIrGF8l9qZDoEVesad
	 jVCz38NSigPK2hOixEDwI2a6Wi7e/lBqYgdQyE/Mp3kaaz4INKO0eCVRq1OCXX6Kqk
	 NNwFrTed9wgTu3Np4ImhuwYEUJpWm1r4Y2Kd3YdmT5QP1ajMTkNNKBv+bXzHa8yPNA
	 q7PHJguCuXdsU+jZXy5c+gS9BNVGC8W/VAkGmw19EetCxfSDpfDwYC4LIjzr0PXF4U
	 fsQ7dQcNcLZiss8HA4pGyvhDt0SQAU3AbvOh7Kmvw3LY/QAqP4WOcMOX31GZf1TSoc
	 RKwqrH29figRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BEFD0BB4C
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172973375359.11127.4093086532857967764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d059514cf9915e8bbaef2a1e9b7ff8e616b432854da9b385ced6eb56582be436
Date: Thu, 24 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729733753
