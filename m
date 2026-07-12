Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381C6344D99
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783823314; cv=none; b=fIBf2npKmt+9BASlD2HV9mD7YpNQlO+o/WbOgpf2dgN8oAQgpMREp837vPB4lv1aA3q+PV9VNbN6Q/1kxnFf+kMQ9fTtxD0jhSOoowAVrHiOtncntWYyg0vp0NognjTMaQtI6IjYw3Ghb0R/TJMujCtXax9oE5kO3u1ddM9zbW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783823314; c=relaxed/simple;
	bh=JJ7b0ruvkDjY1WXxJSWPuHNqP/2nTzOuOxg/9hAuz84=;
	h=To:Subject:From:Message-Id:Date; b=tr3RraEzj0fjYCLUOyGhMmuG8GDZW8VEMa2b93ySSoqaq5D1+Q+cKT/29UREk+g28xtdy0c1zep2ImzvgFGo3xAO7zh9NckoUZZjd1XGFeY4AdLeuOkVtTV2b4w1V+aV/kclHKoljrtlHQ9owLUaCdHNevuF+U0axjcZnQCprcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmVNZop6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmVNZop6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD012C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783823313;
	bh=JJ7b0ruvkDjY1WXxJSWPuHNqP/2nTzOuOxg/9hAuz84=;
	h=To:Subject:From:Date:From;
	b=WmVNZop6eX86upVLm2dFTKll9R++Ai+I8g34DAzRDaMEjOJTqi98b4l33QXKk/G8D
	 +j9nPbtBx37zKjar1G3ZtfsV9lK0sATe8mz1mRhlt4taqTf9wdMeqDA81Z1f4vzFVd
	 x3BmVeMqy9XaSe1ULBra5l10dBPDg3VirjKt7PxhMrY73lNY4rLh2VP8Uk0bYgh+tJ
	 7x4IBgv3T5x3NihGh2KN/P/gp6gIPrBD/7iuyQU+Jv9GYgKWFquvFnMQuZyP9cZGAg
	 HjYHHD70Vp3Nimf+LlMn4OAp4y2MWUfNremUNDne/AHLvWVpULfSAV83k/0dPeoxhN
	 wHIc4o9/pde9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB391C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382331368.17050.3074234969666428556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53bf8e526242dbdc579597a52c6dcfae3eba28c99378d4b1b516c781b990d598
Date: Sun, 12 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783823313
