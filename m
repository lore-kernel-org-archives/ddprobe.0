Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3588F38FF0E
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769054634; cv=none; b=GIfyvygTeeD+DTFraiOVWhjzEMNRdH8TpXvFU9xOpThn8rISYHVQ9enCfWX3O3YUn5FiSA2MyhFPADW3giylIgduYwSGxN6P9jpR6IFgLhH9zDACUUBb4KIQDHnyNl9r8aHgbAQ9r4Rxy1H+JAbBuPixJabWoz/hlDdW7/5PLBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769054634; c=relaxed/simple;
	bh=eDN7NSAzPwe83TgmmYOejMgW4mRMDdeJae8y6c/+DFY=;
	h=To:Subject:From:Message-Id:Date; b=aBo6XOAcMsh8oRzXl26Rb5eLgzdW/aleSCKd+/Yqh1pRoRJg0ytlQDnSEyKd6d9lEI8U9oy4XtH12/EZpTFWk5HlYQ25pwfbnKvTodSMWS/zVD2VjO+qzT/48KtU9P1FBEn5iSMD2NI807OdFkSLgkqE6i/XkybsswtdEXJlLRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpczJC+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpczJC+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48E7C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769054633;
	bh=eDN7NSAzPwe83TgmmYOejMgW4mRMDdeJae8y6c/+DFY=;
	h=To:Subject:From:Date:From;
	b=gpczJC+1uKL2VbuskagIY/RqTriRSPyr9sftGK4cyoS+sEVwb7kKYBimhfLNLjQOX
	 sUPNC39tIwoUXmagTzL5jZxgLVKX/nyQ0FJ/F52y3/UD8ZJPb1osYjvwSNM8Fzo8Fp
	 hk7u96JHm8iWbgp4TQM8CwD6HD1G3HcYLQNVHXR7ZAu/ul3bbtgc9vMITSTRtF7C+2
	 pHrWEb93vmRTUc8aGCXzhAbDYiIGx+r0pQptDE6ZQoa9g3UHprHzbm9MMM73AwyRix
	 N/d4Cb/bsWhSddH6CiJgbjl4nyM4Y6ciqnLPxwulLWyfPENFzaoqomftHuXat/IEID
	 Ih1Ak/KN4rYIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A048FC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905463363.15563.4604506638353953661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6ee1150d87d3715d0cba2b6fb6133e5cc8bc2be2c6b5ae493f6cd23cd14f9b
Date: Thu, 22 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769054633
