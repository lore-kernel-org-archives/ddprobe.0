Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD65A2AD20
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757657393; cv=none; b=FqHXXdS6glnt6K8CF+01obTHPj8QiFkZc6wCPQzekb4HWTF4CdMos18L/XntPpz+RCm3mqpI6Y4pd4b/IV7fef1KQsc/RO8ZusQvrI1LQVN8uhacsXPJRFlosJFPVwO4RTOwuVETidurDuFW9nM6XJXCLt2EsznVYD/l0iUgfFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757657393; c=relaxed/simple;
	bh=LnpaMuUYvjMaQdhw6hAMa5GxIzGE7/RZTmQR9aaEhy0=;
	h=To:Subject:From:Message-Id:Date; b=CcyHKRM0J3R/12u+uVSqQ3tXbI+NfIZZwLj6V15Uckd5aRIdJ79/1vn3t01mPC3wbYz8uTeQ2q2ex7v4OkUU4g0DaWJMre1AsGDDVbz/RbUwolPXoGNpQ3h7ubH2fb3ObWPIdnU/0o/wacpfhzM524Ok/qj4xlvqg1YeiFPq0AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axBGu8CB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axBGu8CB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E2DC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757657393;
	bh=LnpaMuUYvjMaQdhw6hAMa5GxIzGE7/RZTmQR9aaEhy0=;
	h=To:Subject:From:Date:From;
	b=axBGu8CB/syotupJTQBMqMpOVQyPwrm3wXFcRlHXEtUOtOsBO3Qpq11kHxyoLJD/A
	 EWMC5Nu5eRtqC4YvbunFQ2zJxj1eUQO6XspefS76a+yHVfJN6HeJLzOkrcqrUwm1NA
	 ZcaDEaRAKAq8A9Qan8aGcBHEFz2VSWpOnAZhNhRyzvC1edpHbidhNjJQkPrAwJVSw7
	 jQ3sbBZPO9qpBjZgXPxJuU0DIKgOb2cqKy03O+8S8SKBTouUhf4SK+j4PxByIdm5gX
	 lVYI79KyxU052pomGDErGjwBcN8TcT54nA9Sl4HaRS0lZOL7Iqc0/lkKPAmlpSZ7GL
	 FWSPHUwDwDjew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9234CCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765739357.13894.11406282996439304781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1d6c60ab92642424f32b99f82d7eafacd825803807433b0b10090818686aff
Date: Fri, 12 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757657393
