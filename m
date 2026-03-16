Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119F923EA8A
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773669294; cv=none; b=ZngQ3vC2pdL46riaB4FUeSnDD7fpVkYkKtMkE/7ryygMcSvJiJcCOaJDd0OqfUkVT7w9sTU49clTguvg56v5/beZX17bh0+AJ4QRSMaOhALl086LqW5JsXvMnxID6/NAuF5eBc5KESBFDc/fVutOV5cLhFAU4H7ncDvuNSbLc8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773669294; c=relaxed/simple;
	bh=jmqA3TMcZ2WZbMX1BOXov6zq91LM19qU+PKg/JFzaTA=;
	h=To:Subject:From:Message-Id:Date; b=NZtcE743CP2nqnJCpSI6/IpbflNrNfxtSNGA7pxy2mB7cE05Ft6lqJkewrX3/y9vO8hYtMhbYL7C3G7Aq1UMs0ODytSyqg9zrvjooC4D4vOSGjbV6AOJjnAaOkf37PaeaTNrw3z5ML1K8QBnxA7OVcHTJgcM7b4OO6p/DT9Dxfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOv9Es4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOv9Es4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE03AC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773669293;
	bh=jmqA3TMcZ2WZbMX1BOXov6zq91LM19qU+PKg/JFzaTA=;
	h=To:Subject:From:Date:From;
	b=LOv9Es4PBtaUFZRs5b3HmTMVcZwA1AYlALLJ3V/8dVVWiPnyQJcIirWviY6Z9vE0o
	 o7kCjOEVKgJstSJ3mPkXrzVWLHQBEzCqLbZGnucQs7/ILqtoUdr88JO51tAMFzeazH
	 9TF90PQtJzb5792K74mh7keYWF7K+zir+bFD26lQdWgLAZ+MjMOLzGmbDyyPPsb3il
	 0YKnTBUQqALl3OC4aYDE8XxpHlp2T1gEiZLrWbyPuRKSYsv4d3drHSw+poeRwjynb/
	 KDwkF3UkJXMP23SEpXlURTCb4b2X0CI9bY/aGJdMKyOQFWQ+BG1txcrho8Syt29D9M
	 A/HgaRhaFVWJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBD6F506D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366929363.32665.6493221592565413570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd8c8d152e27d296b135ead602e4d20cca0271a9f3015a5a8f871f32ead249e
Date: Mon, 16 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773669293
