Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC671487FF
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727246154; cv=none; b=EYt2xmz8rcrsIiYcr/MKEC9uoxmetHHbjkmfvLsxiAuWiM56JnJx3VUrFSUQygWAohvWQ5azKf5kL2GGPZ8EefConowpf9vLdqwzmAasSyw9Ir0YptSXWzCxqC37GodRKqyCHSpaB7TrONmFKkeClTKl9s6JPcaT3pnf1jq4Yq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727246154; c=relaxed/simple;
	bh=CYf+M+uglNrg9urf+UB5HvuKlYoAWGOMgaBv5lYJg1I=;
	h=To:Subject:From:Message-Id:Date; b=p5WDUV6xxe1ctIEMp1PvlZZ3ckxa6cEtIRefyLb2QZeIBa/uV+Gfc8SLn5PjI83PyfN7+RIX4Ldd43d4QK9DJdX1e0VCGvFGpmurpzRDezRX+uYitaffeB83a7yJU4emgZ+DuqWNXN+A+iaZwBYTkdq1filUY3SyHX0XB1zoIDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBBI8FfF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBBI8FfF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A715EC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727246153;
	bh=CYf+M+uglNrg9urf+UB5HvuKlYoAWGOMgaBv5lYJg1I=;
	h=To:Subject:From:Date:From;
	b=nBBI8FfFfSmKtuvdEtT0MuNK1k0wV+X8sG5fH77VJQWnMwgi+PF2lKcPsMTNGrRGZ
	 UKSVQ+oj9RGVMdjj1iQjpq9VJJuHcyGxRIcqqerVt4TXAgpHYzrUSzZGchcuJxX5Tu
	 xtgDpkxGNvsh1yddFLytlBqH9Z2hulKssSMyltgoFDeFlyaQ6ukKhcClMapI772OK8
	 nVKKljQJGTEXMl6JGFzfQhuMoXlztNnSKsT3TYbNWzRIQAvL75TviUqQ1QnkEfHpQh
	 I4yYgNnJu5rXRR8wGrfdXP1xLHrZH5THnlP9VwJbiqAsDhfp5BJ0xkPVPRCwg4jO8D
	 lCM8XwK05Pv8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E08CF9C6C
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172724615359.25609.8359932735967124273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6da5f4f20eee4d1bb839925c88b604b6c4add20bfe4e48b75359dcc7ce0efc1
Date: Wed, 25 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727246153
