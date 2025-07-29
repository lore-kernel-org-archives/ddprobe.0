Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18031FE44D
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753815593; cv=none; b=JymhJSfEZSYl0EEh0tHVEWBHgy6pzVYEUs3eaI/sF2tJgPtdvIi84OXgzq3kzK8hv9HGbIC4n4lH1gysmygBB5C9iBdhJbktehYwTeVu7I+9CgfiROjb6FHn4CrKBhqpdHbaSLqu6VIy6jliaO//29OR5k1RTFihp4eJtKuRqVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753815593; c=relaxed/simple;
	bh=/hx38HMmgBi5YTRI8BhSngj5ZYDYVxpyGdg8qJmgg1A=;
	h=To:Subject:From:Message-Id:Date; b=XhV/vL/0Ypxubr40Mhf7MpPAUmMJjmzF8+OyoBKh+uVtMFzFrX2SMbWo9gy1oiarR05NsYYgEC4boA2NQpxnnrsNJzrOISC1ZESqXOnLJUqPHp83bg5RHcgzNX3eE5S+lKwLtRRe75c27aKckSaEx5KpA34Znhti1RebeOJ5JK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Os3o40cc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Os3o40cc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A470CC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753815593;
	bh=/hx38HMmgBi5YTRI8BhSngj5ZYDYVxpyGdg8qJmgg1A=;
	h=To:Subject:From:Date:From;
	b=Os3o40ccB6V8Jq3KJeig/68EXoCL55udoitWgEkGw6C5glwCIOZZGASlkHvy6zMMN
	 k48sQghx638N/IETt8YLtUfS1gVAv7MLoR8q6AvcD05EtWh3WeleUmll+uzJ1ScjXk
	 XjlsFKxJBG/Fl4NFBPl6GsQR08ldnumGFT8sl1p8nL2mMW7io74Gs4kqpmBAb2bJqZ
	 ZsDltgGUpIi8H3aqKGkVJ3mNAnuN7rPJxcLLW9tqV+63Vq0AykJOs1uavIPEG1MDMG
	 ruzxfyfPNULcJDYkXSTyjcCD4vqlrw09tGzjuYaCDCb6jwZ0M4RGzm0ROyQegJbzel
	 hj+SmJIXkLWmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90906C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381559358.8032.8421238263981074398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6a14ba0fd670489b7320bd3f8a4ee41d9934612eb38e092c85d0cee52bc6d4
Date: Tue, 29 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753815593
