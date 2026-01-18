Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C86B3398A
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768706034; cv=none; b=ShACRrS1LX6nzIAD+TGoO0+NdqJrLY7/Z8jdz2482PFeEVXoR+3trn9sBJrXpvG+Q0ZxXLuu+fxkAMj9HAX4Cvifs+WA/SPHoTIY4e+3Igvzcf7TZcgz7vjcGj2MV7r1A2DbRZg80zhhAL8t92tdGr+jaITglVyHY32lcpm+yCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768706034; c=relaxed/simple;
	bh=nBskQv5uKu/3UZDnf2ZmH84yEb0uRMtifBJzrVF+dwI=;
	h=To:Subject:From:Message-Id:Date; b=Lpmxb4EeeNIHdpsDp0n61zPlMYZKRdb7+l/ZXHXa05KBzh9dvwTWeQnvHhJCSLQTk4ZJEp9bN1g7Dl6zGacZR8tKF9IIr2tUTfqvoK19hL8YQxiphq7U8AE/m5jaCTTNHummylzhgjkw5GWLVOwx+8PltUso8swHnouj1SeNT8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2v5J/hM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2v5J/hM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1316C19422
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768706033;
	bh=nBskQv5uKu/3UZDnf2ZmH84yEb0uRMtifBJzrVF+dwI=;
	h=To:Subject:From:Date:From;
	b=S2v5J/hM5m0zpmN2Em+43Z6uqcVpvGMTLIt9qoogBnJ9wxydBz6L3mTGUFJguc/LZ
	 oUiMcJaS6PPSnOchV9iQ8bgC9yKTjYammBs7uUnmPVjIS6KVWZzSo0BAf5IWIaR3hs
	 KP8csabNfF9fMoUJIK7p04uSB03/2yoCukgxTaVHXp6ndGo4WSTg2q18C+jCGvRKIO
	 JSwvvwuwqiE6uravE6It7ONnkxga4MFF10RIUUFxiRtY6gDayBibLa8AAlT2lF/DNX
	 zazybwXyFdPFPlSg1Q5riKmVn/3KRGmnepLMPoVPZXN7bcQb8MrwtzhiD7QjVevSle
	 KK4nR3nCh+Qlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE31D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870603358.12022.2681117776293855752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ee43c6dc506e6a41a885d76af54995c7f054927d37a9982ba8a595b142586a
Date: Sun, 18 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768706033
