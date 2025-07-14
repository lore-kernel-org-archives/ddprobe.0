Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5D627932B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752527394; cv=none; b=FcvEzO9D596q9A4z1S0P7ZxnCmPHBn9HzOOHcMOGPczIkS/JApTAEqp2SnL8TM7O6z+PD+8o50LqEh99F7sC3CoSJsH+Tinnfub/FZeuY1hUEa4ZArivFHSDIa4B0il3mMFXssviIZ6d306fVwByiQHLh6ot5I4BMvkXaMXpRr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752527394; c=relaxed/simple;
	bh=a64omIjpzOPAAJak2OpxjUPww7OzkijjujN7L0ryFWw=;
	h=To:Subject:From:Message-Id:Date; b=kkcUCWthyW+3HG8GO7JnB3o5Tt/pmucxe6DPoPBDzv6WqueS5jgK5MJ52Cw3hSykbQ4N8cXlaMXs30nASu+Uj3SOsGUyPXIvn28L6sSyS61SRX0RLA9qO4SkDWnKH5xzxBhX4ONcecO3k9w6vkUwjv0+P6raAeuMCe5BIs9HD20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ya0ARqOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ya0ARqOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD2AC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752527393;
	bh=a64omIjpzOPAAJak2OpxjUPww7OzkijjujN7L0ryFWw=;
	h=To:Subject:From:Date:From;
	b=Ya0ARqOualY7ULYtgUjLA8tfQS+rlkMbE802PqNed426H2rVhiszOulOG7jRyGaH6
	 3b21xdWLDV+rj52IAjqeWXs9N+7DkvQznZ4Wu0Zcxk7zhrRwciiChQi/zDJv1ZVrJT
	 lckCLjrch1JFldT5FxNgA4LpMwjpUzMBnoU7E2BG/uMjND3X9/JX8qHBk2G0dajmey
	 /p4scuTqOVDO1U/MYytVeawrlwce9qKlN9aItMgTmvIzusH+pXcp721z3gca8qPzj0
	 dtHNeQGeUCv+pRy2QqusKptMrCSbexWvlGlnwlOomOl69vm1RiVOMMCZgT4HIaAzFS
	 Y2swKpMJQilWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE75C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252739357.30605.9024849578545862461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e282e32fd91d42c3a69e733d0eb029ef5ebb1296cf7d2b5f260a0059aff2536a
Date: Mon, 14 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752527393
