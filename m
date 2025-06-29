Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E6049625
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751222393; cv=none; b=qbtrxgQvH6qlkkeP0F7tQi46jx3ibJM2qV/FZMI2Po1VyJ73XU/Cem0S8SwXklg2fCXuXZJqBLC681cSxkmLN0vEifdmE55ys/SMhWpv/K0nBRP4N+o7zb7WELRylGQAt66tEQwGLXsH7bmcVk27oR5ap41ivqZYXkWf9xVqV5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751222393; c=relaxed/simple;
	bh=B2CjtDbJUDGHAtR+BypFWk7QJrgRtjHON+35F4DX1Ic=;
	h=To:Subject:From:Message-Id:Date; b=sRfYj4asnOFMXveskjiFsKc7yN+Kz+UlbJP6kj4xVG9W/GkvBuUjTFY2mApxwHYA3rjnzGeFvK255cdkhuKnhc+pM4kHhoFv55RJGO2B21Us06fE7lBNiL3CEj06RXrSX2LvwVUXy+jYiZVQ0KYMH0oVslAZ/iG9eszPsSdXa88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0tuYeJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0tuYeJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D099C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751222393;
	bh=B2CjtDbJUDGHAtR+BypFWk7QJrgRtjHON+35F4DX1Ic=;
	h=To:Subject:From:Date:From;
	b=K0tuYeJh+13/X1o+9WBCGQgwg5ALJO2LR7xcXd3gkRpJVXk4qJ2JilUHXZJw1BJhb
	 y0W8AvQ2iVp2jIo3vffPhEDrLW6me5HpN06ehPKOVaUmf0ovb2R0x7rbMFi6kpRMSH
	 JgCp82jJIrsSeNY3L8e34pk890TKoKRaLLMJ4Vphy+HkyPNmZjebQspza3enexyY4g
	 343DRZ5BFHO9T0SIpr9BGaLKLL2g7Hw2KeCtYg3mv3Pnr7sL67BXui+hRws/enhLOT
	 BiY3ioZEPctC7b6Qsw24uSpiqoCVn7ufbZSowvc2tBKNtrQKdgCa1b+hGxDY6peMnm
	 wMrXUZsfpTEnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6CCC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122239357.18490.13228580121150724138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc4ba535a94125db8731b77b53b3f907cae107dbec54d1f6588e368bc3a50ce
Date: Sun, 29 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751222393
