Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B133DFC95
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779089434; cv=none; b=k2nqm3WWDNJ+2xeWXkLtq+sqEL87VF7b19LWwn/23VIjfHQwM9PqhqHoE9Uq1uJ9vSnod7j4Z6hz1+b8YVxiHf1eEDJdch8LgTMVI6Bhk5DDvM9fzSTyrMOUWEtv2V6ZSpdEcNBd77nVjNxkoZ4vJSIf7p1rv9dvPEta7YFRtXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779089434; c=relaxed/simple;
	bh=kf3ixGuoMxhrwdK/mmYZTj15pFNKO/xtbnKbBCzH+bk=;
	h=To:Subject:From:Message-Id:Date; b=rYcJk+w4TLhS61BS9ko7uAdqCuHPAsJNVgLYWD79OEmdhIbzYrC7rBBLZ/u4stP8gF0FhB4W4WgcyT8lDkCL0zIWai0oU5nhCPHkW6t9DaYunInIM0yiGwyXoRY4AMluPtVNqqEi3rtwpOEAKTqfffH51QSbSsnEBJF55SMYEZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KaENMm7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaENMm7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1892C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779089433;
	bh=kf3ixGuoMxhrwdK/mmYZTj15pFNKO/xtbnKbBCzH+bk=;
	h=To:Subject:From:Date:From;
	b=KaENMm7CDZt/B5yIslo3mYJolxulEz9ZDcd7kQhK9imNpwzc53ZA/1g4H7Vkqexp0
	 A6T+pjB6D8vs4K3BZuw+tiww9yMd9BwZHnLoG2GN3iWbwavVXorNS9e9wSvteJr+1J
	 l7j4WCVlGQUdyUYtFmtqMn87Kj+e+AIuk9HmN2kzgCwseTceAiTMAiSxMYfWjhAqQU
	 yR2T15r+ILCQekzy5U2QEYT95lf9NRZHzzGGlpOFxvS5yyp58u4x5zW0O2JGo45uxe
	 nuVC0fEjWnXuu2bMd0PXLroinAUrHZd8fzuz3/IxwiOa6Sp3ElG2TUmszqyNy4tels
	 mp4nN6X5U/leA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD57DCD4F48
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908943369.12128.12575408540580641704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b01e8b54bbab75608a8789ecb09b9613e7cc14c05f806caf3302651e7c095e
Date: Mon, 18 May 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779089433
