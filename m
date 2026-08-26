Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396783C1086
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787744434; cv=none; b=lmIsTuiToIpYzgAo9Qi4tiCVUlJ0m8Jf2YKiwcagwuPW8C/03F+RFhSYb3dS5b06pvrUh8rf9rIyJ5Jp4xB/BBuOA4Jo5h5cfjAELpZzIBaSeQPvjjHBaE3QbMDlbk5lK79ZO07ifvT0Ni1qI9DyNQ5gLtk0hVtQip5HAbjZuqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787744434; c=relaxed/simple;
	bh=PKwAUAsDFTq2ihr63aoUB/sN/Ko2AZ8svHEAMRCC68A=;
	h=To:Subject:From:Message-Id:Date; b=WSV0cwWVZTLZ7ysbhz7HCVFkPBY65axkbR9o/uoCqCZ6r6czqtomMaHj6A4hqhfyeUeJQiLDMRTMWNDtRFdS+BbOYxV8p6cUhEda8W15p2dUClkcqjmRcNMUN8nsbNZdsN5+JchJt3oRkXt3eYH/Ywj89GpAEVdR6zQ2RVNCrUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajV6PwzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajV6PwzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED42C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787744433;
	bh=PKwAUAsDFTq2ihr63aoUB/sN/Ko2AZ8svHEAMRCC68A=;
	h=To:Subject:From:Date:From;
	b=ajV6PwzWlVcFDS2YZPtJDMZYrVq5fNAu/PM7I5wTfEIViXESNxaeOflHZqLZS09d6
	 laBWcYXAxBLkElDIxYt/7usPgm5+fNoLZubKeShGTDixhEj98sPJ2jwVo/DisO8VS4
	 ryedoIu5ofdEV9rMuFf8Fz4IgzC5Tzk6VFPXB1onZsZ021hq0qeWxHV22P1WtEmM8h
	 /iLfKKUdEFyJHwDKqZdOjRawOX0uL2sUQ21DNnxJMDX+x/0rcdmdsFo+QEl1hUYTnA
	 1cuTYSnYshri1nRyoSm77EaLuq5N305h3zAfAJHOSl+2ZD1SjQI32aAByeV6HqXKPD
	 YGsdGgYBAzIYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA30AC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774443368.28208.13305557270930696854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5fa26d941ca5df50e2938bbda75cc642685b940f3f940f35f58e31cf8fe6e52
Date: Wed, 26 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787744433
