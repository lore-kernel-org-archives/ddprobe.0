Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2192124B254
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736720154; cv=none; b=mXo0KWlk6L0xmqyZ2DasBu+U/fS/PKqeUXmZpXLKv8w0fSRy7sAzT7Miio89IBTZigFki9EKcltbfx8NXPhKtUPrQhzcM2EhTI6J5fUJQ6k78lKxNfMHDYO46cpJrXXpOvunDf2ZqcMugk1JPccuk1ThYylajx3lkitoA5TlG3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736720154; c=relaxed/simple;
	bh=QQ00NgSILmISb85yK1LSBAmZCp950JLYRAGZ9LXUxtw=;
	h=To:Subject:From:Message-Id:Date; b=jMeqaROV4KUJW8dNZf6hGzwLMfXzHIDZMWn0bNVh1BP7TDYKrWbHko0SBXshqyFFhNi9wcfQS+l12XQ2Y1T/KvqfQZTL7YVLBXItyUjZFuSD1Sj5Sv2HRei+Ku07zHL8mpE8UokrEnxYwSYuEJXQn22FwX2f3Q0BothLpkdeFzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6XCR8Ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6XCR8Ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C86C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736720153;
	bh=QQ00NgSILmISb85yK1LSBAmZCp950JLYRAGZ9LXUxtw=;
	h=To:Subject:From:Date:From;
	b=S6XCR8UbsQHmqB+CTIPHi7lWEbuTDbU6MxAm3TKbIwI2JfH3H+fhBsKoquEWMKX1s
	 BYclIrkY4rc9/pCQ4Bcr51oOaoBpLgUVcHY0ow9DAqdrLwtR4w24xtMMdJEorNCois
	 kCtnVMQ6+FIqGLGRKWloYzrb05BoBbkQoqA7WI3hfhd1lr0Um1KUxelQ1k+lYZSVr+
	 dxhy7NjZpFWnXI0KBQoH6abgSZlwVQQ8/Ec33bbxZlHPlQC+vJMRYmeAeX6e9BxBGN
	 eKTCt1fCD2q4bhvzGpNe0Qkwky40b1jMQWWWoGgRgL3W/s4hPpP+Qe2lnxCAkFFYeL
	 euYye9u6DoxQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F0FE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672015360.24917.8565642948975961306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec53a9bda40fe995a902ab33cd9dd140864a52857554e88ba135ef71dc4388b3
Date: Sun, 12 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736720153
