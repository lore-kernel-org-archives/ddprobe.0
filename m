Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E963EBF23
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784654314; cv=none; b=fetA7VJivqNqTnNmqNKBpLgtLURpDSHYrdZiUcwOguzGVoF500NRfU4VIpItAzq+sVHAfa+LjO8rChfEfUWcY5Xa4gGq8bmza1ISOlHiomXISn2xauBFWZvwSWpWf/8rlrfN9nje0bkDQW+9uyv7Yidt7Pg2v65tqAgUefS+yq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784654314; c=relaxed/simple;
	bh=P2W//bNlWJ6uqj7zMpMH7EyiO2Xiebo0xTU7686y0pE=;
	h=To:Subject:From:Message-Id:Date; b=qUfD5uCouORDdjzQVNtPTaQsdo3CGLb8HIjqt045MiZKR7fBTVEtyBxo0UxLVZvM7GWPT/aB0BuksxLcZi3rASZ+OqOpsEoMDfWHUTpW+aWjGhY2c0Zziz6PJGSuLeCt7XuLYhvYe4h4Sf7pd2bKTO1mz7/tLfNHBhvb5zmnqHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8yEZDtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8yEZDtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB837C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784654313;
	bh=P2W//bNlWJ6uqj7zMpMH7EyiO2Xiebo0xTU7686y0pE=;
	h=To:Subject:From:Date:From;
	b=X8yEZDtOGzcJ47kUtP9i2juSEq8FrSlh4hsG9PvMJlQ77uvq7aUX67LcfdKl++sQx
	 kVf6z6ZLocF1ZbVhQoCDsu5JXNsYmr3Vbk2GWImMJKUnW2wMhzxeNSWV/CtQUlii7I
	 okeqeEa7vHyMk/dxJ3Umc3mog37ghhPe5VmNSoiyJwuQXtdIMtXzvHb3mVpTW5hbIw
	 XpXQHDy/+WVUG4x2vgHONeZrTmwnMg12hG2oL0kRvF4FfQG/4hz0pWVazXy3BVhqvl
	 q6VImOWNJkBeYOw89rbETGcfqVnyhbL4TNttIgwo4gVY8hNQqcZlglrAxzYJJSlzzJ
	 0IOfrwRzyLmog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31E7C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465431372.31691.16677922291082211034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b6ce94769f099b32d0e01b6885d3027833016cfb0d073ad00095e904aaca42
Date: Tue, 21 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784654313
