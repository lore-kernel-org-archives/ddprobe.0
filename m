Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E7B2D0620
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791426034; cv=none; b=QMwnxS/sU7gXaHg9VUKxXlaiuXCzKHqvKsRb0eNlTn4/19e1Bg6PaaZxGr+QPomL5YO7/oH7Z6q3fUH1AgTzkwUhlC/wwn2cn4do9KidX+gm0aS9Xv39G1AnAu5TEsjtFkJ7ZgvtFbGUtfzRHjL6dB1+9HjK9P6W9DxsNxz5ePM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791426034; c=relaxed/simple;
	bh=gLf6PlxjJau0aZxprCiEcH0meG62mVdAkD5ckJaWn4I=;
	h=To:Subject:From:Message-Id:Date; b=aPm9LcSAITG3YoVVUKAzkdk1i3FMxDhHTDcTxw9FNzSXITon4KAtCf7y5R13FwPHyNK60jfpCV7Mh/AZUjLehsp7yIKHZjvSlF4fidsVuN0nmgyHiDJuWBYClA+2BgEc/BQcQPARDAdGx6v9C/11RyDrZ/BnZlysQeGNINWRk0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhswTPJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhswTPJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BDAC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791426033;
	bh=gLf6PlxjJau0aZxprCiEcH0meG62mVdAkD5ckJaWn4I=;
	h=To:Subject:From:Date:From;
	b=dhswTPJA3Ox2O2unlkBjN57/CAf6B3PUU1jco3uNnjRra14C6XQzlVBbBKP1giOf1
	 ZNE+5xwyHtU1p9M+nEW/iX8twOOLvzQS71n/9N2vJMGcmUHT2W6VhsBCSyu6A5M4gK
	 rQ8otUM/F23KhFIg7ABkdk33oz2pXrn6gYXUEjx8AH5AqSA14V/9n6bN3ZFLeKaU6+
	 QL5oRbLx6299ClzK7p/yai/RcFgOm5KUy6cxDlGQXhUzMbqGHDI9TKn1wH9iK+Fgqe
	 l4aGwOPvrVwoIBLnVA09A5d5waJY3p16FNOQqvKJCfWcWN9N+VwozWNsWU1/mvn2TL
	 9nzAK8YMR4hVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2606CA6004
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142603369.866.3859667844108464114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479230868c0fc860b4af8e3b60769d9e9d57e6e08492bb49219f188c81013ed5
Date: Thu, 08 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791426033
