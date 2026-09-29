Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5170F3B3BE2
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790721634; cv=none; b=Thz7UnHvleRJD612HZALIokoRv2zkUqatXQGfa++QOG/jRHqdTL8q301WKdbINJrwapryOjx7/8FqiRYPOfmEbzQqIkpMHP5TExFZbcwDTfgxoimxI1iV1wVKbAIEm5EqAwKNAMGm5kWj3Omq2q8a/L6XKAr7T9u7duJ9ucFO1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790721634; c=relaxed/simple;
	bh=qyp20Q6KlKSgLgYRcFflsGZJSQp+I21RaQ7jBi/ZQO4=;
	h=To:Subject:From:Message-Id:Date; b=JSrHbyi06zTqKk19IQW0YR08ImzNulZRlEQxO9cXROuD0k+39B0qMrZrmEcnh4lGxncwqm8MlZApNZ1fkYMPIZKY5x6E95rUAXjo9+DwgM+w5QAOxBBLGgJAbWLvvm/fUswLEOer9wSRaQMC/3EB3gkswwzTTk+S1kPHyinIRFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pn6BRpyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pn6BRpyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD584C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790721633;
	bh=qyp20Q6KlKSgLgYRcFflsGZJSQp+I21RaQ7jBi/ZQO4=;
	h=To:Subject:From:Date:From;
	b=Pn6BRpykIAFD9TjlwI1AWKA9j62Goe8anAJrUY3VPJfM6jabSR/9SvyEyDs4uFEmL
	 XYpRnWH//uB4ja9rehBRRb7gOlvHkVv/aAFzCCMiIbzhIVSoHegcPhbQEnStu95Oah
	 RYEvBn9ioztHJwxfQ6ZBbcsV9ySAw3xVT0WsTIHNEIjnTqllX/Nm9twXVVIhjKcudC
	 KPEZYT6sbSzQdKd7j9jM3/BVJ1FYfZT2wQwfHtloGvGiCmCbJVCxY93L5JH+CvA6HL
	 xjlZmZ88YPFnAdoRLnNu/EdXozNS3j2Il0PbLvXNcQB1EK+T/HO91liRvPScMMxXht
	 QDGhdkFbW970Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BE9CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072163368.27781.17518954292980483788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a20109835756f57c6f22445b4cb99fbe821051bf17ae654080de26b0e420dc
Date: Tue, 29 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790721633
