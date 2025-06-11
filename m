Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C1A2E6102
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749670794; cv=none; b=FMUYGGRQUoePVlRPRwKwjy+S+elXDlwqwH0EPr8E6ugI8A2HbmJQwqrYWbnNyFCDFEzV+YMx69WfHaOJPYzQ/J9bRIvy7SFORnraflQrTt8a8PlklaBiU0Nyc6OKei5PJxymKgNXX7gu6bwhOwWpP84E7d8JqgfJXTelELU7xZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749670794; c=relaxed/simple;
	bh=2id5WzmY0lOSZowFghEIKVZY8zG6qk9Ac7LcHY5w3Go=;
	h=To:Subject:From:Message-Id:Date; b=XQWz5Yn/AWpmpvsWjQiqnfAi1z2IZl4H6ZG2CVxlcfbraemsrKGLN6kH2x6d/XPKGtPUS2TvXAnhy3fJzropAIM7PVW+O1JUSESPDk00ubpaamM6rt3YZ/r/ui8+KeFZLRPerF01TTEuP3wK2upMAcJgonMZuK27RoM2iyOrCJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMrD5Lms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMrD5Lms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED2AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749670793;
	bh=2id5WzmY0lOSZowFghEIKVZY8zG6qk9Ac7LcHY5w3Go=;
	h=To:Subject:From:Date:From;
	b=HMrD5LmsGShGasejks4yf0lkDd4qYEEwm6j5WQieO4qAjAXf694nQhWfjUt3FcpyX
	 JYOY6OSIc8kyA6EWZO0SmYxfnKf1Mok0f+7ngA7ReIExG/5FPQuljkJN/uxdo+yjU+
	 i8wNU1dD7mczBGCelBpTI+4VigAMAAVuE380WcRU376snipJzfHvyRLCUwsRH+s7v9
	 cpwx515748D3kCmy2oDFz+n78xBV5Fo3GS1dmqBeUKxRl/4lNpmEAlOyz4hqm4Mwuh
	 PZ30pWQQfF51oqP+KLwCDB58TM2LlnCUbiGQp6LQnbnMMaud8SIXMCjb+LL3HqCFvv
	 6N2nODxcuecig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94426C71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967079359.24622.14046432989633131302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e0e7da0853c345204fdde640c27f7da4a88b3baae0f538d674d774014388de
Date: Wed, 11 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749670793
