Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEA017BEC5
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731651354; cv=none; b=t/37uY+bd4GsJdhKoFh3/mATkCeQVprJet0TlwBVaRE8g0BeozahKGRK9B/cbdD2EE79B+/4ztWhTfBeBWTdkxFRQNTD1k93+hi6pmfZxi8j9vIT77Lomw96zZdxqqflz9qsw7UzFT9flPTkFn22DLbdv1xp7eMM2M0iFEhIn8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731651354; c=relaxed/simple;
	bh=F+kkB9PEfN3m3i8+sFTj7pFCR51jOKm2uYGQ/kNsThQ=;
	h=To:Subject:From:Message-Id:Date; b=Vi4KwClh/l0a7s+xAAD+u7ocYGmxDNI0ke5Tm4Ba/lDWqvVFDstt2xHLHJt4ICzEdy1xtAJ3heiNFMvgk9i5R1wkvEnqWFpXVDdw47sspPtkfAgyItYRlhOdvDius9cUwq7l4xeSqnOoraMqN/HLBsBE5QAVs6tshq2z/W4BLI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHJQfMYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHJQfMYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D80C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731651353;
	bh=F+kkB9PEfN3m3i8+sFTj7pFCR51jOKm2uYGQ/kNsThQ=;
	h=To:Subject:From:Date:From;
	b=CHJQfMYleMe/9e6ltnKhuVSxhOWxomM0HfYU0VjYa1XHKEChKjQ7HLzdApHKlyo9d
	 NsYPY7NqDBjioelrbpY3RXIWmSBvXPwKDe13gNh1AS8KFmxcN1GrqKw/tKDJ4VPlt2
	 uL1FuLYyT8YnKfmWkh8PYNN6GmhvphwRlTDZeFB+W/sa/pAGa40XKd4ojp6nyxh0/4
	 vKi9sOI+F7y3DN87ZmXq/A+4lE81/b/4JnMtoy9APuwbpH5TEdJmxby5NZQCZ0q3RP
	 Ifh+O8oESbA9R6P14+6N+JV75khjLAgsLZcWZKk+c0sDFayA24C7t+I/mmjyluyA79
	 CZa3oEba1iYLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BB1D6DDD5
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173165135358.7206.15014366593653609682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465ab6ae855b99adcf63411628628eb88972b45fb58d944caf8c55277c7a85cd
Date: Fri, 15 Nov 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731651353
