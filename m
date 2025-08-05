Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6211DF759
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754433594; cv=none; b=Xd7HK2/5Vsi1i7WBQmbBdN+rNTPviPJGg6nlsEx3UfTgzxM7pnNAQXwajDIA+rBp/H5cD3mR2/nHAtoNAjnFSWwu0t9E4h5mh450Tm3GVfVkKt5OVoboCb6nnCKkDxh+15mqc2EvZ7b1Rsy+r6S0XABQ/T25gH6Th4EMswBsVVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754433594; c=relaxed/simple;
	bh=c7RzltvG6wJiVukP/SrUSfTLEJ8Lkse77CdiByD537U=;
	h=To:Subject:From:Message-Id:Date; b=kUEAHi/BAG6UA6lT8yBViK0cMktLYR5kgz4Qw82vQ0dXfYlZjs93WDYShFVDp+zZgr+z9QFl7YhIYGCTv34NziClloIsywTIVsIXCldlFDubn/xO+xwETfwFCO4UwrpE2OSb2pV7VbocKNBJq4wISbIb3CWweI9VxlfoQUEmLq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MB+EBWpF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MB+EBWpF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA08C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754433593;
	bh=c7RzltvG6wJiVukP/SrUSfTLEJ8Lkse77CdiByD537U=;
	h=To:Subject:From:Date:From;
	b=MB+EBWpFEQfu5nwrHOEc/5BrGTFVh1y6nQ2z2R9wADmSml35J6cWH67o1lEU16Oto
	 T7nIeZ3MRvNvv1JhfezPXJDGsEV1BjAYeZ+HV+FN8Jp5L6+Y+rKhOqQSeBmA+p1j12
	 CAicVgC/QH/rX6mWxUH1pK+3hr+l70DxQ4jBnXDFMCKKCFqjkmozJvvN8NrhmRYGql
	 cdNM4vnsCZ/y3pIQUB/ZDQ/l4zJA0HxjGE7GBSGl1DPNIZ7CA92jH5JtpigHdYoQVq
	 zTNvXBghjdj0lVi4zLkfV6n0+9OcjvBqRkfrquUIYgXKNpswUQj/AwzaaX7M085jZX
	 QpqkKOpWmFr/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2E6C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443359358.21864.8468877320620786484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa62c67479402e76c7bac1633ede29b65f90f2109cea7e88b84a0d18eacf230
Date: Tue, 05 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754433593
