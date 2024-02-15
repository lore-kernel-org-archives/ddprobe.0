Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350EE623
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707958097; cv=none; b=gdKm7fUXuyGu/2v9urNoozIxf+ToUQbYVP9SNb3RpetrPAJu2cFKLv0dl1XQrANpwtt8sKx525GZsouDjTVGqeTKahFjEhtgbAbP3HObn7l2iOGFc71zoc9BKq3O4UQh2ZwMMNT2ORNuMtjNR1jx4voHaiQY0/4JAQgnMM4zwrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707958097; c=relaxed/simple;
	bh=DV6mg982REdwcrtBijzlM/xAgysTP5FoaSVmcbpz9WY=;
	h=To:Subject:From:Message-Id:Date; b=OYh2BwchPDUuZqqaeNr/+B9WRiW1THBHV6TYEPK4Hs2CYzLtPj463AaNOqmZj1gbnWA2G7B5f5DpNMvUhH4HWXVo6MoQfCHfaD+S1611mTstFWyKqeZzVgcWTMMESzVq+ououQtUkmu9u2eVbvqLfdilijtA0vYcKcxpkoVhAvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ph5mgYsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ph5mgYsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B9C8C433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707958096;
	bh=DV6mg982REdwcrtBijzlM/xAgysTP5FoaSVmcbpz9WY=;
	h=To:Subject:From:Date:From;
	b=ph5mgYsakrcmuyJGMwKsGxEfqGKHKkuLnM52Qd4C9YQjt1KlOvPu5mCcXgTjPyzR+
	 Ho7qBUvyKmB8XuDvQll5wV7mZGxoVlhopVN0Iwys522FCmvq/fg40dh5W2VrXbf1Dx
	 G7c4bEw7LvTM3D5oVLty8BqO9aZipXAFV1a4elCLVueK0D9ZiU1jZc0Zi7SH7xMASV
	 TzMdrPdEfMzEADMzSZy1K7bOnyaZcjjOfAw3SjU1gj4xjU9Pvjo+/ZI8xumMAJWwU9
	 gv5cNCAb0pC3ZVqMlaoSk7wkHa4ElLwNC4IxsY5GD13dwzZv1gjxfC2JYzqq4l5bH0
	 AmrYDDAc6PzqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 748FCC48BC3
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170795809641.18892.2046745312985066470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c39c6e78f2a114ad30b7b26635a112f895d5b686bda51d79dd7a5a33f62a59
Date: Thu, 15 Feb 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707958096
