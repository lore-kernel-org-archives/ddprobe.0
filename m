Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D0C24DD09
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768020834; cv=none; b=Ro1K1ccbPzU2oGHjJSbM5OJWnPpeFnb3Hqe0vT9zxvYpup7xTQQaNlcy/Ic8JSfVm+PWtHxJI2AXZqB823TFVtBeELWZmYvm4c6XGcwaCB8w5syC6ADs8ZpvhCFKiXiUsgMcs9e7G2hnuEg/OHUTjYNKZdVbbnIRkLBg30pM8oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768020834; c=relaxed/simple;
	bh=C0SOFWTaWsN9IPzQ/4RBXmZKHUsXoz2HuyG2k3fOyKg=;
	h=To:Subject:From:Message-Id:Date; b=BqAb/f+ymUDKdFtFq+2DZulICpQUDrSQd1gSpB3z/z1dFGFh49X9P9rGcXx6Of6nodO/T1Ve/SufLLilKedsXpu6/9C7OCeAez2tnbY37pEKTvsEf8Fl8AMTvRK8QIukH9L5KTyYXYDDgQjq7FqXjia/+N9NE1bmaHmfxBXlmr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4Rf1Vxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4Rf1Vxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A4C116C6
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768020833;
	bh=C0SOFWTaWsN9IPzQ/4RBXmZKHUsXoz2HuyG2k3fOyKg=;
	h=To:Subject:From:Date:From;
	b=j4Rf1VxmGVe+5HpgLIH1oP0NjQ0mLzSX+qR41HSEZlTWohhqJ/JJE4DBrWd/6xHlU
	 3kQPEovBsjBeoHaCJX7BwUfUUG+1B+4LIuw0+/6ltGi80gbb9sNzhNynDaNUGed/Ox
	 g6T5o0valnVR97xXnT0OYd2/0yyhax7ExNVWtue8pJy6d+jty2mONLJLPjtHEFyVlk
	 Tot90UGFqaq/FPnAEYUU8flkCFgEt9I+2QtSbnoZR74i8bvxIMysaGAmmqHLTqCztm
	 uIi1jv0eC186SZ8yYgBXGWfRthVeraIQ/sI9+Ica/0F7IlPoEMZko7SSY+NOCSmrlw
	 ly3J1QOqQ66zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F9D277D0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802083359.10113.7478055129552375690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab0bfe2a9c3966e194cf805833196a9275586b168ba1c063402090031d7a6a0d
Date: Sat, 10 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768020833
