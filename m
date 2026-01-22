Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4213B2DF122
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769100235; cv=none; b=YmuIeyR/B3hQ9Qin3mGUzgEY7WZ92jIlbaIbQn6K3d24F1Zi9+oq0Glah1z2pJrifGiTaBmWWbi9quhT2TYzEc9PpZ5nKLBbcgweSU00oBAzBcs8F7PqwfzAe9+ydylzTQ75fBWTSMqROvHRe7+Ou/6wTsQ2NVTuvFoR3mS/KOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769100235; c=relaxed/simple;
	bh=0N15zgy7hXu1rN6TT5Zf8JjVLlkAPJNvyFDNoUnqd6k=;
	h=To:Subject:From:Message-Id:Date; b=j3X3iz56OlPNQN0/NPTgp4hAcMjoGHFkeH9yzJCWkmMYmgOc9cYDl1Fq+dEfB+G3/QYTG/71czs4AOvI23qPso47gc+PQnI9PozJXjylOe9nnlwErPdZ3fvwMVLNAaRAPLgTedgNboZg81uQZR+EbgTmehwijkpO+IuEl/0aJtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgeezBgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgeezBgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53AEC116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769100233;
	bh=0N15zgy7hXu1rN6TT5Zf8JjVLlkAPJNvyFDNoUnqd6k=;
	h=To:Subject:From:Date:From;
	b=lgeezBgFwxOdaHi3gxpNfAa/GDpOyixnTEnK4n2bn6uC4SEI7rlqBykdWKKvjqn5J
	 deWzjz8g7lvSvyiUWds3DyNrAreGy4U0g6v/sA3c3QxZ1BgoN08deR/hdKHpw+faSh
	 iHvDfnsxKbgvOfaHqCnyp2Gk1XNI1sobuH+RPBnqN1QP0GayTBZV0Cjy/pic4/fxxU
	 VATDn5Ia7dNXOugBuVDFSeVpEjFbnfAgsJilP3BBhUD++95cVZUmXSMJB373PRV1jh
	 PiQmm1bQeH32TbnYHs0lD34NYPyKWchjVJ/e5A3iUBL7CAtOI9CPtH39yqTUtuKjK5
	 2IRgIMuKA/iwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EDBD3EE84
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910023359.10443.10446182485314285269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddee419946a8d0c8ced1d8a317e96b157db94578a6f63d19a1f0860bf922d5c2
Date: Thu, 22 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769100233
