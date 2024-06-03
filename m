Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C50610949
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 12:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717416323; cv=none; b=fPb7ss9D6sLEhYq++hZcWPJXJjFngUqRZIeZDK3aIoSqfji2mOqMT6nr6j8fdytJYJtOmTgeyh+DuOb+/9+pjAqdbVbbezz90FexIrOWTxwHPidsZcDaahTnNapJK0sFyWM0VcuDypahAhRbq0qtfiBotM+rM3q+zV4ZU1puO3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717416323; c=relaxed/simple;
	bh=jpA2YL/6JGtA+aw5R1iVHA5PfL0DPBV2dtWO+w9ouHE=;
	h=To:Subject:From:Message-Id:Date; b=BEG8vnLjbIrdeFi+QRnYJIJ74r1PdOEN74N7a3CFOnNXHYzQ9xmmVRxU9N3ZP3wd4OX2tf/nHovu9AGbQxN+B4+0b8uKktGcuDvyOseo30+k0wJiv3CfUWtPRIikWAbO5x1Dh9Sobum6szgwJ9e/avMQTs3z3QJNxDUhhiqCdFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHeihWhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHeihWhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD368C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 12:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717416322;
	bh=jpA2YL/6JGtA+aw5R1iVHA5PfL0DPBV2dtWO+w9ouHE=;
	h=To:Subject:From:Date:From;
	b=sHeihWhDdSJC7kJ43HlTGhKJJQxA5+Ig/d5i2khQoZl95oo9CBgEQXlkLUSpiTMhF
	 MC5P15X1+7VUX+EDOIg4vppsIt9vmGB7iUu2zT1E0lWQ0YuWI7QQFjtcupxfCIlTVv
	 M3DW8rKofgazzgUF50g050bK7K3Qat492TrBFD1LzhMi7dRa2bYzG7kc8ZOxmRwkJO
	 aU1jM79nEep6To19ijpdJMAjF2H0BYpYgoFGviYvx5W8FNHpJ1bQ1FYg8DxzJNDG52
	 DTM3S+g2spgduVUVabK4c/DBtlBFe9yaVQYjTTIA+AyPQo1HMle9Uw06N0KK1uqPes
	 cNoeRB2CI9luA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB418C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 12:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171741632276.3856.8606088607538426483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36df8122aef8dc208876e388f85f95db02e51290ddb78431177009a3388cd810
Date: Mon, 03 Jun 2024 12:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717416322
