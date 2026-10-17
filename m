Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5393C1D59
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792228834; cv=none; b=r/P1Ax4587y11j1ogEt7dOLDx140au54sSN2QOZNO7ftgUBRXfo5eY4dPv0AopszwqpTI4Q7aeGKIS2vTkYan7ZX+8MK+hB6H1ImyYb5VplyfO8DkAtXwzfSTqYj4pLQNnolhbU6xbdZIt+SC07AdiLeB2u0/zLEanQHYAVYpLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792228834; c=relaxed/simple;
	bh=Ir7RSDUQNCvn4Dsy/Cu22Du9zljoZYSVaUkwkOhY8BA=;
	h=To:Subject:From:Message-Id:Date; b=Sk9LZheyjgku99I5/one4eUu+mCuzh4MRZRAXNRTEWHUbrU+uUR4b0fnTYPF86lsD8Ze2nPaQuTp95ImQG9n43AKEEwmVnx9+enyFajRaLyblhxWOCVJnkZoFGWlxp6VGf1qOKXGT5p011cDw9PvuLuDOMo3ASKhtSQjqvdtnuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rvjh7pQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rvjh7pQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB255C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792228833;
	bh=Ir7RSDUQNCvn4Dsy/Cu22Du9zljoZYSVaUkwkOhY8BA=;
	h=To:Subject:From:Date:From;
	b=Rvjh7pQZSozVnB8+DdXIKSEUAc/Oympd2YYH3YL751PD5JkSkS1UZSVkI5pN16bML
	 a5SI0YZv8QYFhYEIP+E2HKVO1h+3WgC7NSA76sN9P+VVwmgVCpzrFptChor9KUMS+O
	 P+WBlgnJIY7uyiXNdfyd+fPhVX7KU2sG9Rd3Ixf5hTsqaxisgEsk3hGwTEVfuYC2OC
	 mq0b/1ttgfT/G0nS3Az3vwYts4psf558GCdI1AnXc8ObGbE6SJ0BzXwXHd3VBsCxYj
	 CfbFcUTMNB9haLeP2bAQwQ2M1yU7ozbJvqwfa6XizNkPd48hv+g83mgl/xpL5T0Rlr
	 XwAsxuBs4HoYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD46ECCF2C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222883368.32711.8348494568750251269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18373fdb57cd98199ee101e9434e586f0aed49d21aee8d9f5a79bab028c3c73f
Date: Sat, 17 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792228833
