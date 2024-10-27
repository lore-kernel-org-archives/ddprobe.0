Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2C2217F2C
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729991754; cv=none; b=AOz+iz/nD41AyU8sJqu2vTYCw2QpdCZ/jKdeKSGX8j8avSq0N1FY0rZu8kDRL2DxcLiFCtRmLp3/CqrA1PwBKFoqO5oxRoBte+TGr+lcio0uBkxe4J84HinZ6qgjwWugUvDpp4JJU/QB7EurC4KM7j+vauKzorDuWKQ8DI37qm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729991754; c=relaxed/simple;
	bh=0PQGtDse4StROErzCWmmKBaxDnf1Aa2R63SDI5rtA6E=;
	h=To:Subject:From:Message-Id:Date; b=CB82KhbKIlqg4XIp6tqv8ErM2YALUd9ZZI3HkFl69Yh6/hSUQO675J+as7SR4UFTkvs0ow8+EwHh8SO6PcUVHsqdOVtKsJOYJM9wZwQUkWPmzApbWLtmPBkgJt/GD4sgqOhO2CAX7J2dwsfft1CzDYnSgdlQm+r8t0tv7HcpyS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIhIxYfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIhIxYfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B68C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729991753;
	bh=0PQGtDse4StROErzCWmmKBaxDnf1Aa2R63SDI5rtA6E=;
	h=To:Subject:From:Date:From;
	b=eIhIxYfEP5CguERTjIa8NI8yeslvUfXYwdntrGMFsjHvdzQGR40UlF78DdCrr62UZ
	 jqtN79PBMPUtm5DoUMzSlbqnO44QsuhuTOqo2WQC0gBdrJ6NhlF83duxzawdOXLOr6
	 Pez0LlN5H1iHyMV2aBwUB2Rw1W2V4OoxqLBDkjwirpgd2RSDfylvtBLY4USWvjoPP6
	 zFZ8Ca21lMZ1FuI6Hjl4Traqqgzh3/mhAQ6eV7Qd3p1BG1NhHZjc8IsfF0m3N6mxDT
	 K9XlG6RoNAgpSR31kIQBeO97TH/dVZCkj1y6UzTbbSqOlKv+tomlk6EuLuIiQdVpo8
	 oW9YtCgC+Uu0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960AFD10C07
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172999175359.4524.9468500666947035661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89be965edb4b9c56c869e97fd9872183035984724e4d8dd60146b8ceab30edb3
Date: Sun, 27 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729991753
