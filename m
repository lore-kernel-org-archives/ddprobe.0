Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F62AA59
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767490434; cv=none; b=YUKFPRNbf1Vk0CXm8O6WBkTBBwMh1fw4OteFHshic+/zu8ZER8/aetn1EYrxAJqHpwnYmCr/WUVHEeLARE8aPBLug5agvTjWUhf4ZRvE83I5+IkkI0QFsmyJ+1FFXznBW/9DyFicJrbr+ftcwCscxS4aCe/vgeReFnCJIyiBPXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767490434; c=relaxed/simple;
	bh=20o0s9UKj+DrEp7STsVCd1RgO7oT+FJ6xtwIHZo82qs=;
	h=To:Subject:From:Message-Id:Date; b=RyqzbbplIUKs62Z5wvCrPO1trLym29ARYUtjeTfrzep/jEu+Ts3f1evl4CXbr07IV5IXmx6xvK0TD0vZw+xuwHnWsdFG6gtv6bH2cyasW+hy6ahuq/ZhHsSfxqqGDQottV9mU6Bb+UlbkbTJIsEX3Jxbzl2EsOC5JZt0pOTKvnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsnROx59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsnROx59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E50C113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767490433;
	bh=20o0s9UKj+DrEp7STsVCd1RgO7oT+FJ6xtwIHZo82qs=;
	h=To:Subject:From:Date:From;
	b=bsnROx59u7muIRaFlFyU0+ZFDK6l/tBpdhXBKAPxe7wqhkPGyCPNwhet+ucf6QHOU
	 iBkzmuntvalEojySBRXfFRfC7GFsl3vn1D3muicK2bYS7ecNw3FsGAIpdvTxnNFQ5D
	 86NpCO6pQM0kvvN233y2o2mvodw966Iaq4B0sZ+c2Nk5D0yH2IgYbb19rYuHjX1nI7
	 FAUELWgNWnnv5YGMJRj0vC2ei0xD6Y64Q1LQ+gizyxImydTYV8tW+GUTnY2jNYRVUk
	 3k4Q5Eytcq0Q+sL8nsCkSskWt8LpauwTTT8AiDEQtnT3HCD8I4D0r1qUBde+N2J0TO
	 OubGZ9On/7ziA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC6EC2A064
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749043357.28893.6836880892674999331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f5787f6b00bedfc6d0c6ec5a32e142c3d7bffc31715b1fd7e220396c81ff23
Date: Sun, 04 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767490433
