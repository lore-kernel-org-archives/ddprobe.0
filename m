Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6575B9461
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715387543; cv=none; b=Vwu9gSNgrImU/zTOkR/4ZgeKfyRq+oFDZa7UZmF4Xtnz9I7XYJLJcv5BdOBUVk+9QidU3jhHEk34IhBafen1zm9B1vf5PWcD5ONYf7GbTTemizMtbNX/inM6gV16kNIcYB+UvHV7n7RkzBjWXK0OV5ccMmXDlVulIEAzfP82Uvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715387543; c=relaxed/simple;
	bh=2B/WECW9crlzir22FFCTpRlK3Ve/ytWTxZcPw5doub4=;
	h=To:Subject:From:Message-Id:Date; b=vDbfFTtUvyliO9MnN527ZGHc3BUvwL7UU0SlcndXh+hnz9f4XMf61Ip7mfX3L9cSkjqiB9AzJFeE+kuOurSV5Lg8MNVl/X7yMXc6J1LoTf6sVAuekAdYMRATXMl83/0g7b0XG9eJQgC+yw4mmJADDTt3iThDdXmoLUOM8M8t3f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdqKwuUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdqKwuUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF82C113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715387542;
	bh=2B/WECW9crlzir22FFCTpRlK3Ve/ytWTxZcPw5doub4=;
	h=To:Subject:From:Date:From;
	b=hdqKwuUap/skMVwuYQzT6r05iCiD47yH3+LpBFokRLJmVQ2n+sTVqWT9vX2K3MxZU
	 N838w/BwMtKXFf/66APm2FRREYnGFlV+8rS4d8Up7TYoxrCvRNsMdObOsBxSq6wy66
	 sxzoBM1Ph/dfAZ2ahEUtrhunipTNOSHrvGvZNFNXeETYPX8guElDWzkeMrUkUqbZ57
	 XV1+G+kD2ViCklN11Z3DcksUF40ZQ3bLtwD8/L+y8NwGTAyOQyu+biVHWabBw+dMyO
	 WJsTtf79QOcgy+EB3OeejTLUlQv4yoULtkWAdLGpv3AF8YXLQ1M83baGDQVgIf3jQS
	 lganj+gekKbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D03C25B10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171538754278.23981.3723284423605223665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24e95e22648f8a969aef360dcabe7d8acb85b2a7b1c37428312e385b104ae68
Date: Sat, 11 May 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715387542
