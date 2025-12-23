Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0702673AA
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766475834; cv=none; b=XckdQOsYwJzJNjqvqk/rQKqTam05MovgrZbd4sSHsxecaQZ319ZbIVa/8Lcm6Du+Oswktn+qRA1KAqa5sT0nGQ0SPqztcs2/CHke0VdSyzmjmFX72yHiPxB7xYAjDmreO21C8ypcwRXDLNqtzk897U9dgYIY7xTUPMAvSGKClkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766475834; c=relaxed/simple;
	bh=IivaQYLQw2RaeBLEn3pzu/QJNIySQYt1gFJh/xTTKHg=;
	h=To:Subject:From:Message-Id:Date; b=fBJ2EsvfJWo+FwkuGBk+07i4Z+vPyW44ddv0fb5iVS9s34MTb7pLaj/LEpTOo/IkqhLA0ynp4kOn7oer2O6W45QOFk4rp+Z1S6hRW0u2v7NX60QoUQs3axYkfvXOWTgKXn3CfgtymR/oTsKaSi8PEJatjn/SlAB58lBelz5Y/WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bh90AB+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bh90AB+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63C3C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766475833;
	bh=IivaQYLQw2RaeBLEn3pzu/QJNIySQYt1gFJh/xTTKHg=;
	h=To:Subject:From:Date:From;
	b=Bh90AB+X3M9QFYWw6iO/gZe/OnQfU+32m+mo5i9l+fePkVcXymyn7UWZEsQXJ56OC
	 ApIdiPG5VdMkKOFB45iRYVhjI6Fm8mqK7fTqRsdspK5rc5I1daMh88hkEWmW/1fdTm
	 QLD5LV53TzGCytqN8sLr7805aiNPz2Ao30eKD0OHn7e6r+L6jzD+Q04qMvaEA8bQfa
	 /8UrdPjRPAHTNE9RZCXRRxbM0RkzCifgDpbGTQdHtpgZNV5cQhVp9CQd5ISEoO3F5u
	 JGn3AjMuO30N2ryUjOq7vMRHuq1/rb1X+lMZtBxUGq2IsnqCEOnQzoSBW9ehZQYMgD
	 NVZt8yqB4Rd5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95296E6F068
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647583357.22142.9115175904267522907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a3556835a1f4e4b0b89ab8f5884207dc38802f4bac583b8d958bc9efd21cc0
Date: Tue, 23 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766475833
