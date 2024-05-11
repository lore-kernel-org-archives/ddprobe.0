Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63ED52F26
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715427143; cv=none; b=H/8uJZwQ9o1HhTaxgN8JzErZSInGAtbE8CbWoivSgKzOzmy2eEnhQLxa4T9UuneXKoL2QKZcePuP/6ofRvNdTbPKy29APcm0SwmNh+nnJCE7PweKM7FUrZkhDE2WkatR8XWET3glDBp0o85NmFC+bXcbPcVV3XAi9eMm3Axzk5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715427143; c=relaxed/simple;
	bh=4PgOJ7Jfx2kL/HZDMzdZboZ8vNeuADvvWiQN8ObTPBs=;
	h=To:Subject:From:Message-Id:Date; b=VhYxOVPohMiZYruyaT9mXV60McJ9a5maou4xYYWyf4vR8/H7D1Wo9THamojbWTVCh+4s/5HEuqrcD81PqLmdOYRy5Q9RtgKwGLVLa92NkkdMQGo3wfjGd84HsnMYZozKfxknd02h7e13qvNRYw652ww1D6LNiNGrTauYv/eak88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqd95087; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqd95087"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA290C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715427142;
	bh=4PgOJ7Jfx2kL/HZDMzdZboZ8vNeuADvvWiQN8ObTPBs=;
	h=To:Subject:From:Date:From;
	b=qqd95087L8d3hO9ZnfFv+zWba8V9JpRO//3pml+Vtx0f21FFA3scpAkFz5gSn4vzc
	 CyX4JGbAh9o+yIAVDaWd7Ges7kPHYhhO+WfslapBkJVu4FEi1QfAQubNkuiSyeVgfR
	 d8KtspSlfNraLPQFE0v/+k2ZtNkNfG6r7k/k4Ygc24y8KRa24RN9UgD9oAEJuzoHuy
	 f57eSeaBsu3ETy8CobAYfzvUlYXp3ZIoj4zhDMVn54n2ZoHR0WfBUmKfpACiDXSBqE
	 03vMTmxgnZZFgSYlsJ34AO8WzEykqNIggTSPFJg5RPy/5LV7AjNyS+CEW+W3lj8Ma3
	 ey0nx2qH0WFZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50A6C25B5F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171542714277.13276.8394622138765722533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5a78e1659404a068c1daf925d81aa25fc437860fcc253de7e7a1dc2b327137
Date: Sat, 11 May 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715427142
