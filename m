Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAFEB65D
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718920823; cv=none; b=CUr4FKcZyqgx/y9l4sTQcnXoapOOmLrmnaS6HZKuAYiEMpbzNGxNnVMMvouDnDwsCzmv/EPR9LYqyjDd3DtnFyZkeUDOBIQrgwaDk9z2p8HIxxqLdUWi/gmQObPU92G/jzpZTacZsi2AF86rO/qYd9Mmj5rSeLX3pcq6b+rl86g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718920823; c=relaxed/simple;
	bh=gy2LLF92DQ05N13jL3fnuTmOzG2U4O6kr933ZrfHg6c=;
	h=To:Subject:From:Message-Id:Date; b=AyVE2fmusQILqYHnMqxaKfXPtMdi10wQCoHbjl0X044ZBgrQuw52z6uv9L5EcWOSznmQuPGjnYraCxYVA6dqgURAESM8bmRkwSRxrnO0vXYt3tm6rWSQ+GIoe86JsxK78lOdZeZYmGQSHnthh1Pby2FM73Eoop//gq9pdJjqXh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Br1+jHLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Br1+jHLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E53FAC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718920822;
	bh=gy2LLF92DQ05N13jL3fnuTmOzG2U4O6kr933ZrfHg6c=;
	h=To:Subject:From:Date:From;
	b=Br1+jHLAjJW4C+iyeEU4f516FvUgPK4ILgQXt2rJNY4pvvzZrQMGsnIHM12gplvZD
	 bDHoM9PkYEHC3egDN7RpwaHZsZy/dsgSICk+YHoJe0zJ+wWb5GWcesxEINfIlrJAh3
	 V5uFRaRYb0/egKLeIw4ViicARe1yya7t9Lk02lERHNWQ/eUwfRFC0CRMHTB6I+wx7L
	 oPnRL0FEl00Et3KsNKFSrgJ8Ji/4DhKkYak1mbGjzoICN/eJJDKRrYwJs2Tec3k3Oj
	 YJ3m6ZkRE0WMq6WhaBY3uUm9ziKF/cuGL02HIrqY05fn8wlqfnAcIEuRvDH8wYHwag
	 6AvEXUhGNZX/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD670C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892082281.23142.15085617145274027456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2b37a1f06cee4afd5f76620fbb75a94725caa0f169815a60b5e12e9ee3fef3
Date: Thu, 20 Jun 2024 22:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718920822
