Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100591FBE9E
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759788594; cv=none; b=FdM6W28+FeuLfztuPnZRBJflXg0ZFyx3oDBiuJbZ0yxbv+37DirZwB2ECa5JX1BA5+7m9p/Qepxiuwt7TtianJDswG0oOPbhnWdD+XfoIBPJ3tSf1BrCk3YP802jEPJBqmB7dKyYx6E1wI5x+ZBRIQL3xFJxTMsknQWVwedbrrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759788594; c=relaxed/simple;
	bh=lu808a11tt6LkkoWEdlF1TxKQ7+j5AtpG7ou21mEMGg=;
	h=To:Subject:From:Message-Id:Date; b=B9Hp1o05NSfKDTdzLDeHQoNeEXhoyN0MAK1SyxyZfm0D3jIKaVFYIeGCEcHJ2XQGvR0iAxpsVyVuW4sZY9Rhclb9WDx/RLQ76n8JwPp2BMAt4YFgJASl0GBzKXmWFiWlCWIxCrOniHWRBSlFr5ZzRV8QkLDigNgdhxG2l1IFl18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpzbqhI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpzbqhI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D62BC4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759788593;
	bh=lu808a11tt6LkkoWEdlF1TxKQ7+j5AtpG7ou21mEMGg=;
	h=To:Subject:From:Date:From;
	b=tpzbqhI2kPFg7M4G8mIWguxbokaeestyxFkbBIEQet8zgHW5NShPqr4gWVps0jETo
	 iD9vVf065dICH9HMnmXzA32dI2s4EezXiaj/cBhZOj+oax/j0K4f66XPjgZVt2xYBP
	 c2lJJpEo2qCHVy3/UeK55hPzdSvADhmIyBxkLYBExP+II7ofx7GQBCM9Kg236Y/rPC
	 uW90AslVTfH87SQEkeE2vJ4weF8KHPMK6/6cHWaLRUYVetUzfHdzI9af2B++xSvhw7
	 zJSUCK19lbb0yVhE+5i7Ygk+h+g+mmMalvj05xws9+rvKuuMinz4eEhiCuc6sNCVwz
	 x/5kAwyk5u14Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20DCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978859357.29846.3450640791206391698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2a22ee4f6a6830671b33d5c2fa7aa6142bbb701010f62329b944f5a468ffff
Date: Mon, 06 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759788593
