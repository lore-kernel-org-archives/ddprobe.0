Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061E1260592
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769198634; cv=none; b=pyuQG210aTsmO4NT/wTrilpNkMNeHLhkVYAJVo9Zoki5jTmw7YQhirO6Kp0WHqNAma+RhBKB2wjRQz2RTG7lkKvGObnJriibUR28gR+DK8CyMUYEs6hpA7RWyXNktBrwv2gQpR1Kf8Cba4N2PSNT9fcn8FmjfvGkWpRxoYFKhNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769198634; c=relaxed/simple;
	bh=VKoWMmWe4sisDKeWj9MiNISQGqcsfkpxmi8kG2FM+zs=;
	h=To:Subject:From:Message-Id:Date; b=gLY/CnTDamvJBONYze7t3R0AAjjZQfIB+/QiEJ++7BD4JVQ0ue3cQr+dRZe423Tg4SNbFi1F3KxwKDqvLDDTjxUX2dgCE0VkKPl3V6eylwur2h7gcGRuATa9uJMhwRMHkG19xgl+qn4UNLoj5maBBO18QaZeiclzwdcr7C0GhlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glOomf8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glOomf8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5302C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769198633;
	bh=VKoWMmWe4sisDKeWj9MiNISQGqcsfkpxmi8kG2FM+zs=;
	h=To:Subject:From:Date:From;
	b=glOomf8JqdZMcLWCQcUuzDEjLLWdJ1r/+ghUy9hbeXlRJAK2leLYJQO5lgPwLtfss
	 4IZeXmRTaemTV5waL5jLAle3nfvjs5QEO860PiXiHT1kerVm35XvhxptausCRYY1we
	 iRytl487yzKTTyzgiDUPr/EDSpAvFDNqjojdeC5tcIwF9G9MQQycchKnWDk8djlr5J
	 zB8MytQsXkM9dd3A3keaD20Actqeimsw0CrjtCJ57BTYlDKtbj3zXE8QEoDceKLv4p
	 zjM/reVMxBwFz4zuQfnldamXXlcaa1n4xsQ/fp1Zk0EQ0KZMKiaxhGM9VY4EJjfaJO
	 tQCaEs4DeLANg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F4ED778B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919863359.31782.10049414720423882247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac2a6eea165b8356ee6153315cbef80ecf39a3c9c2a4dbcc1ffd1c3ddf8eb27
Date: Fri, 23 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769198633
