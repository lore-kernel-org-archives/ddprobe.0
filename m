Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146F030F7EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773303294; cv=none; b=Xnzf+sqCl2O5uiHFLBGicKXl4B1rcNWQWCYxpJoCP0PeLULV3jUg3y5U4BVbz6YeVDttxLFCizQGcRsCAaE6MfVgzlcvQtEkthT76mTzmH0VjptxsjhLZr9R7XFBLXBG8CIyCcNssu++FW9LVT8jGI4H0f8UdygbtNUyfJ3sS5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773303294; c=relaxed/simple;
	bh=HdvfaHRlibxeEz025pid/YxNXCR4oi8Tly40jsrdqMQ=;
	h=To:Subject:From:Message-Id:Date; b=Eob3qdGer8p0gAdpRC76M/LWRVYr8FegjIW8FEOUEoXGsYFtwPIk4bDMijiUjCQK9+sMR1DsGzRnloeWUnmF0AxYTXndweV8W/0JBh/3GVqDZ4K8//0Rrhdgu0Dk9V9WX0bw8xM+vPjDtJBAEv3NTqWzTxkyhkoyXp2q4x0nuYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgXdQ8fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgXdQ8fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CB5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773303293;
	bh=HdvfaHRlibxeEz025pid/YxNXCR4oi8Tly40jsrdqMQ=;
	h=To:Subject:From:Date:From;
	b=bgXdQ8frlEh98eynEAUCRrWq3hAGdB38acKryLA/eFisKy+7GGUjYhM4PcPRXVZI2
	 fER2vMlsr57t/PzbdSrq6m0Z07KZhCyvqsWIRbn5PmZWOL2zj4n5fEmU1pWonBiVw4
	 tdvEmX+LpGSt9DHnxQpvDWRNqd1nK3PVG5xC2NyBIi4Ed24dDjfmOpX0nMS6+pQTsG
	 GuwMxwkBPdJFCIrGOMT2RLM2ttB3tbnEl+TusjR6YAiffFng05f+YudC/RSHi7BtjS
	 akwuUHqYGje7+/eyFa9SfuAbh+D9GXPzkzzPfuTIcl+ptyPcqQqDbrIe5PVOJbYnUW
	 +iIIFbjmljU+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90145FED2E8
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330329358.14620.4654249846037427326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a7ce8bb524724a0a0510f038787603d727cdf13fb588d50a49cab7bfabf56b
Date: Thu, 12 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773303293
