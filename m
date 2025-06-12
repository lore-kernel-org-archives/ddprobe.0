Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A74518FC91
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749736794; cv=none; b=jSYKHRvEE2n0Ur7FgPdim2g6w+AA82twazmE1rEJdrmzYnk3WO1E1CWqHmVr4t/WpQfw7qeU7gpgrXfkmD/xN6N25MGJKXcqIxNemdXAP7mswy7rgUxMWmbIlkLkRPGjQe+FvRHcfzSsnvfAVEjr//UpZ8VlCF2Kskn/kM/LsBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749736794; c=relaxed/simple;
	bh=rBNAQ+FPYNrZ0QZOMDsohfkxUq1Z/pupfTdM1wsHiMw=;
	h=To:Subject:From:Message-Id:Date; b=B0BJpvIL4PBwtmb2hom9T7q6Wbl7W5TjFOz7RFbMCF+k+eFshEMjzzrmXCYOAMFICetEDhjQmNxSG+l/VE3JibWB8eB21vNGynmo+CO6gC56luEUrHr/pZWsdkVg14a3s1BKWUxia48YSIT5UlnpNGA3hDsn0xy1tlLrT/QiR8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw0eqhpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw0eqhpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68E9C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749736793;
	bh=rBNAQ+FPYNrZ0QZOMDsohfkxUq1Z/pupfTdM1wsHiMw=;
	h=To:Subject:From:Date:From;
	b=gw0eqhpXYB/a7WhNQFogY8ZzUjFHQuBH5BxJlEWa/B+fWrkT4lKYOfUalebBpK2JM
	 pYjwImXXeL7Aj1UOILa7LKBR79O3P2PabPjXf+Ir3EwO/qna1mJoNEFc0IQprXGlv8
	 7Uo42pwgP1yytkZJiCd7kuS+CMVmKni3bjAg1Ku0/g8u7KEgkgnJ5vRDZw4byAV1BN
	 CChCgTzMMlVlRC7Af+/AgDho25kP/X/+AytVmpD+LG/Z3S0MKyhyQCNBVqMd+tOMx7
	 4lx0kBHcCW2pG2V6o9rWgTvg9nmSydwEYwmIoqmemmfmCMXWkKU3SemwSEk90czyD3
	 gTjVvoOLq13qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9125DC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973679358.2998.4849892740850844084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df91ab423e594cb8ee8c361757ca15e66eaa0c7ba6ff7cf3021f4bd9444d8e08
Date: Thu, 12 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749736793
