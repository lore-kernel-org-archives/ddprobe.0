Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B5F3AB269
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789014034; cv=none; b=f9UM//09y84KUtsbKnliQZFv8IqEiT4RxgIoeapxWvNJCzQ5YcNeRygFZyd0rBRiRWH35eAWE6LTA6ilih4DMmpzACdzmU1AKvL6nY4bqllhS2W/1K3iLwjsM4xGqu9SGElViPstoZibBCBvPSBhisCB4OodhcwrF49YEHSYKko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789014034; c=relaxed/simple;
	bh=xcwmZH/RSmNGOasECf4/UabHtiH7O4BHQtGMvVcHk4s=;
	h=To:Subject:From:Message-Id:Date; b=PKuR8HVWqTVXxz4DZYjN+Djq07ZpagHPpKZ1xW9ugJSqpghr2Vr8jvpjCZl+3Fb57Ax2MyTJdiPsyuJf2jUsn03406KvNsi5Q95lWtd94ox++It14N46spD99TRNATPDIGai+NGNf461hJsVDZfIBZhzgjNSg4VDttqkBzyRie4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+7wdkEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+7wdkEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4A5C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789014033;
	bh=xcwmZH/RSmNGOasECf4/UabHtiH7O4BHQtGMvVcHk4s=;
	h=To:Subject:From:Date:From;
	b=q+7wdkEO9RHGzevo0xlESGOtI4lXAAM0FikgR1GFk1+eMp/XcK1I3bPFgDwhLNVuU
	 wXtl4TwSNcq4dB4v4J167r9+23ugrc2ZnPPcXXnD/DV+qGhtaJgBF+eYZknEReIHog
	 3UAOY/96dbWkRWe+IgvCOH2o5sOEfVN9EntWrr7KHzaK3Xsz2OthlDtPtxFUx+bk/c
	 +8v9TEsWy8KpnTxs3OTSgUWNmd15mqHP/7zxiNox7A5tQXwyz6vRZjhMKaS9iuKPQL
	 prxMwAeAZdI8g6/s1IW9wVRLo3Rc/JoXPzHj1h8ZjWWqH0IP8N93i2uC1kMFGAEV88
	 KNepvplIL+KPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12BAC79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901403371.21193.4607053518303222163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0241fcbe3d5ef2dae5bd8280ae096c4c00c83fa988f6512818ae2059ab4434
Date: Thu, 10 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789014033
