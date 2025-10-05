Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B7F156678
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759667994; cv=none; b=Visgj3mbYpoGAW0KsyTHvEEnIZBjT7gYUGcQmX2BQt1oBTT3HHGrNXwurFAlg4uo/GhLTMHBVh0BUbYOgC7/aLGtCpizuJhapdLzOiyXx/Jc8rCDYgLUwXYlmVUHX6ODrPg3DbH65EsLC530b7nmpEerqDul2WVhLI7Q3AXXZ9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759667994; c=relaxed/simple;
	bh=Afd+ra8z1KHhdthEPf7GRw3YRdFA9MQ6CtiVbCzqVyM=;
	h=To:Subject:From:Message-Id:Date; b=NNcBuG4muZW4SwKIHwr5tk1WFdMegaCQhPkx1oXMNu2lRiGgzscePLRFPNWEbJrIfUCKCuvRzXV0jNE3bRW3Z3eiB/i9l6eubV52ynRAcrOQ1xIp4FoM2VKg2yT0UdU+Z/1VJyf8G3qvNr956vqc7u1/EObx4A4CrmdYvaO3mzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkZA410S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkZA410S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A449EC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759667993;
	bh=Afd+ra8z1KHhdthEPf7GRw3YRdFA9MQ6CtiVbCzqVyM=;
	h=To:Subject:From:Date:From;
	b=CkZA410SBYEsl93Ih/nMXoWn1v9lQ+ZIqMVNLQdo4j4/Zto8rHn/7u5p+yyoNHVG4
	 CwTmyEyWTqgOZLGjvLgevuo6RbSDw3VlMz6opbXZgAMJ1l6em7FVqKFEYjnLf9mGxp
	 mV97+ueoK9CbgQnAFs3zsffy1pCBVyKeui7J0OhJQn6tUon9lu6KCVcTBB9wCdC42U
	 09TaVSMUP9lySL5tV2Z5Q62WzfD3lDzWDourcIKt+HMaiD38ug+W6v5L53jbARo8tv
	 /vee2cHlD4pTcAH8Nj2Yvyyljs3q9cda1v2M860UQueuvzqpC2Bdp3Yz3FSUDhZsOl
	 vK7+tZXFguRCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9228BCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966799359.20549.14954052791917946991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f379ba77efe47e65bb9782d24e5b58a16a4af19cc970715c092608307d1af923
Date: Sun, 05 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759667993
