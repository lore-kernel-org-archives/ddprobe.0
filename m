Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C328286430
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777447654; cv=none; b=spNWYLuhhyW++0410SZhKN219jnNu2P05wUsEVAq/XqSW64Uv1P3TIHP3/vaNpdRbt0WZJq4zRri6KOI5aVXbF8SCyK+EleZxZzW51ONUGscvN2weJX2yVwUXpaVo49Ki1U1K3zjtrPz6B0fdOJmULdpoGIQ5I74LGVFFZL7nwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777447654; c=relaxed/simple;
	bh=nSIPdCZn68OgrSLnbarxKdGkqu+dtd8jFN5O/8nVMrk=;
	h=To:Subject:From:Message-Id:Date; b=n5OKq++yLdogbwrDb5yTgd8pVul3yhkmXNvYD88NQrtrIOf+51Mh7Lufjh1vM3pFTF618BhK0Ysq8NmCMyHXFvBftDqYc0BxRUFUFMHE3hpgDuuEtv4VVpEdTeCuuGiTgb4kRadVwI0eD6MVXbHht8ngFVXRlKNBwhhhjmf8WWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTdCcMQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTdCcMQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA53CC2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777447653;
	bh=nSIPdCZn68OgrSLnbarxKdGkqu+dtd8jFN5O/8nVMrk=;
	h=To:Subject:From:Date:From;
	b=tTdCcMQINPu9GbIpc8qzAHpR0GvsFuzv4XVQ8PL05UXuXFWcPz9KYmpypdRC69IdB
	 9YFeUUJP4z04bctRpJj2L+H5plPMzHIvGqI9yHpCg4A+kKB9PCXrZntj3DNUuQcWj9
	 lSu6Zf5wdJRQkFwUcHozr9xpoUKIj/xB/SzoNyyrrsZOomofAksAFjEGzkkNF/gQ3t
	 Nh5NS2+0nwMu18VQbf4ssNfEGaBrtpp/sXptkVI1jOudh0o49oDdqGeKNqkNJOH5ET
	 XtEaFgL6ANrfmyjNZPLZsrqQlLGFvD1yoMQAU5jY2p4HcOxZQC7pArnK9uQ4PoiNst
	 frNf8vuimBYEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90C6FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744765368.12688.1944091730585090145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c24ac7b09c29c17a03d72f3b1720bbe430bd9cbab4d9b2309a70ec7c0b717e
Date: Wed, 29 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777447653
