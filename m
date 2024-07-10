Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EE517756
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720581383; cv=none; b=QXayWUIxmvDeOOZXtG2COI/RomhljMRR3Bp2umoHr6W5g+bPgEEeqnbWb50LxtWCn8k02lAi9075D2cPh0J+3Hv7VUJh5atvjfXW0daEQ06vyAUdcgVwO18nfSRSdzYmyexD0vUL32R3iPN2X2Ic1PqbThWtN3uDPmvpf9kYprE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720581383; c=relaxed/simple;
	bh=4Af4WvlzG7IPtt94GT7yHkOTKVVx1uv9r/A4/LBvTig=;
	h=To:Subject:From:Message-Id:Date; b=Kc4YbPL+fqEGXDZCSM9e8nUpM+Ge/C5KrovwHoNIU7uB0HtjxQh6ZCj8XKIvVR7exzj8U5dHdiviJy70rdK8Fe1novX9GMknU+lsuUfxDRyeO64J+RaCDDf8c8NnMRGSDxKDFFaaaOlt+cEWjxl71Hcj+Khi8eIGDFwfIuwS/Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glb9WfjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glb9WfjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBCEDC3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720581383;
	bh=4Af4WvlzG7IPtt94GT7yHkOTKVVx1uv9r/A4/LBvTig=;
	h=To:Subject:From:Date:From;
	b=glb9WfjSwlE4/RHik6bpk2szoZIOfXw56azy1PNMA/AShSbkDZIScnpFBvrG475jY
	 Z1mEIW2wdNdz8jeOYze8ZlQWa5lBP2H+A7PEaWMEBZE7kxzSr06nrNif9zo0bSaZ+A
	 LEkXxU8A3tJwE1aQmylIgu7xRl1w2aRKMUgtvkAYCZW09el/CQz3JiIhk5oLzFxojX
	 BQatYtTYnD9GDKxhXC1CbG8LqC+RwLnCe9mmYqO0QBW2JyNrFKu0mu5CsXnZroqpum
	 7nJjfA3O0Zpcx/uW+EJ3tZBRoCLFfryAMOabsUl55Qkeyveb/GbXob7k4I8kpSZ3LU
	 tEs3Jc3YCQBpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEAAC2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058138280.6677.11821853038184475858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f86bb483914d5af30c7a54d5e0bb762b96f4f82168c91515dae3e9fd9804a1c
Date: Wed, 10 Jul 2024 03:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720581382
