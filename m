Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1806D28134F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763743314; cv=none; b=E2wqyRGXQVd9vGocq+3dju36Wt9vAHW9XnzstnaBkNyXcpP7yGIbrouetv4Hn86HWNie9JvERfDt6+A2o/fIvTma8RBrl5uA6Z2cSTw22kqPGjUYdHHIW1McVIvNzjIPE1aRwniZrjPg1oYsScNnCki0LoE75KXDpqJ2LIs5Efc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763743314; c=relaxed/simple;
	bh=aTDbLhSlM/6im2afxyleoaFyj5TwKS0mIEOnzt5Yf1s=;
	h=To:Subject:From:Message-Id:Date; b=ENPJvqemIM7KZFvM1G02ItjL/E+0cfnkkggYY1h0RgUMTF4lQxqPfSZzoTbn+GgUOt0R20QtE/pAbqa32RfNzuIzsSxpi2A1kpTSqBdekl4EpQPkoDecnkllwuQwod6yhKQsR+bLJVILKDa7D9yzhwdkheTIy+VhRQyzfenkZdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipr8Vl9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipr8Vl9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6512C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763743313;
	bh=aTDbLhSlM/6im2afxyleoaFyj5TwKS0mIEOnzt5Yf1s=;
	h=To:Subject:From:Date:From;
	b=ipr8Vl9PoZvuKOdnGe7a5e4w/bG/XeEnfeLGaG9yE6EJ1QDbg3VGen5zQ2oarMT2q
	 u0aEm8paHx/wIQiOzZ88nRUpX4YuZiIt/fm24y8U+iIBNODVumXHqG1Q3UG9aZjPow
	 0WWw0oqzsbb9DuWldarSjFQqxbe7HZGbKWoG7qGfryPTlLthGe1kqhkqHgu/WanM4O
	 O7EjHsqchKJwvwBBWSzL2pAReY6Oq0K1suBOCdzm68VAhkPqfK76MIFL9xvaxjUM4V
	 twQ9qzJGX5rouGwQ8q4nzMBK4bifJWrc2gbqaNqJH0ttiAVmjVgN2EnHMMVSVnDvqR
	 ++ScHSn4Xq+rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96707CFC28C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374331359.26405.14469714353020662156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66e6ec29068d8864cf0756d9abd2f44ec5c928426c78174f27b70f3ce85d227
Date: Fri, 21 Nov 2025 16:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763743313
