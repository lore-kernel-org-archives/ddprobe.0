Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5C61292FD
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707208097; cv=none; b=u7vbckFljbwN1eFfcOTqYKbHsf5cxVIl3cUXx9dKfvQCBzgIdbLyWlQKKHai7CnVY/RfD32xyCWV4T0LPQckU8+m/kR6IL7Yjt+LtF38xNmPbDa+RKN7EEzS3plUKeSA0QKn55UuEYqH7DIvjMtvkVpCsTh/Er2lHO7Av2Fsb/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707208097; c=relaxed/simple;
	bh=T7IpsLRTZcrzfLO3hz62rrdl2rxy4sLC7UrvP5biBo4=;
	h=To:Subject:From:Message-Id:Date; b=kM4is5GPBn8xEOYwciICsTdYdBFSS3myxLMHUhZcNYj0pBpWy20NKHTvR5EFbT7xvEILl/jMcSdC8PK44TiCGh2vTA69212LS/1NaI7cvDBZ4M9l5F38Hv0RsdzMSJ23EHNx26In1UrGyfct1BYr5Qm4lYdhMk2w4Yt0UA61q18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDYVT3sW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDYVT3sW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E82C43390
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707208096;
	bh=T7IpsLRTZcrzfLO3hz62rrdl2rxy4sLC7UrvP5biBo4=;
	h=To:Subject:From:Date:From;
	b=aDYVT3sWKUA0tk9vy88mIfID/RFg6wWqFKp9wFBuvnyEwZ0C3ltCv3yLkUxO/fPLT
	 6Z6effxZXF8WhrnFSQj3upMVmvbuvehMY7y76/8yDG6JJJS10GjWvBHob1q6pLhpBn
	 i6oa2RzpDX5IvRVOE+ok1K85v4NH1J3FdxumgGWq6vghAEpBe5LQycq0vtyMk2O7RS
	 V7O8j/R3TKAvTMbqhJCD4uyTPiwoxS8f7fhzrZLJ+BYUCrvMI15rwfB7KA/E78m9s4
	 a7KWFr8I+mmU+NrSRCV0R9eD7YHB6xjQCQBJu2PYujgpl6IcCzy+ubWHmOsFqKnT5/
	 NmtDrP/IEmF2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 698FAC48286
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170720809642.1109.10933973105089378259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d846ba8d7935af3be7ee8502cd69810e18defd4119568f7651b492e3999f652d
Date: Tue, 06 Feb 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707208096
