Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3236EBA21
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776566854; cv=none; b=pOc6xnNcixclvDRHx4xqMuJa6AAa12FD+ktO5T9cjRYXf2pnPyaPym1abxEo+eNKxxGhzKxEwluDwEcRydcG6VsaV+8VegQEvzXn2SaoZs5tLKtoUNjj9dBPdr0kbPiCGf75wTuKQ8wdrjshe2wTq60Y5yDJUZSZ609Kmfj/R4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776566854; c=relaxed/simple;
	bh=DWOLRYGrQmOqF9AjmqNvSA6tA+bp0aJlX9gP/HibVQE=;
	h=To:Subject:From:Message-Id:Date; b=BFCr1y5hL00QfcvyLqTRlan0YeqExo1W1ZFD8tSA/qyS+9MI3SQhvA/uRVoR1N640MWfMeQhJmA+b15uoKYy8RLcFhnutCw32jDeybeD6bPspF0e+pcVoY6n5ut5poTx+IUEotW7eJ6LKH+rCjlXEgXPtmsqY7q0p4C5j1dbUgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtZpLErm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtZpLErm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1014C19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776566853;
	bh=DWOLRYGrQmOqF9AjmqNvSA6tA+bp0aJlX9gP/HibVQE=;
	h=To:Subject:From:Date:From;
	b=HtZpLErmipoQOk9ouPXQCB6SiE2TFt3YvgHQsGdYn/GNjQbzyOPkIGTIEdrkPSC36
	 aA1YDRoj1SodI4IPW1SOh9//Pu/7cymllo0v9hqRw8iXK089TqCWM24qLBnlISIo1J
	 6C7VS7UCmwD3wmwpXUZoOO0CF5YAfPhtAV1cEJvul5ernvawgOYN3rgYWpyPAnXyty
	 dcbd6Dzb64IQ1x/olaztGOd8oPt1uKIYqyZBGJwi7Jc1EMF/PwN4VElgIHOxJzVPAd
	 B/Z89WjDBrRs3joMx5JME7Z+5FIsMaa/sbtb9xEct0XTiu2XShtuOPF2Do0hWLdhRV
	 W4MA0uptkt3OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9A7F99C98
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656685368.19266.17446633635488429985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aba88d2f4bc9cb7e1c4fc26eb978e1bf641e6cb56d9f8a68a4251a5f802d706
Date: Sun, 19 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776566853
