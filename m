Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E38D30E82B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791315634; cv=none; b=jh6zSQczC2qaibQzzndvFgtAdTOmPVtY4JMnZZtM74mWVfljj0gm5SbzTqeICoAytlSuyNMZXALdlp3gGBmax69up6ayIH7M3rLYJpYYdKTN47i15xk/U0u9HieCLs4AHIzdv25eLmDQ36Dm1uo+HD8UzYkHGR8TuZgU+GXrBx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791315634; c=relaxed/simple;
	bh=xJgxKbwh9reNhIc9r4oOcqvQ3YdoN9SeAAEsYSHOhL0=;
	h=To:Subject:From:Message-Id:Date; b=ZiZWSTNpPvV+syIslzO69VFtJ1hG00bmyGbCNg7HnOTba3EQ4o1/aQgR67CoPNn8pPrxq6PisZ3SzP1FNgjqI2VW/+1aHZ3D3ABvPH02gmrekTZ8+Ky44gEvg204wVZIaaGriyiAyOiFGqTFRwkh8Uw37Xq8PvgQmeJudMWzhhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvBzSgHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvBzSgHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AC4C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791315633;
	bh=xJgxKbwh9reNhIc9r4oOcqvQ3YdoN9SeAAEsYSHOhL0=;
	h=To:Subject:From:Date:From;
	b=UvBzSgHzlAEfAlF0qQHX2V2rFycR3y1diPkAYcy92buLFeWEH4vOQtOKlY41C4oPV
	 BMf7cdf8AqPBHoLMIOmjUMcDIMDum4G45ezORJnNW0IzK7CTzHz7buH9kh10oh4p56
	 HF5hlHVhfnpZcriIsmriYQQQsyzO5kEIW70m9R2fCCS3at1ihvfhD5J1v5birTOJzp
	 4CJ2rgpRA0lmfwdndMWfOpUYvWxry85FoVQwcrlo+u3lcT1O6wlNnNIB8bhtNqW7Br
	 qIAG4QHFGFNmkxXf55ZyAtcTf1HIvvBS6pmO1tCIK9xhbtb1GnMWmtzyV1DQ36Jtfy
	 TeC+bAPLhxwSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8C0CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131563369.9239.9784283816441266608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd8b9915eda33c32296c4991783ca38a7c45eb1ca3726520009f470f5de7d42
Date: Tue, 06 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791315633
