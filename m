Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210C32E11AC
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749883194; cv=none; b=g2OZl1RFVY8D+03wnG2zrR99XvZpHLrf42bibGYStE7tOVOulePE3cD0RklJWKc3QvgJAaqi6qX8zZu8SSgnOO+wsUUQmp29OToTDCAaOss/Gmc+yN4DYPYN2bt5sOmEmkLsAIqumlYOBMuDTr4EGCCZ4frhex8qJeItxQ5lr7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749883194; c=relaxed/simple;
	bh=TiCAhS0cgtcrlSr96TeXrUws8/ACsFgT27Nd7twiBE8=;
	h=To:Subject:From:Message-Id:Date; b=lKAvhB3EOnlVX+4r1rCG5BXVqTEBCs+eeqP6+AgMC5aIJRVIDOo3Db4ojvGm9HWhGkuqOCJdYNNUrwl0HqN3l2p4E3XDVnGaTOfVhwrIne4W/vimSP0I87iJH3JzR68XAMoELn7VEsTuNrGCgdwygUWUL/1Hx82u3vMAsafeVh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B18TYkAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B18TYkAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A082CC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749883193;
	bh=TiCAhS0cgtcrlSr96TeXrUws8/ACsFgT27Nd7twiBE8=;
	h=To:Subject:From:Date:From;
	b=B18TYkAjTgB7a33wSFoNZUOnUQVl4xBYf925z+g6oKwb8j9dvtZTDd7PZf0le7ed0
	 Ei0t6UdiRPfJ/N85sx5QbVF+gEBDnAx3Qx60B3RUZgSJaaNBKDEds8t/s/lr6tuY4N
	 MYC3fHyB+PCe+vgSvgReT6kLQI0g5f/L+7zdsEk07l0QEVDNWgsxJo0OSG0ctv9sUw
	 i3GsuQVIlU7xWjMEkMYPkYIDg2ZLB1nbRhk7YLCDZTAvbrvWjBLlGQuzTI3XcevSPh
	 SNKrJKiSQJGkH0KI6zYR27Ix3nUfqew9ld0onv/erJ7Od+nPfacYS9cGNh++rMlQhh
	 452Skg3BGsdvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B5C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988319357.20460.17188622393526636044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3963901b663b868a4f88292207696661a5d528df0040ae200f014f7e968739f0
Date: Sat, 14 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749883193
