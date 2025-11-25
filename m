Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F392F1EB5E1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764075774; cv=none; b=Wv7JnC5B0GRR7JPrKAlCAk0XagfJ0AbLsE0qRyECtbn5YXHfS2HIV9WjgzEls39hDZ7qHNTuYjkdFadBpA1Bo/GAFYC5vem1anuAbz8YmINRqj/WSc/h7uk98SEfM8onlB9fpAjXrR1NwlN1LnojbIuZHGAfUl4Z7cPyWKamV3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764075774; c=relaxed/simple;
	bh=jF/HqMYXCa60KcoSRI6DWXy8jOUrClf9DEUxNtIYOM8=;
	h=To:Subject:From:Message-Id:Date; b=RRAmjpwWe4usbQs0aMI9WvFcLf2M2ETxoFCj0kloYmOiXOE/92aqlSsiEJ9J7eXxVv/4TH2O7fJgafAAiOLHf3DUGjXfGjcfpa3hFlVB0Nqek8iDOmzOc/FHo0Y5T+KAinlK3xB9wpOqWRvDKUg021mGrepWDTLwhrPXugALik0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a13TIF0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a13TIF0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F33CC116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764075773;
	bh=jF/HqMYXCa60KcoSRI6DWXy8jOUrClf9DEUxNtIYOM8=;
	h=To:Subject:From:Date:From;
	b=a13TIF0O9A9Xy9hi5I+eIxLQLVNVqqBAfNBTPotLxw8McrX3UfNN3eURx5AfHY7aJ
	 yfb0gnAezZ1wnP1YlnRSSdogvx6JFvGi9Wsb8eQ8nGISSUv9MSeCYJYulvJXAqZ8d2
	 leuZj5mdw7EXJRr2cbrEHuz+BmUUkbt0MkdKaVEzpDqbBAncg0nkXHhqD+TnI3OchY
	 3Od2MaANogb2WZ5Q33AJ1pTniFih3NVmIZTq2GE13IaANhaNyRNAM22loXCsyP9cUB
	 6edHqWSGF9hkQLVoI8dH6O2D49QrxISD8K2yKp6brV1NY757thKaACfZqWcb5irC4X
	 ORQjgyz7CpanQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909ADD0E6DB
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407577358.29340.5994951939094493551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eede296423548401f48522f4ee08a0ef63362bec8274fc69f319b72b591b8d73
Date: Tue, 25 Nov 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764075773
