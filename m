Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF8F1AF0A7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755752394; cv=none; b=kLQWq9DO8/v+9KlH1dXpH7JSS25Cc6JtETRnQt4yjJ1bm81K1TAKyOL5ZlDCtKaITs0egh/E4RwbMtrLb5auYBfxo3DtWBz/h6aCwcP+4mWSzfLC5jzL9daz5/KzZJvCCcVfHOPbDpwa+r5xHXBXvolNpOdiUfN5Y8Tz9KE5tk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755752394; c=relaxed/simple;
	bh=kfTVIM/0elouLcmIETf5hJ7LTj+oDXTVrgFvpJfWmkw=;
	h=To:Subject:From:Message-Id:Date; b=i8FhPaH1XBFW89t0DrANLmjEZm8x1AIpp2yJNLghSLQNoSsGYDWHJ5aAHK5I9iPKgmnqTO+NAJXJf9cdBpZYrQbmmq3xxwDrHJuc+buz+7+X6/yGzn6Ueqf98C+lC0udPtqQlWUqbYSlGXrcbpigGacKb0o7x7ridoRhnQ9qJ0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgD0GSu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgD0GSu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42E1C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755752393;
	bh=kfTVIM/0elouLcmIETf5hJ7LTj+oDXTVrgFvpJfWmkw=;
	h=To:Subject:From:Date:From;
	b=jgD0GSu30iYpTSf+dS5OjMno61i3Yeqy0gtmxZK7GFoNsMoftHSt5O4KeJ+rdv+ej
	 +hEIl8a1Sm/UGznDH2SKM4ko2tFA9jNueZSE9VPW1lAClvL2vNDxxlGCg8hfoG/Stn
	 zSmSJ8csXUPsMGjIIU+POXiA9ilrVVoc5kCfJ7bmryqsyWyFDbdSd+svVzJTZOHLBO
	 c+A3ulaWzkWBbD6TDzihh7NWfdNxQK9t8McvUMoaFVYM7EGX9+8QUiaQr85tfT7wKV
	 /mF6bPd475fDYTm0TFAIhSmn6zyVO0JVDpohUH9FvPmzInOdKI7UMgDezux7wKMVpW
	 3tMJ5zOFh5M4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F2CA0EE6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575239357.16693.2405819318366404806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ff41c179545fa441f316dc5d9d1ad85f427215cce45ab2e8d857f37f4e90b5
Date: Thu, 21 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755752393
