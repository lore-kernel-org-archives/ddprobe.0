Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F9932AAA8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784321314; cv=none; b=oZg0Eu217TZaslnZI7S4dUyziHCpVBAO/M49TJ69W+aaB//odgCWdYdcoMDFLK3o/0uVAgPp9/bvOtq47MKjblTUgNtTrfedyUTEgqCdy+HoOZszPguPaV7+a4S9Zdd4wJHHsm0FWkCslP/C3xFHNljv95KsySegtfSy5DXVK0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784321314; c=relaxed/simple;
	bh=02sXG/vUY3BZR5I67WoggPN41BAPx9UOrqv8BeEuB0w=;
	h=To:Subject:From:Message-Id:Date; b=mtKfSICn0FRGxTWYlAnyylrODyO6AHkDjsfDqAgqBTGc6cl1w8gvgNA0lw34eWPPi8xlFEuonPvq82qGzFKgErT529i8vIz3BTO2hQQH/YgxBKRZGu03IdL+aHQG41ODh7PCgEairsCLXmAuRnvsTxpX09xKYVQSfwHpdXUs5xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfrH17uW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfrH17uW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78FBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784321313;
	bh=02sXG/vUY3BZR5I67WoggPN41BAPx9UOrqv8BeEuB0w=;
	h=To:Subject:From:Date:From;
	b=GfrH17uWl+rcyyT2wm1x5GbFe8naj3ERSqWIecFy/ZW8wRAWG7ze2VC3lTpuZ4o1p
	 sAHdQHOd0n+jnyZAR4soBpFgkKeAzgnQhy1s8Ncq8s47mfXD8nyFcTA5XpCaInU1Q3
	 e+9cqv1LtCiB0lHeashAQORcQjDvHLX2CcnGrsq47j/j9XqnnNv0Juktl/QGO+ywlc
	 Gnx02NgfhW+wRbhGzYKNbDVc/q3DxdLKgiwM7t14k9y3jaitVpUntVaOb2ywyvNDKH
	 cvdtt2H3m2c1VmowBZKPZrvxnz0vYPzLnz1isafzBkZMyte4VKhxGHYfueJIaUCuV8
	 +JaVc4sxxDp8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB222C44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432131373.7472.8044351341286030140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e130cb7629355551b8e6642a9a61f9b1955d2db1ecb18ba588a39a461c6ebc97
Date: Fri, 17 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784321313
