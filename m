Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F7417BED0
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746304194; cv=none; b=rIFauJV6YgF5ugEn1/QW6bgUWI3rzil9D14WoJYumji732d5eFP7c1sHTicuISvAenLxsi0WeCnWJHiOZ5DYQj2djb2utoFzKQu9WIcr1KudzaX4qvAInEGkWM6zkzWnHa/1DTnMZ7Rmh/UNLaPY+ayF75MTdnEYmBL80Lamy6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746304194; c=relaxed/simple;
	bh=nMjpu5Wuek7ePs9FumGzLmS344F2twie82ukAGJzT/o=;
	h=To:Subject:From:Message-Id:Date; b=q1p6R6v0UNuP/cNbQHayOtnYfqTPkEBMap17FUUXIvaxjq/KlU0dgEIIG+QBSSZLvN7SwjGQ4PnirmAeHH4B3WUw054OLA1iQhM6d6xWvC7hUr3VQIgxrcu7uuXkuCJRuQ1i1OyCgn9J0JfHJMBw7dtw9VbvtKOnkH4Rk+bjdqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KElgi/lG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KElgi/lG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B2EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746304193;
	bh=nMjpu5Wuek7ePs9FumGzLmS344F2twie82ukAGJzT/o=;
	h=To:Subject:From:Date:From;
	b=KElgi/lGHBMVAaO1wWm4jJuxvLhkrwMkd/7XWk/KAMaY7sXqEEZWRu+KFXh4b4P2Q
	 fxojvdVGhZvIlUv2RKcrLB0gPafeYBfAGQvlU/FW6BpcckOHlXXZnprSF109mXLB3E
	 5LxoHKtHNs94cnks+MJwWgF15c6h4GikyDo4XltiY7Wgtxbo2QMZdp/A0XiJUXdaK2
	 yNglNPryZh6PmAEPZfyOFZwxgLtzuM6RIWnbWQ+ZFLjjFi5ilHCbDufZsWJJXTSDTu
	 MUkVaB1eeXjKbUfR0M0kQgJRL33QqUEhTxEu7yXjjar+J52eT+vHaxBxoEVq32qntv
	 Zooe21UJA4ejg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFEC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630419357.5513.14984873135584469720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19dc116c2ff260e37a34636eadb760503d2e9f7e3b8265b49bf4545fbb921270
Date: Sat, 03 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746304193
