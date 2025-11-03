Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB5030DED4
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762177194; cv=none; b=a8ua9vIVz2xvEs16hIH/sTBeNasxA0hTbuEgcNWoO3zsZOHWeTVYwDvYjf5Eo+RyqO20+Czg0RRWoiUsqZn+tUpvIhPjIzQ2InBeLxNAqtgApGdwJwG/97YRrfu+pp9S/KLsM681yDuWoKS5ttPC7nwKb6wLl1W16rpRj4OA4yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762177194; c=relaxed/simple;
	bh=ansraXc9bnbAnjZwUtbABPaLil1cHIybRpHDcZjhPrE=;
	h=To:Subject:From:Message-Id:Date; b=uLgMRk69biWj9krTiDkDmq3cH0Yb9A6R1vSjTGhXW/s7ps9bHQ6DT1yUEcsDt1DGN8JJXgv4gosqk4DBTWej+dW9VS0ME+FvCgEWs39hjSsCrKS35EbS/59yNX0u1w/H0VKfAMT1V3wwc83FkFiHDoOIeWHoMwEcswMpRs88o8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkGxDCfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkGxDCfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4FBC4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762177193;
	bh=ansraXc9bnbAnjZwUtbABPaLil1cHIybRpHDcZjhPrE=;
	h=To:Subject:From:Date:From;
	b=PkGxDCfzeSFtkyyxWrVsB4rmBpqSQHMkolT8RBxDlrkS4+OZxsqxVuLYnjC0/w1jl
	 /6fQTrNznSz6Sr7fp5yvUF4GaezAw5WT45fVLmnQRWAXkvXNpv1VXNCuAyj7kwvrcE
	 8NGIggtcJtVnt2WxesaUxteiI3LBVCvreEYEz0kCDErY0o2IQdOVuBym1Tp/1u7GQd
	 tcySoMbJihRv0EhHYfKSxBd9t3wjDxqRm2RPNPXGabmC63eNSgLtAzL2+WCCJrNdX5
	 RtZUh8KsNHNObQPJW3aLDDYVCX3endpeZqLnQRy1ij0PQyNLquZJmwNUQZztTpSjmG
	 ww4IURwKf/8fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F30ACCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217719357.28444.9853939555146308769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91798caedc73916910332bfddb034581680964ff659a74a40dc116e7bd9e9e1d
Date: Mon, 03 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762177193
