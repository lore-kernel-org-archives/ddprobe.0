Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD762F692C
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762479594; cv=none; b=HFbaONtdD8qZuI0bY6zNS5RSa8EfYNBM57Jifhopcnjwdq8ZorxOEwE3yopHmAB8mBf9ucgQ3gk0b2rOW8uP0cATf+Q985mhxD3RUve4bjv/Pd8ggPhWXE9GGGzwaNDCilokXOsZwgnU3HpwJUgIcxdMB9Ge90qLYMt2Pe8ka4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762479594; c=relaxed/simple;
	bh=DYqsRDffUv5cYKQK+H+S096b4hxf7GxBMW2CkqvY7jQ=;
	h=To:Subject:From:Message-Id:Date; b=jCoKu+nGbMlLIFyI9psBoRAnudokzCZpwGYIv7auFWmMsjWHzlMHUokjLc3aDFye2xiVrF5PPKJslFWgFQqg4PrWULkibIFg+wpNYWvo+T7MAPFRRaOqa8+VL6MTVutYxvzjRCu9+hxnas7nWZ5ggSP61WcJadzIhAOSe6IjurE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KaA/ZMk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaA/ZMk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A18C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762479593;
	bh=DYqsRDffUv5cYKQK+H+S096b4hxf7GxBMW2CkqvY7jQ=;
	h=To:Subject:From:Date:From;
	b=KaA/ZMk6n5JWEganl/OakjCo8/0UsDq0blaVbXuTHsWQv1itAbCf7REp0kMgOLhUp
	 YDc/J0cbhuQFXr+2MjbJkSPa3LK4Pyni3VUYM91XBVeEfnAL2ilgFvfBM7QsGvoZKb
	 SW9hIA8mEL8dEUfTJwybQrFtvtOEkXSYS1nS2tWFfxhB82LZ5+Ie2cOYxVZLyKYBAU
	 KZomWJzyCDO8QyBXqwRHSpy0ie+g9TStRwiOm/Me37F2/YGrpC1DCxQgfPvc1dzkBF
	 RsH3GW/+k3JHZS5VU1/2ryMnVsQnhvc9oVMwWTLTn+TXKegQVZyMpgbU1Z1Vc6TdBE
	 CXi307c5Z0nPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9610FCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247959359.30922.12069673616827332490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e049ae50d04cbbc80e40426c676a28380a49af0acf3db57b12a909574f80b477
Date: Fri, 07 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762479593
