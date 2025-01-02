Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDDD19CD19
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735809354; cv=none; b=otLtsABGfvGjwv7kbUxMC3lBY1ecx81QJk2Odv8r5JjuivdC7Ev4at5x0Obv1qartHkhcx8SxTjpj1AY5FyZyOkYNqRASlYPUMS6pWwsvIKtKHme0P7D++B7JFP9uUHD0DzsqZuS9YBjsKzePDJjYNudS2rMmJNzncCsEGRwYW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735809354; c=relaxed/simple;
	bh=CJIZTSjTsne22lHWniYY5rRAosbDqNdDHe4BqVSi8CQ=;
	h=To:Subject:From:Message-Id:Date; b=nCUWzkm8PVaEfc9LZE25zE8UCI7Gxtgz+ywD+1WNmGm2PZTg+2M3nsiLuOLMn5ZOGQZKAmWJc5PY3l/+xf9okG9SrX2jKzUfZ4yL5Kx7u/N3bSxIPnO6JcyPy70QoO3O6ftgcNoFe/rn32bsJrIAOCqlb7JcxcadPtaAm2xKCb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAs9fhWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAs9fhWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A883AC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735809353;
	bh=CJIZTSjTsne22lHWniYY5rRAosbDqNdDHe4BqVSi8CQ=;
	h=To:Subject:From:Date:From;
	b=UAs9fhWjsOhdOsDONeHeyl6gz3rJ+DY7apmh33oMVjBaWSz5RLnvjzmmJoo1ADKm6
	 XJLwmCgm5yJGQHosEpJ8CE3Q0FwlfBPuz4m7CtbIMbg1tLjSRUmU3BWHkL1fSSnq8y
	 jkMfDdS5kMO7SH/st10w238om4AqTe7pY+WjJ2TPImWztPa5pXPO4d2tdaenJTq6po
	 Qu0oIGRSXOHT/1STo7W7f/KO4q3YTMco1rNi9vovMy1dYjTbjSxIeB2XsrMjL2tDA8
	 8SOnIYZfslmlQ7k5WcLZCuq1aPzA6NOfPFT43NNe3e+gU8qUIkBZ+pRQMISLIU0Sh1
	 Q9tOzeERJ3kQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95832E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580935360.8847.656873730670037693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54edfe94a740ae570067fd0093cbc4567a5fec1e9417d5b2c844d5bdcf816734
Date: Thu, 02 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735809353
