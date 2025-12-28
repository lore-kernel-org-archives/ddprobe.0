Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562D02AD20
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766923434; cv=none; b=iz2cX0cdy7Z0FrhaWmerUZIJI4mTuPOsLy9pYiXtsIxz04oZaZ7CTFK7irIcs55VqvHgZAdXJQHtgFsiSGE0sbY3Fq62BWBNN1jqyNbQU25GOtOZ53LYxJPwzhParJcXrgQ2kmmfI9ms2djTwBaWGP3vePAkoZsRLO8lXItlXwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766923434; c=relaxed/simple;
	bh=h6XZohHpIxHb3fa3LQBVlJFhFbwfvV3n96wpxR+HtPU=;
	h=To:Subject:From:Message-Id:Date; b=YCtc/FF69pchbJrsUeOzpZdgO2aLeIa2Ly1qfI13luZc3pJ/ehnRnf4JcFGgyxA/GfzsPXLfgMqXQDPzBiyONP3nrYsfvULdy/+tWiidEEszxoUws2CuCu7NWg4ApdZ9BNM0diG8xmT86BFr5ShEXB30LN3Ei8m0y+NbG+FAlWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaTNhzyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaTNhzyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7924C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766923433;
	bh=h6XZohHpIxHb3fa3LQBVlJFhFbwfvV3n96wpxR+HtPU=;
	h=To:Subject:From:Date:From;
	b=jaTNhzyohmtzTyzP/ok/JNa4HyDNTbZYVOM8CZ144xRnweLHAJKYcMppKGzlllvbF
	 MuySV8mPe6uyZofR/cLQ1CUrmp72VAZV6ly7+7dWoOcwugVwEd846NhJZdV3e8xYv2
	 isBrKhLob0CVg4X7WqcyHWPQPk83MyOE6B9r6XOl99geXJJOxVvyRAuu7poFS98lE1
	 5wQeZ39FmjNrRbbXQ6W30qsqCq2vzt6PaCpwbtSGBBgLa8W08p90UMb9yXDZL+L0mA
	 HsAFZHwdJLSBsq8llD9xVs4smlpBjfMcgfCItzhWZbx8IL9HC2vCAfCoQ8QfgP0ZJt
	 5JTxYSwmOz++A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0188D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692343366.10906.12114863418279724645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de31d2adbfa5543a1cb5c35f3dc80be42cd4bdecf04a3f84fee55fc484bbf49
Date: Sun, 28 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766923433
