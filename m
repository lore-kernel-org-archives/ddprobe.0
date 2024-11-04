Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24183189F45
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730706954; cv=none; b=UeQ67hhCdyrmmYp+C82i+Nda95bgJ8Fr7BJKKXtBX9DzPzIxWHwM/xxBSX9kzw75nmYJMYrUapphHxlCOxpzSoElkhehKlm51vZuTdZ/wnDPJHocn5uY53MZ6KdC3yXbHZQ2Ru67MdvHYOrAhjlMhUoEEFMl+Yav7D/KxUk2lic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730706954; c=relaxed/simple;
	bh=yhvQhzeWVQ2qc2cDdM8Swi7XTOFbyzB2gsSiPCfZaVU=;
	h=To:Subject:From:Message-Id:Date; b=jIHfEE6OvSwNaWaoAONabBnYsW4GR9596uvghhGLbpdM77hsH3TZ5LfImDxdRP8JJRzie1jkZu2aWBbvczH5OJ294nk7F/7GHV8D8RbfNZrWaoGZtYVAxwjjyiIOJBPgtIkRQyTRhVjfTxZaMZo6XjK86Ztms7D6IA3PLHWLAvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JY0HtMNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JY0HtMNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B133FC4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730706953;
	bh=yhvQhzeWVQ2qc2cDdM8Swi7XTOFbyzB2gsSiPCfZaVU=;
	h=To:Subject:From:Date:From;
	b=JY0HtMNcRPXJA9R97fOQzhhptju9nFnw6cnYXkhO5E6syEEMBhMKut733Y9aQztAR
	 nXF8PXTbfbND4HNRyhgAxFrGqiXqKBzhVgLRlQt2zqKqvEtizXw4t83EFH+zaZd2gG
	 OEYfdKFbRfmfNhPL/4jK/HrSC59Vx6OpER0gJGnoNxzihUJapQy2gwUG6TYLlXWs+Q
	 6CTbqn0Z0kzyApXP4V6HdJdK8cU4U4ILhjAzynEAfBVqT9MLhT80SlKPRGZGuUCnaT
	 ofnSutEQcI2EkF0OtQejEAmZLNJCZHTTU2Ip1+OwOjdLfhbmzZA5GRyjo9Uh03atna
	 B+lg4+Lp695FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A098FD111BA
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173070695362.6456.10855038985943460816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e81b96e87ef18a457029c50bd873e9c1db641492563cb48c65c45b03ded654d
Date: Mon, 04 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730706953
