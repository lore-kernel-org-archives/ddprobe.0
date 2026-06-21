Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5E728E0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782000394; cv=none; b=iE/fG5C24B0PhpqEwG9FQlpOR8uuwBKi0OcDdzmH0JDz6Jz6XPMwgSLEgnUdRVS4Pywz/WoKSn3x2mB0t91qw3dQqVvY3CvlYCsvYZj0pDF08C45tqd8qclPWB3AwRhWiTgjh3YBhoq9Wp6SUzCQe3mT4blTkTBH1fyd+/CLBjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782000394; c=relaxed/simple;
	bh=Gzv0ntfW6gWUZ1RljXX6a2dNube/cq8o04bRNEKUEoU=;
	h=To:Subject:From:Message-Id:Date; b=KNhIKeREZbMm/2+i46+4mcN2vgtO8U+X+5cA6BFp+5K3z9QCVAuaUyeW7k0gxbryCWBt7IkLilVTwoo3P7fzaq4ayHNkq0/6c8NMrfwtG8Cqi7PAzl8eGMm7NFrH3yLfLvvD2d0GOZcjVzapV4a3PlbrTnLajSiiDjhxzVRyW6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OH8I43Pi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OH8I43Pi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACDFC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782000393;
	bh=Gzv0ntfW6gWUZ1RljXX6a2dNube/cq8o04bRNEKUEoU=;
	h=To:Subject:From:Date:From;
	b=OH8I43PinSXMDYsPCvc8Rvoxm7Ysv+cGaSArIUz8fc5jDMi0HfIHpURPt6Puidtel
	 EhEbVToMl0WOL8EJB6gsqFM0MRE97shIcAKEz/1L+6cRKkjlKI1mjx+r7cTEgymChc
	 rBMXEkGJcwOigqtc14kdA/0vpaDfw8m/Tw7FJoJTcF0WhB0waPsJAEh/G/b4ZrMA6W
	 oF/boW25CqWaPC7ChKiPdQftovHlnk5wcOuU8wsRFz/sFG46qn6DpdiC4ZVX0MnAg9
	 fqm7j2ZSwgwnWbhEiO7al1AVWTEQWHAtTaSGRTSDwaOmMlr+YZuuXNODH5KI4oO9Pu
	 ehP6u3orXA6MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE112CD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200039369.20442.1928231255242381556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d523d5e07c4317caf68c81628bddecf82b7d6ad4f04aa0778ea67a629ee681f9
Date: Sun, 21 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782000393
