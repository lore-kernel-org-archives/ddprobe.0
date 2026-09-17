Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A203D4137
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789670434; cv=none; b=KzGDKiKId7Veg0DOfIeCSdNGfqzBl+xRd+1Dy/OFTCgJx7etilSvyzfY80SKJ91l+mVdFtkfscf7yVZsCPGCp8NeLxAiAGrsqtDK18AUbgmrh7Zc0+4k1RBV+RjhlogP+maSgCcszGq+V/FKdN22WwUdL49gh7oUM2zeIAE9ZL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789670434; c=relaxed/simple;
	bh=Xe6jxFrJqaYRdCtkr1kxhgtAuS9z8PNhYGT/ElAnpsU=;
	h=To:Subject:From:Message-Id:Date; b=IIRbyAmXJ5oSD80MW4z3/7avjCtcKzgTnDRJ+1qFnscIopJOywl6s5QX0/NZ/BKWki53sS0NNE5KlYcahSBCOgEZwi481nRjcmreEsqSyj4vPIvTleI5XmOnuiI985c+yq8SXmafJ5d8L/b9RO6A+wiCbFdykfEJgWHuaTSG7zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWaLJ7lt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWaLJ7lt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB46EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789670433;
	bh=Xe6jxFrJqaYRdCtkr1kxhgtAuS9z8PNhYGT/ElAnpsU=;
	h=To:Subject:From:Date:From;
	b=AWaLJ7ltfX1ielJQv8tSIHnqTziTOKdbHnGBFMaSBVrL5UjhcxzWJVaEKokCPq3hf
	 fwzV8mJpT4p1uNJJqQL3cC0jQzxu1yAPIpgE+VpOWvw89fqOBObXSAV8D6093w0S5S
	 tOwD8Bb6umtzVQVEeKh/c01h/DPGM85KDjXkhezwlSqaVAEogwsawVeDSMYSLth9SJ
	 tcCxNqGlGzQnXvQHaflk0oP3NUv2G8/gL7pbfVLnf9NtLI77xVvpTYKWWbgEhn8rSh
	 ETYmK/hqtTtaouBUzmReWkSZ4DeHerfYKUQ9agJXhZz29YmzOcaR1kpr9G/To85fc+
	 wR8E49+spPpRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B2EC982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967043371.31122.3018698774564774456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f2353f136a471f5b0db5b8f847025a75dfca7d3b409db89ba8ac2577979f6f
Date: Thu, 17 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789670433
