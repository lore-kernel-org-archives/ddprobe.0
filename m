Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2688D2F9D89
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783194514; cv=none; b=qv32bmm21QCpDjkjfSI9WkPAwhrzdzQKPpXt/OEjx7HfXcswiAZs37XIAHNbJH7dG28RcAYmepxoN2JA58ZJQjLmi36WKmkF9irtl0yVWpsYntcxSjPv4459uzsV2JRzfnOyzRFSzh1YAdhX67yJpbtsMCWPv/AIWNPM+dsVTFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783194514; c=relaxed/simple;
	bh=h8FE2AgTLGvnjzD+Z8Yi0b/h1tfiLM7jK1hZ/K7e/GA=;
	h=To:Subject:From:Message-Id:Date; b=MNrVZYfAK3HrvH8d5vcTJEQR4RwHLAM6wBVwV6KskZtNKVl7W/nHihtz6Tqk9AqdN65aWJEQ+nLte1uuyLrTH2MQKf6L+w1LtSR9JR0wvDGyZQezdqhqEZQRy6epKx8V2JWsV6dOn62c6VfsSXocCDuvVvv0k4ZTWYr6foM3JRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbZKN6ne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbZKN6ne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB390C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783194513;
	bh=h8FE2AgTLGvnjzD+Z8Yi0b/h1tfiLM7jK1hZ/K7e/GA=;
	h=To:Subject:From:Date:From;
	b=ZbZKN6nemh14VlLV2pPyCGZ2//VHh4sRMU5aJgG4BrUjYrnfFIGjFFI47PrInT62O
	 +3JpdKJrxIAbDBRbOyUnlLJ22aYxNOfiaFP5geQyreTdCcBZYkY8tCrpKxQCnPiS2s
	 euzj//fxio/8uxKlCMu0+TzdtVnm18hEt6J1GsCTRSVFgX3c+ITYhReeW9LVfSew2k
	 L39OKOqJH9nsBDme8Su2NmFtMzVfN5r7OcF0mFEOBlgQbe4A7GP3W5QgocXyBA/Z/p
	 nu5YXPdfdah76ZkJ3q+/jESeH3YmQmb8xY2Se2ccg3XwuIvYttc//uCPb/35Ub6EUn
	 EIBhDhp24uJIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9344C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319451368.16864.15262115622330935874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e684794242bf62334d87669a9d304ea1a9757e2c900881fefed272824474fb9
Date: Sat, 04 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783194513
