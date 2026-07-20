Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326611C695
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784522914; cv=none; b=Js2J/GtOdLxQuhXS5KEV95+oOR/dEPlAcZLZ9mfKRUA7S3wCRtUQnmY1GvoT8YL8aLEjCWdypgFYpd6EkABLBJgBQV2x7aGkOrDOXy8hUKo+H13iiNal1Ko0P0EPb5nb6qkcSTCsjvPkvk6nUhd/aJM3AzEkR2E703SS7i2sEuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784522914; c=relaxed/simple;
	bh=x0SDBGLev3yngGjN5Z/3A9cIwaHBJONptpO7cLrEfAQ=;
	h=To:Subject:From:Message-Id:Date; b=Zp/6+6117R7kZAyue28N41CgTn+pD3NDv7cx75FW8mOZ+EVBgsAKwi5B8Y9+Fh2C3A8wGXf2Qj9C7fj2qz//3kyopZfrP8oS1SCIzi3D6WSBPrMapdOVRksQ0WzkYIzvLx8cKXvu3hleL1o5BQQPperAdfEpcSs0Gms9JjAVrm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwcQ+rsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwcQ+rsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18D1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784522913;
	bh=x0SDBGLev3yngGjN5Z/3A9cIwaHBJONptpO7cLrEfAQ=;
	h=To:Subject:From:Date:From;
	b=lwcQ+rsNerERHRXyJMn57Npa/xKzOdqaKwSZobrW1+olvgFdWISWuRyhVMWW7kcpe
	 nLqzWbXlS80WGuRbKnjtiOgGEZqvUcL6hNhqwQQtohSCG09ZVfIlrmL8w+1/6dVsyb
	 mapvLtJaS0XyRmINspbmIaUJwTiK9hTPgNsVki0WzuHjU1TpMkqpKhUStNh5DPwrFB
	 O6KDRzCsj8l5kLT+P7PpNLr1ml+Kw/aueh0XN4xFR1kJizlga4UCLFjLO7HWq4R3Zu
	 k360v5qM7Q/I1lB/Hte/EvqAWqoVWvbooj0I4fdg58pp2+bZRDA9KINyndibXp6J/V
	 LqNSoMC/2om5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2EFC4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452291368.1638.11124570680189281976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9812ac446deab866b3dd829eabb3c151333f2ac09a0344a7870aacf9d292560d
Date: Mon, 20 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784522913
