Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038D225B095
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782803914; cv=none; b=khcOZKwruydSXMQtV/cyN3I2CoIDs2C1aYDF4wnuMsmkAN06nRrpU7Qmbexpv5DR+HPp3jR7GOHwm7qqWmVzzf1WkwjTxzfDjGqkytvJ7h+NKFGoQdvaM9WSSnZometvxpDk+xMkqc39TVFIjLuizcyRzPOSK76GmoGv627qYHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782803914; c=relaxed/simple;
	bh=FGA8CJ/b66zaUhKKxViqb9yus1dfqLKEdhy+/r9cuwk=;
	h=To:Subject:From:Message-Id:Date; b=kTiqCoIF8zmubEDyqqwpkAwaMZeUtj3e/dMUi1rHTBd51yt4oZZ0KMkT9I25xHENhVXOYK3yQ2flBzdlQLHwgW+0XnW+5gNrcO+PWLqysWqc5+jb2E1ecsJCBZpouTuEN1ST/EB8N2oQmGBVN+gsvkw3I67yGXH3J9Xxs4l+tww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTwN1S5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTwN1S5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23D8C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782803913;
	bh=FGA8CJ/b66zaUhKKxViqb9yus1dfqLKEdhy+/r9cuwk=;
	h=To:Subject:From:Date:From;
	b=eTwN1S5skqDxPYd87GjcqHFjYyNBKFdX6nTWjvDbcmgtJpfbbUhdz/noJNmMBGV2X
	 9G9650iuSrMS+arKQidyT4xTls04ywJtDWR0zYKL/3rzEkAJAVeV3tz9T/cqTR6FpN
	 V6Zm4erMtfA2zZv9idiCMKykhGVbdE/3CqXxZREgy73HjyXam98/wbR1goH/ThFKVm
	 KPm9cnn8s0XHCuwk8VIU5rdubq/lBDh2TeBq5JcMP9DxayHLFFqTh1EH5hLWq7X+aa
	 +iynMFIesTFf7cy7ZXoZCWhTDOcDrKGH9kHjOG4FeDDZ/DOkBLiryoKvKGS4g0Yjar
	 daqIMSySGoXqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87FAC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280391368.30079.5250168375401651899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f613b28e427e2e463cf39a19cc32c2f2b5c675eff5091e2a6e281cf420be0ea3
Date: Tue, 30 Jun 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782803913
