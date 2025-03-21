Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7821388
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742568594; cv=none; b=FNyJfqeMiuKBa/TomilaAwSw0jtqIVb2tdmd0bVHyLVSeSfm3QpAbIkRRaVFvVv+Y1YV/9+zrIjCltan3VE0ONjx/Fyj8h2/fcRx433/QXGgGOtfgvkvW56W7P2BM/unF4pNAa90JQSO7Ay2GQLAPNJEP+jGx0XBNIs1f66yzJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742568594; c=relaxed/simple;
	bh=5uC0m+LvJONftTSKa5s0ApKxyYVG1u1cyI2eMza4RaI=;
	h=To:Subject:From:Message-Id:Date; b=XUD2lX4ebjDHorzgAmSCH/WPeWmnpMMa5Eb3qW8fQprUkNZAbySu5hDD/E9bnffgBGqpZwlG9hFUn3pajwAih73Qx/O4qK/hncboMZBDGyTMeEQ0zqZxJn7jHFcHKzG83WYLlOLfQ7IzLYudsKAlY6fFaogOvAmRvz/TrNe18o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfCRRTbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfCRRTbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11B3C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742568593;
	bh=5uC0m+LvJONftTSKa5s0ApKxyYVG1u1cyI2eMza4RaI=;
	h=To:Subject:From:Date:From;
	b=jfCRRTbYc68XstJv/IaLtMC/M/GljMzf0L7QlsZwJbECI4ofygY8/BjQeCKoJbRpV
	 gwiBOV2TR4RSIc0xos6EjVT4fd5rfI/oGl5kDFfmW3vi5mBk407i3FzNLqkY+hzzG8
	 YUGRqBOFVLlxahseFhLyP+MTbcTQKpr1RCBi05jf3Rju35qMwSVDoDUoQzGmsqcCSd
	 tifSXvuShapy8mKzx74jtwRkLy3gJSvXnBMJCsGv5Pa2o8sgxqmzxQ3NaXTfrDxT75
	 EmtbLVHpTzcvt1f3ZB1I//qn9F5Ct47jkkgdksoKwf3ckeESwBF1NwBREfilyMKJiC
	 6zM6ClHQlSo8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE8AC36001
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256859362.16689.2051817704466035679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4026f3b4e0c671d89de31fec2d64088a32afdfd56a94defd42b981fe4194bdc9
Date: Fri, 21 Mar 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742568593
