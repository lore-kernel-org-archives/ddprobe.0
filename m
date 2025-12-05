Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3133E2F8BF5
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764934374; cv=none; b=u0sMu445MbWvM/u5jzLxpj6Vn5M4f/HtNLUU0YAQurRjKsUE52o2J0gzIMI8xfZaQFCICCNS75Fjx8cYRF5AgL2Q7mZMKkktz8uVGnu3ExupVXrGamk5N5UmqsU2VAY1w0vATkJc9TlSLcGbsgAtxQaclWKtZST4nNRJHdYHxVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764934374; c=relaxed/simple;
	bh=8PM+7pzmNtA9y9noX/4Xq1zrrVfZ177wxCmedTjgx00=;
	h=To:Subject:From:Message-Id:Date; b=VV6XgHgb3tyO4mf3R8c+ybRkCGLrLyDYMJhtZT0Bl1jgCCFIVLjNbO2WRsXCpJoRMSP9mlcMlkRp5TWBIeLe++4b4EvS6ymxyjUDGP/M5GxW4pwx2Y3lZqoon8i6F4TEwTWFPbBBOLWJjm5j5XuWy6afFCJFI3McuTsWzOBlz+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbYQjnob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbYQjnob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7F9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764934373;
	bh=8PM+7pzmNtA9y9noX/4Xq1zrrVfZ177wxCmedTjgx00=;
	h=To:Subject:From:Date:From;
	b=AbYQjnobzhRXG2aghQbhl9sYNbDYzrD47gSlAIx+wmGKGIE7xBloV3ePcC9vMgJ5z
	 wHX4h7i8fvavWrlZ+6xsUJIdqYb+npnWhtbnmvkmCh0Z3s8J6OIphiUq5x8tE27Qyh
	 F8sOfTalZ8KDYryatgNJG/p/NwEd9rhR2p75rwG2/LDxEmjHYZyLXkupmFcyLHPKph
	 d2CcufZncSDefarYh4Sv6y9movlfVjBlv52inaUUFPBTOTcaaFhWl8dvi4OhD14e9n
	 FWS/qGjpDRrzP27a4UJc2C4U5TyCcZgbZkS2savgqZe2eZ341k0lh2H7OIK+V0IQBi
	 DYd/wUYle1Ryw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97840D2F7D1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493437360.20842.16967482613816211682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e73564ab13dd7d46b35cdb9804c26ebf5d1abe134033e9fe99a0da4ec1df6c3
Date: Fri, 05 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764934373
