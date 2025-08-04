Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2388F4A
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754270994; cv=none; b=R40mSM9XLTUdBjBYr3sJxAefrNIe3gNvwDJ0ULMmD3osffLx3rsG0K0u9bG36wwWoUqxY9UtS1mnl4jciJ1hz6ZaNFH/3GY3vgbPbrENDgFd/bjx9fd1HWRO1Ib3leVY/7pm4T+3tQhsekZk/YGFAoG6kfLag/zmdCHpR0f/YJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754270994; c=relaxed/simple;
	bh=bhrFbR8YByAAnnd8K4h9zT+TFnELcUS4H5aYupejlBY=;
	h=To:Subject:From:Message-Id:Date; b=XDMJTuRdzeQoweAcOganiqLS4WC5rhxb2f41tsGQJADogFh7NiT0AvsSMALF5RUal1m7rHSKgh6VLE0ms/uMpE5h+NqdHWIiI0LvXf8TlYPtss7SoLiTipOqVGGbMBr+C2bh+fHJPyta9LxeT3z9WyvbgkwafzvF30Cl8ZnqiQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gV8JZHBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gV8JZHBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E182C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754270993;
	bh=bhrFbR8YByAAnnd8K4h9zT+TFnELcUS4H5aYupejlBY=;
	h=To:Subject:From:Date:From;
	b=gV8JZHBhSd4h/JymMRpM4CaPgOFChIMqxbXnvxCi+JBObiXT1Q/HOZCtSrBZYy0Qg
	 5p8B2ks3sAoISXfdR6xxGdfJ8+GuY+5qFQbrFDUr1T5dxjpnXGElsM2sqXtsW/bs5E
	 czQ8BdoccMttJ7fhIBDGK/U1KGRodexadW9CBLmZpUEsmlTc6vv2ZxMxZsFVsNjfXQ
	 wPKSvEdA0H8IpPP7f5zSv+mbOoZz+lnhxsGD52DG11XyYKx9h7lhv2vHxqwqUI+hZL
	 atAlsdgrbemKPfPF7Tf88ZK4lhpy8EYDTcv3oo1mVbIQWXEJN2gMUUn7BKtIAG8XUq
	 yW9LThYe+cQIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F353C87FCA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427099357.23858.10540503554313160273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2234a103441ab5229f1a7dafe0031243499955ccc2806b00c877a5c17f31d1ca
Date: Mon, 04 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754270993
