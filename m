Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3CD18EAB
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766659434; cv=none; b=TsINonfFUIjBC5TdLIStCsNI7gJ0z6nltTkao23hOHI8FGvpn7qrX9dtP151I9YEWRjIVb0L8q9Om2EfYYhrs0RqjPif6aeIoyyB7k0KJhCbgE9SLvE1Kr8WmlhADju9rOrOwNaGedw3W6Wyyzbeh3qeFGk0/4DZSaRmuLKgptg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766659434; c=relaxed/simple;
	bh=qFsIPjlfFovHII+EKcHJ98iANz4UP8VHbeLK1XP6ErQ=;
	h=To:Subject:From:Message-Id:Date; b=OQs1lvaPiUIszupUs/m1YgK96waZEVhgPEfKFwapyARiYyVnF2haxFX1VeOH7s+V96Ju4DSgJbtzn9zfLQsRr1td1Y4jP1YCQjEzbSJspCWO+xkdimY+9qcbOZyp4pzgQ4aeJlUkxvg5ib1PnIYmzhpQ+ia6vlPoD8V+It1ZjBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPjr4qV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPjr4qV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6896C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766659433;
	bh=qFsIPjlfFovHII+EKcHJ98iANz4UP8VHbeLK1XP6ErQ=;
	h=To:Subject:From:Date:From;
	b=PPjr4qV9tNxnPVOpLvWJAA+jZQB+gPlOocnAaldW6tQ/SVCNd+apKBbb4d0W7lt5T
	 zJcAv0kxsQxJ39sKMDrqtHKFWVwlmX2T+PjzoTu+ldCX06ulg+n6DpRw3OmlDQMKmf
	 F57MSgnA2k9QzzRsEthe2VxESj/Bt+QcWBDi6vdyYqelCv419A1po4AVc+0NAwVC+8
	 p8ieTfm83id5nhzWENdEMnJA0X9gq3YiiBVcSYRpTiCfutCDshAFrfEad6i8WHfb2q
	 t7UOqQKoXbkXW97o5LPxlp/q6g774xwJCMqw0nVaA4XxQSHozBFFIrSe+JCmnRli1e
	 jxT9ewpTrMJOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B1E7AD47
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665943357.4023.15986723220260015489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2347d6fddf433f8d26a6a4c6ae84caa2a0d49a1d499702609082f2d3fb84695
Date: Thu, 25 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766659433
