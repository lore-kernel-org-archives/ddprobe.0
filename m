Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3651137268C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783661914; cv=none; b=MgszRn1mYE8/+E43FmzEm/jUeHVJGpwcEdzlJlY/bpLFAXPW2l4y5PFhrYVltOjes4CrEu7RCgRVlixYHigBVWtcfHJFQeEwYHs0K5RX6+ovXndyMlWYRrO9CvwWNc8PXNMQaJhYerrwUXtWLfPE+v3pYN5TAmfhrpdw4Y5Q1sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783661914; c=relaxed/simple;
	bh=3X7dn9y/FKUCVQYc69sr90pGJr6ZiGb11cnCJxaFowA=;
	h=To:Subject:From:Message-Id:Date; b=pS0+fWgGFIUDWDB8Kuqfvc9CQIYNJ3eD/AyXif0s/pUn9LLZ8zK3U/4C12eYvVFNUovnTSBOJTB/Ce91ojczN1rEAEQksDvwCn3XVblQlgRDEmb15AFdMfoYg6hb2fcxsj8z4ERJD1wNqDV5/VuVilsW11UECKc5v19eI0+EQcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAK1lsqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAK1lsqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF753C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783661913;
	bh=3X7dn9y/FKUCVQYc69sr90pGJr6ZiGb11cnCJxaFowA=;
	h=To:Subject:From:Date:From;
	b=PAK1lsqTvwSTwsCABYl5bXqsJnomQ4h4JmYOmiEsLWtOo9idPDeT2xaLMfN7UPErn
	 +Pt3T/C8JLeRug11aKjawZ8V9xU02KcOQSDdpACT9ChvDbq9tfuwFwL0YI5BEWIpy3
	 88M/+v51ZlwGgJ2z4nPN99X7Y++lNoql0+EuKttwBHSFYbLbtKQBlFXoFw+26ZysVd
	 jHCT/4b0Tr2/CWNwGqY7FTPalLD7+l2smeIpfARki/VvEtp/+ZPjpKIPoTml48eWs9
	 3pPIMZZ/j9MuMm+LkcR3Dvr5pyncThFJeSYdit9ZJWVJiMQjQWL3JeBc/hGsnxhl65
	 KkYOup/ChQgnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF2CC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366191368.24528.13442167855604079216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6c7a1f2a7b0d6c65aaef58ad967f5e19192c5d5a725f9c41e810a98c8f82da
Date: Fri, 10 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783661913
