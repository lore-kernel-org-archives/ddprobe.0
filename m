Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2536C19CCFC
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760599194; cv=none; b=NJYsRY0RSt1M0D6JnfTnv8mMY8gSdQ7f145r97PwtS7m8P52M3+FCXdX+qxXBr+8I22QUYAk5PVUkimXpYXlIoXX4c1E5I3vs3mBlX8sL+FpPCES5noOqkzfdrjENKEZRk0/i4k3WT7dYv2ih2AlnEWGGGPJPjL/ScwsS+p1aGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760599194; c=relaxed/simple;
	bh=RodQNs7RPV+80+DudW02SbozTav5MgFQ2jDYIqRpvts=;
	h=To:Subject:From:Message-Id:Date; b=tjkItaWhawPaWU28ismcYpRtTFiNKfeC5A/CKPV8Li9wFi1Q1ucnJrzJ/LsfGFlALHUeNEs537Yxn4RUOfmJNUw/LrLxFRBoyw02ROvtuF4K18CBumnPS5HZca2E1pF3NXqhh9jELW/+C10uFn5h9wDOllJOfn3MkDGdCElYOSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8P5dcPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8P5dcPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00CFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760599193;
	bh=RodQNs7RPV+80+DudW02SbozTav5MgFQ2jDYIqRpvts=;
	h=To:Subject:From:Date:From;
	b=I8P5dcPCkJsl6B+v1zV7tGGU0ax706PhWd3vYMngf6YFLn/RveKN42+DAibV1gio2
	 V+8Byf+7NSdOi3T4hecoGxY80m0TSCNC1y/2IWWcJCGAyh6/k9uPhClG0q7Vyvk9yv
	 LX8pS0RZMSSf0uU1cAzbdYh1dSeBIOcmVf3zlKhWfhLqzkwxWKQaTYUnwkFYd6lkv9
	 YAGHcJmoP7P2QPP8SzQYH35pgCyiWhKkG6nrD+fRG5uV0LWiAzVfO+SFZ7EO7//4kN
	 1jgQYdnWfcTkTUdOUaz+1zGGHCsa3z9CfR11YsALkjwKHFVxHu5Ch2bWy7LEz5P+/P
	 8n7Z1xFp3aFew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5FBCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059919357.30608.1047054162072431399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5333ac7963d0e62276ab5e2c80481327c238d129fbcbfaee940c99880130bae
Date: Thu, 16 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760599193
