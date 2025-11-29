Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECFA18C33
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764460374; cv=none; b=Hewh7/XRyBk1iakber1CxQKBNZZFgsCB14RxFG+LfuwK/CifvTC1f3l7IrfpzUVMFkApj/2cicT+Luq36mm18AzkMHr42+DVX5/vyfKawOX/CExvZ+KaD+d+ndl1kHtRddh0443qi1iBTV8wq3nmOxxUbfiCOGcqstXeEfv3//8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764460374; c=relaxed/simple;
	bh=TA32WSrgrcQf9lf0I5Zv+/Dru5Rn9ebm6ZoMc71X8Kc=;
	h=To:Subject:From:Message-Id:Date; b=F8fKnSmvSrsJ2tRmoh2BaWhp8Ueovj/IB9gF7XzqjIDtg8WqGiPoAWERPZsJd3ulLgdEquGv0JySh4xMiGf7pCkbnzDe3VRIisRLEtx7ZMikKY4ytehjuAJkhSx7nUy2GJmVclF18DzlvReja8JtVJb5Y6+xiyW2ejMn0RhizTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9UPdN/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9UPdN/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F259C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764460373;
	bh=TA32WSrgrcQf9lf0I5Zv+/Dru5Rn9ebm6ZoMc71X8Kc=;
	h=To:Subject:From:Date:From;
	b=W9UPdN/pJ7QFg4wz45PRn//+DkNpSDf6iWSIubM/w/f8qugXK8+LSJEF9xw8LSfb7
	 +W5ZUaJ/+tF7mTWXmrFxfkT/gp+HNW/aX7Wmq7i2K4WPwVcDK3lh99UJTYvGHXaHQs
	 PEPcYQo9N29LN2Ka0T9Hu/VPnrX/N1lEL+OgLJAqnhLRE4LQS8gpW9z4zewIsTeCYQ
	 pd8k7wpmCvERE4x1Tumz3qRH+mC6CvyjlnGQ1jHemx1P3McsVgDaxzAhfzqs1KSlQ4
	 TZn0Z9AogQRbWh3AeloHw5jJMdG4TkbPszH/b2rPt5d9yKSam1J1INGTl6bwLGTiWP
	 ot32qcxSo8iLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90521D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446037358.26634.4487389105343577923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03d93eeb549e45ca68b420fdac5113caa6a683a2ea719517f18a48674d7d6fe
Date: Sat, 29 Nov 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764460373
