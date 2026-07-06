Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379B1380FF9
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783352914; cv=none; b=aCxRUAKyqYlTW+ERKoxq/5v1nJJkqoYBhy8z2zd1ClMYlW46NfTn6u0I/wwxOFy6cU8T9VmWw+OlGETUeQdEeeCXyhKhYx9zCnvjh4kKoe0L3c5CAe9yWCRUNoZCMNxQGcAlyQuyvx0sJOyQcjxJ7MhCbzaeRmgSGHpLhDLZ6e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783352914; c=relaxed/simple;
	bh=Be9eAscHJscQWbBdS/kNOHa98aNnFOWVq7BH93pETIA=;
	h=To:Subject:From:Message-Id:Date; b=qPEwgmlTQasMi4cp0XG11ETulNsw5qzs1Ymgv1o4ZTRwEYjU1SOh2pRhPFSnMOLOsJsAwi8z+SW+fE/Emz3Rn0BARDmAMSLSRnwd8hhJzE0mFDmFUy/qUwbKVqKj08/ceRQ60AO9WFU5NlEjm8FqmFihFlAPz/3xiLXB/MhNB70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezDnmKGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezDnmKGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C909BC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783352913;
	bh=Be9eAscHJscQWbBdS/kNOHa98aNnFOWVq7BH93pETIA=;
	h=To:Subject:From:Date:From;
	b=ezDnmKGmbRafXPDUCLlUyRLurMTdT4XryrrFdiaMPjwKRKbRERAxlzSlO3OWzui9X
	 Y59cchh7dg8t//QKy3ivmM/VwmFKwFBFKUNtdBYb5fHeG3WS0YI2JO+HH0FOeW3aGc
	 ZMMAMhH8YbegGQGrYiYZSyrx2Dk2RA0N+klxDDCql7qt/J+u+3C85od68dp8msvgLI
	 DqCuYOumR1r+n8g1feNKYbTUfNzmgCrw5K0dHZsypt0aWrDncLiliLcoGZpvdTVUDd
	 SB3lVENEV54X3TArc6HYxDkzIxzEOhCAs7OqnXZmoV2HfFmk+kJBpiFfQTXDAXhjZu
	 65d6SFMZjcDjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98BDC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335291368.30170.17704972987853445991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1899f4379377193aab72d1d7f5da5f8f64a36f960ab71370dd1e895eb4d1879f
Date: Mon, 06 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783352913
