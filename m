Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527D1470E99
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789929634; cv=none; b=RMy74/prCT4+Y5lY3zyriZgZms8Lo8avc2fPannC0WaGGz9/Vh0ZvRn9FVB4/X2vG0orzwYWAFfv9R0BZDqlnFIjfEdrNYeShOmVD4rJScRSvYx1V4TGJBHFV/bDM+8D19bXyZJASgpouwUAoqd0Nu7nRc0xFA0mooc0U9StLdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789929634; c=relaxed/simple;
	bh=D7XNxkdqJ0mdmOOvXZYYaGmhpKqjibAzkN8j4Zb871c=;
	h=To:Subject:From:Message-Id:Date; b=V/2zauR7/mPiDQcNx8M/2AJjhFzZTpehoe9A2y122uiUJk41gO9Q8JzZSZIW8Lv4WbByl7sfmaNJzavQdWw/S8qfjYegOVP3Cikv1mxys70btdz/BO38EY19sVwHfHEwJqU6DaNgE8BBjKCII6p/VsQgb7EpAfyuXxwDKYukGp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0rKIoPL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0rKIoPL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1917C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789929633;
	bh=D7XNxkdqJ0mdmOOvXZYYaGmhpKqjibAzkN8j4Zb871c=;
	h=To:Subject:From:Date:From;
	b=b0rKIoPL11nTPkz47VyBosO4fqnlphiDqNFgpZ+SbdQrm50CylheBxjwq6XezKZee
	 Ye8U+9MFQq1gWLqXDqT21qM0T5ySvAzrnPYIUhiIycHf46Q6PYLNfME0ZftuBCESOK
	 P0x4utafblWc+3qb2u7rNaoJk/VSKonir5L3/rdLRN7SSjYVSeIA97IW5FwYiKMQwV
	 ClLYzl56Z+rvpCU1fN2y0XF20pN85X7dFGLQcUxtFsSpJqrr743WowEX6Bt7ED8l5Y
	 8rLzrhYyRRRA+YVRZNtsg8pXYe4hfwEAIiD33rSbsapueG50aUUrUYKsQk9WYsR7df
	 fxk7SZSri0YUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC28C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992963370.17722.11439231756830483882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3f5f8dd4128db09ca1a2b81195821ede2b6908e89047bd091d9b718ad33e6b
Date: Sun, 20 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789929633
