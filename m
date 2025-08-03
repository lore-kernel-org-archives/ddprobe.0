Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CF217B505
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754202594; cv=none; b=IJIkq0rNkCKy86QNHVTPN8hpgZ8k7SKWzxRfvGlBBA4CVA5WS1Qq5eHyedIAwaXNxu66io87JPgv6ugo5FWPmoomUJhHBGmhmZgI2shqBYlvw8uzoD/xcow2f3wpN8JAk8Neprem/PvkXYfS6q/APumiIWBXqgObd76TJ43xL94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754202594; c=relaxed/simple;
	bh=P+rjgpqzigIBzddDRTHcw862oOCWLvtK8h4n1KamFZU=;
	h=To:Subject:From:Message-Id:Date; b=C3SIhr46NuZjlQ2L0lcG8cbQAhVRk+XFmW68DYFL+p+5QkBv8F046MavZfe52KxSG29sHo8iEiGaMY6vpCCN0e2wWyGOHnmmnRaNZQdBuZfqkLS1nZ9Errq491u3RBLNvK46h0EMaFN3hoyHrpBPhG1nlZxDgMI2czF7Rl3NbHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErOyyPWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErOyyPWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1447C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754202593;
	bh=P+rjgpqzigIBzddDRTHcw862oOCWLvtK8h4n1KamFZU=;
	h=To:Subject:From:Date:From;
	b=ErOyyPWWeHvzxrUtW2k7tz0yHav9zIeFmjnW2G8txSmExNLjegWxQyQB/f0o//11Q
	 /cwMKnk7xvTtQZk+OSoVIWeWJ3hwVglFWRUcpbsaKOO+EBjIHufJfEtPHMO7MUTCpg
	 //YxX09Hjuoj0TqsR0vfonfTV68wZ4lNu+n2UE4vIVVbLsR0TeJ8D8MlUC1vmqBzoh
	 CxyjSlr17PHQOvHyITrIOBcPe6QEEWrqwM2xHBh+kXFZtJCYjlAylxiaQKJ9m6w4RZ
	 0n56SZlHuTSqOP0NaOB/22GK762ImKqma+8PviOhO/IyS/IKB5LdDR36kf2wOF9oot
	 ZoxwpejEybm1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA3C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420259357.4987.7701266857937431293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f7cb9f1cc9a79f01c0b48703bbf94bca0241770f9fa99c2d3f2686d3abc5ea
Date: Sun, 03 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754202593
