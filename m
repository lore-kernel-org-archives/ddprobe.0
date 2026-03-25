Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B44018AFE
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774397694; cv=none; b=Y8ocamP42MpsOnyGtTx6VwbinqCA6hLNyxz3FR0Lyl1fK9p7pD78wZxl1VM8mJV+gulOLtqQfVUP0joxHAcpLUuv+k7OZt0kwkp3H98TV3QdPFKNsKynxe0sIyQ3fMPmzI9M49LeMhvwmATW7UKumvZVION68hxV090Rf0xLzBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774397694; c=relaxed/simple;
	bh=JW6zRRBqKHrUu7kOOZ2507CASnbj3zWT7yPEXHzAGT8=;
	h=To:Subject:From:Message-Id:Date; b=DVHDAu0BObyCO5OElFS7eRmW7qH2Oz1cPEa0T0osjqlM4lXoy7fbBCS5tgND16QkCYnfr789b5nkvD+0ACGOJ2L4S0dvvCISOCBaas2e/K+83KRjado5wtgcaXTgieOupxdWFMjUHfDruAb+Uc71o53sd8a8YR8yt3gdmGegSUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khImpcg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khImpcg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ACDC19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774397693;
	bh=JW6zRRBqKHrUu7kOOZ2507CASnbj3zWT7yPEXHzAGT8=;
	h=To:Subject:From:Date:From;
	b=khImpcg4kWeMUV1gii8DIPzR0aQn3CvbgJ5sNzHQWlrhM4ukec+KqOtUOSJjg5drY
	 zy3RXqa8P6rf+xYRJpAf7cqxwfD2SruB5CqcHxSlKejf3qwkcTz0kxK0z4ZTfDXUGD
	 a+nzFDVwBol8Txz+twMx2w0I2WEgn7aOqTvzVpmZiP3c9z5PKaccppsAnWi131XVTP
	 kQXn5daWkliB0lx2lMGT59cxuevgSnqP7ApfgQTPwnSaDsR61NubyKdDQjWkseV8v8
	 GyAznr2PRg6BVTI8k8pUJdb9NO5NO1StkiQjumnlGqKqytc2zy5RsTFdFIF+fdfSJq
	 6NrLKFjmO4RCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94060FC72DF
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439769358.18033.1014701102687435932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d5a68a3966fdbf377505422bd4287e94e0c5b970261de3d916ff8107a9df8e
Date: Wed, 25 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774397693
