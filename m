Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1501C1F12E0
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765222974; cv=none; b=jEerqUdvzv5Ebe2SMWZ5vJXRMPE0yCeaGIz21gL6QVRSzjhJ+QHU8nt6mscnWP4ZkuvLgKadHhnWQy5AS3bTcI5lbIYpzN7EuQijuAWXZoD8FdEkj5BNZBH2MbtY7YIHR+dSbsXnR6rZrgBUiPISyZrbichosZq7XNFH+d4w+sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765222974; c=relaxed/simple;
	bh=fzN4viHXNGB5KAz/czNuzOz08Ru66DdE/ku3wbhMsGc=;
	h=To:Subject:From:Message-Id:Date; b=WPgcDT3DUiMp35uPDpO05rgPdyE1Wxm8jEtEfb8bApARp7p2r0wn+lOFkxF8YFwRAjewmaBGq3ZzAlDUJoRluQNEsoi0VA3VqMGfTeYaPgdzrJ5Hw+sCCzuW36+EXSBgmxul7wDvlvDXq6hLwYRO1oxS+k/ve/YIFa2LMTZkkF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmpFD+Tq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmpFD+Tq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AC9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765222973;
	bh=fzN4viHXNGB5KAz/czNuzOz08Ru66DdE/ku3wbhMsGc=;
	h=To:Subject:From:Date:From;
	b=hmpFD+Tqs6sNLDH7nqvFhvbl6qjCad4a06Gg2fikaNPb/FaFia+Yi5m/brZBzM4z4
	 T90T+ZVoFSYNbMl/YzfYK4v08a0RFqo2MZtVdbQc2GAiYmNMXi9iX7gaKzorU6aLmL
	 ekIh5KK8VZDhqhJTieOBvArRA0yopHIuuvZHaBNsD4wRv5NyqJwxuHK0jqp8rx/ouP
	 olINQ9xjRKiV54kWZ0GeQbA92HeNwltFgsh6l4RYo8BHBBQzsc7ZwZppJXRFGrEtkp
	 N4mrI138Q8Bqq2PpuSXw0anz87QGf9q1DkuAQPbZ547jKYoC8DYchjV7RHCM8wuvVR
	 j4TkIRRzjYeuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBCD3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522297358.1020.17258661069613020490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7306465e5ba0e848808326a81dfde4099fb22f366769bf6f6c4ba9c9a268d715
Date: Mon, 08 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765222973
