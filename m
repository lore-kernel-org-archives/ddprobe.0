Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C1E25A344
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744225794; cv=none; b=iYeyIn2rxhN4VY3ICYFoevyPJWyQRok0gXRv5Q+8T0JRhEwxtc62HbCmoy0QKmq6NFL0fut2ZWB9kUXjEG+4HoltOJ9Nwj1v4V/pH0J7F4oTn3H5tDCJzDVLAZMdcuhpvh46StEjUq9vBmjLgwpgX+FYVeFVrTa11dK2HSrX8HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744225794; c=relaxed/simple;
	bh=G59MALUxLhyiinUA0Rycy7SYeavBE3NlzqZUHu0+mP8=;
	h=To:Subject:From:Message-Id:Date; b=Yf53H5CUVk9pmreo95eXt97wxg4YrIzGQb+OOgrZwtcPnpLGbRhK6tHWIsxRVfuIsUjoShl3G7JberkamiW6RyU4mXtPJvvSh2pJKUZI6F4geGA9oqDzF9vTWj6dQBmg2vnuIa1hZRw2MrfSj7LHruh/sIBgNyOxf+A6wVTHTog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tnjd5+47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tnjd5+47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E4AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744225793;
	bh=G59MALUxLhyiinUA0Rycy7SYeavBE3NlzqZUHu0+mP8=;
	h=To:Subject:From:Date:From;
	b=Tnjd5+47nm6oNUc7hQEV4UZZ8pADSUtrMoid8ZatqrHeILjaSY0FEYgtZtvFEkvtw
	 A4XlXgpQwU5apstp/ofPHPGSMN6LQVwouW1WKhGRrDzLe/S0xA7SKX8TDJh4FFbmmR
	 ioGAm8NFqyn9yC+yTotfU7EL0Pg/rbduMVYAN8P67IDeI58tm6HzLdKdsJjULCJNMN
	 WTIMsqkzrXtdTHEQgvxUsGXJdpSHp6anmFyjMJISPD8dUc2QGGPyJyIq2JqNRZPyeQ
	 t1JTIVyd6WTeFppPpQrcIcy2WYgI5nBadmNHWKYogsgAUK3gX1v9gvpCPHOlz04i7h
	 xB4zFx0G3wXrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953ACC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422579360.19472.1272334076777799318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd2c820fc4644de3eec14e19733f2cc16cc1f08eeda673b3ea76d08b8329091
Date: Wed, 09 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744225793
