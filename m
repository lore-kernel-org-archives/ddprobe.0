Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B53E3AA1AF
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762865994; cv=none; b=jE8yVO2XObNnZ/VPDvRUZ7dkjPt6YSLHPMb3wvU8uinFGtKlaIvL3firu4JdjZQD612X+lWXESIrWh1wh7Ct8A1lCZm/q2HtW+FRloe+s5JA03MxAHZKTR4aIJXFP9GR7j7gm/r38fdPwg/5GTpLquofDlvBKn7gg7EIp0G7z04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762865994; c=relaxed/simple;
	bh=s2oC39KbBj1Ir/TFcWhApvpeZOac0lQZDMbGdPsyTc0=;
	h=To:Subject:From:Message-Id:Date; b=Q24Oav7Rx9bvj9uK6msbDV4wiVRITwUBuuk3fFZqC1E+7NcB0mh1JdUtwx9IHNm/P2lEmxptrxOQhtn1kKGfC+V42EsU2sj94qvMoVt3AfONj5fZruJdWazenTkC13VftBA0S8utoLr/R9TARgNI5vBW7WWCb6DQ37QsjxNdTGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xx9NWKQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xx9NWKQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF52C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762865993;
	bh=s2oC39KbBj1Ir/TFcWhApvpeZOac0lQZDMbGdPsyTc0=;
	h=To:Subject:From:Date:From;
	b=Xx9NWKQkNugINXeHpInBnf0Fz6boiyAR1Uf1iB+cm3BnM8qDNnYRKiLlMNONrJ4aV
	 FpytLqAmEtXucTNY/uAt+zhqOWhUTDjIyd1WPKHfM8aDtfY8+nY4Nkfm7WM0MDAKru
	 S22IuyTZ8T1UezzgwtTlyi657NckxQQxW72pUpASnktUz66VhpfQHRxzCyRR+RdV8P
	 siHzyG8c6D2bv2hYQ8HaSfe6UGMMaK41GsEeaQ4vYBynFJhrZ79jFp+pnbDXQgO5cS
	 aFH86u67P036/sk9k6ib9HuFlyZA+oShOm3jbgUR9gzTDymtBp4WTpHCZcS+dEqwt9
	 zwPOC7VeOHIqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F33CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286599358.24372.13476915960674837636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eeacd6f4a57603b0b273cb8e7f43944455e9a40cc0590b3922efb692b9e9abf
Date: Tue, 11 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762865993
