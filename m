Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103493451D0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755566394; cv=none; b=EkEg+3UcBNk2Ghq/rgTAR/SRxAwnf8Sy8Zj5P4tOSbWH89+rSkFlk4CpDnAd6Cl5ZkCg4qB6ahTft2SQZlQb8BgwaLfboH4OLpPq+vl5Q4MqD+0D/y5dQQ8CXZ/anBWjeH5+P1grM8a3rAjkS3O5Ky9M72HXsV9sSH0spVaY6Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755566394; c=relaxed/simple;
	bh=S9GMOKxPW040urw/C6tSdRFy+cx6cHZTBOwROIQd00w=;
	h=To:Subject:From:Message-Id:Date; b=Eq1Y6c7dP5cZSgE2IAy+hUh+eaNjsag26K//BIIMzjDTVhKlZ+sy5xVlRN6k9/yefFkoY6B3YQgoTAAfi/zrkWb+ncmXG22bwnqMUwq2IzJsEh6lyNq1q4gIKD/UPUpq/icGnIaLbhJFuozSAKn/5YQGIVxS7NkExNYEnWkEyNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1fiwaiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1fiwaiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2312C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755566393;
	bh=S9GMOKxPW040urw/C6tSdRFy+cx6cHZTBOwROIQd00w=;
	h=To:Subject:From:Date:From;
	b=F1fiwaiw/YNuSMwTvUaCHrzhBHpLFzW8dFusK27O3WZ9uqbYIWgAuwgWWM2Tlz0ZS
	 DWa9FNH16MW0faFIe5WK8uL3L9BJVVMyxq5r7WU0qbqJVou3seIGCH8XfFcfkixTCa
	 a3GK01YHJ2lmVUDP8WuTjyAnhIW0MNGmLytlwlaVQ9vc1fYvySrAbT1H+ZRoYgTnKc
	 BB/gIVizCcLGVSxnDdM77e+Dw40WVyG5LIkszBJk7m0z396P5X1zV2nWdql3XWZhVe
	 TOK1sVStBEpQN8zvPS5x0elXO7Wo+VLGMMVKZFNq+H4r2DEmNKjFCdO7/xqouFpEtl
	 1xFeCxuk4+a4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D96CA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556639358.31733.16306307562600829862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e966da9486f7a074a8add6e05ad5a267180a889c1930d09bf7036225012fc4
Date: Tue, 19 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755566393
