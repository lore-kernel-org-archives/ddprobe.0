Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F2833F591
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781978194; cv=none; b=LtNYdO+lJd75gPHB6p+/iSrUUVhDbikNJEHvdSPt6PcqZxf2RLIAnj2Ft3uNc1XXKhIeEihyfYlUuP0oSEYuQEF8BNkx8D9K6LubpW8bxbsNvfZ8DBmd/YtXB5oCJuahOcyWpW9nNOc1VHDSPKzN42SJLYSbU620AGguox2nYSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781978194; c=relaxed/simple;
	bh=vAkquQH5Hj0wkogpupOAzhGNDN111Hg9kRuxNRzt7Sw=;
	h=To:Subject:From:Message-Id:Date; b=XnOq5VsKswvKXUJ7GGKalcysHycW9qlnkAkjk+9rKJKXdky+MNwkAG9XvfJdVoNywOXhKKGz/EU7cyB5ONLAouOike8vM+St3Ikaj73h4FxbCy6snF4cMXv6od+0yYc109yx6sbHUgJk71VzYtClmM04zkCplFQYWgaGnCQvlYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJiSThGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJiSThGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF7FCC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781978193;
	bh=vAkquQH5Hj0wkogpupOAzhGNDN111Hg9kRuxNRzt7Sw=;
	h=To:Subject:From:Date:From;
	b=OJiSThGpnp4zdxi0uRBwVHPVmQ+NQCXMKA7yoSOL9HQ0ywcbQsYsFKa0a2izb+INA
	 Lp5sKn5BEHQAu42u9gMrOL4zrrEWpn5y0iIAMrvnakMYMhexIHTWbCmrSapAnIl06w
	 Pjrf0c5oN/FnYFWNK9DQfE3g+fzjdGcRXmz1SOAk5kkPvXCgf29j6JJ/yAFF55mo9b
	 GSR9KOr+uZDqDBIk91enc8NIZwaUTj5Hxi1/ISBk+R9IV2BdE4zfeU6oj1tD19lded
	 6TURcTXXyxrH8e1mYn8Ao7RJe5G5jvEVzev5+aFupi13ZoJt9eZxQVPyaSFxHq4FJu
	 3HWr7rkXosBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF00BCD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197819369.23168.3680514094401589105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d818b550312cddaab587d926b21928ba519cc83dea7e77666e36c8afdb1b2910
Date: Sat, 20 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781978193
