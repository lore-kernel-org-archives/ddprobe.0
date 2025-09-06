Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D830F4A00
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757117393; cv=none; b=TSLEgGg3k/y1jkC+4qGxbQnqRkkRKAkjEfJXHXwTiB2kGLTeZCv6/m3PwgNqgJONbA638VHWthVn9IyMRJfmw3pP8hLITDMuPKGrGCQqC0wqxbfXoca0N6Ws98zAldVaKZgz6F7QhcscO6uuLzjAWFnAaRT3D5uxDqgBFtefJ60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757117393; c=relaxed/simple;
	bh=qc9mGbIWS6zJ1zhuvvVZ7tj/kpunF76BbdETpPuc3no=;
	h=To:Subject:From:Message-Id:Date; b=ZaYImU87abwMeRn7vtb9UEEumdMWvguqouc2EGj/eJROo2310BQ9ObaAzLJtCo/B56c62lGBO0iASCfRpjBIMOZpeMGzNIpTEs72xnYdpdkqQhfIH0o7Qb1EWOaE/iU/vQFqn/TPfeeUBIAV/2nN8wuICVaH6L3l6zEkRfW5D18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpmepaLs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpmepaLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5590C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757117393;
	bh=qc9mGbIWS6zJ1zhuvvVZ7tj/kpunF76BbdETpPuc3no=;
	h=To:Subject:From:Date:From;
	b=qpmepaLsbgolT2dXSdOoNBmi2vTGXZUzVGmpsuUGtzWRo0i9Y/nT+WRmSbEEAJhza
	 nxVEnkgRrNY1uEJe28iXGL9BP5fSw8Tla4ZfPwJpdlnR5EGhx2BYbpLeL8uFCK17Hm
	 7lI5vkLFace6L2QMY06ek+w0nvgmWJeF0+ORzHoyw9zYFatpiny+AanvqZECCwyI1T
	 i0PEhjC8B7qN65kSj8v3wbpY7h9JBjzDkaDFjOnsergB5jktRFByui5Jr2bjgcAzK2
	 Wet3fL6R9LZCkj5RUwc/gZL7EQkLPQts2Q0NecQ0KT1ovOwrnnm2eyTviUUWLedHdG
	 jxLbbyFdezZWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93346CA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711739358.8803.18430038449028045606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1aebc5552dc3707a2eae5fa74ee0170a43ebc2acceaa1e5aebff97b5172f12e
Date: Sat, 06 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757117393
