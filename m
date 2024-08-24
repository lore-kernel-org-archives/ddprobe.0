Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E41918EB0
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724476554; cv=none; b=LjhwwigL+7oyjWAxPHeH9vRp+muvV592PqyP9H1g5aivy+Cb9HadLH7to2TRE3t2aag5/bUWgfDG7YfQjx53f5NyrPKXAP7y4xMQlIyY42WdxfkiIlOWI9l2m0cnIxwNQTn6yO6Vzp7JIuE/ivbq6DZwschSYXr3Z8wyG3rhm/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724476554; c=relaxed/simple;
	bh=rTqLMX0d1GMfdqazetxOIFDDKllcslJu32LfMMixULw=;
	h=To:Subject:From:Message-Id:Date; b=OnseMxFTJ+bFyVyIOtwzjRduSxoCqVvhCALDrxbCuHuBNjoyLJWYLexX0+JCeeXRcD6pFNBMAT66dgUpZYl/yHhLBmw5blmUKHYD5EvRDYYrb5SyC+XKqIgkQTOtpltCcmphGYI1mE5KSIQxzKT7l7PqT8eMxroaK2aLUDTXCT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvMCS1KX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvMCS1KX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D50C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724476553;
	bh=rTqLMX0d1GMfdqazetxOIFDDKllcslJu32LfMMixULw=;
	h=To:Subject:From:Date:From;
	b=AvMCS1KXAvfrZTwSN/A5cFul0y6oVvDKgO02f6sOvt773058gMw1JLGhHdBATOmCG
	 FDp+cGuSlKXL1EAhXo+BVAQfJyVsHYR9WK9NHXiS/TDuNn2bUorpba1KFRXjYiWnOc
	 IZ98Lfhj9UvnwZE8k7SSt+KGB8T4wCVzJiNQMU5NB6j9OdmBR55Y1q9UA6eh/ox/sm
	 uDZjrvyPN0nkMN9dQJ/btdJSL2G0oE31LNnyZlxH9WyCwLgOAfoP9jhu3ui0mlZGqe
	 WURO3Lmv5jKvnztE64K4EK2pfzp0gjrQM2dQC4dHEP/EzzRbKk6ZC+ryHJ4GtICbru
	 +H7A/DRqWfZpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979A4C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172447655361.1977.8173870965664190680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f64f79035909423145fd6a2a4a66bc511a4673ada2a460a3375bbfb6acf7c471
Date: Sat, 24 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724476553
