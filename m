Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF692DC762
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767074034; cv=none; b=l400GzwKu8JXUdutWjTOHLuT2TQdDJ1Ohlp55yngtOuqXOrbV6aNd6O588RSxAv1IoXsdf6lD6XSkpu9s8Bh7SRYtwmJPOPkljzl7io4ZAuSS8ps4ge2NA8KadkFxwPu2ejADXkvJ0KXmcNm6V/nHe6bgXkJMYepVW53JEAitrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767074034; c=relaxed/simple;
	bh=Tih/NbLlnsF/ODO1Ftja7+GBg7+8oxuc6gPqnuLoQIg=;
	h=To:Subject:From:Message-Id:Date; b=mVadySSJZNAuG8e1AnotJMRXvQOdW16iBLHhJTv2ynSRFgCnp6N19zf3lj0j4MbaisbewRR9CBOCuSWevX7551jJI/AeXi5wlhUY7rgMrf08ynTa9wf8b0F76CYaoWnQcZ4nYvCPtE2d0T/OndWqi6cEoEcZleDKf3oKaNBAsBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyDDmV6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyDDmV6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B6EC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767074033;
	bh=Tih/NbLlnsF/ODO1Ftja7+GBg7+8oxuc6gPqnuLoQIg=;
	h=To:Subject:From:Date:From;
	b=fyDDmV6+5qLUHNYZ/Yk5kA9CoCoJj5qbwVmKQ2bAwTEkGJ+9s1EjIILl3OzfXLJ4i
	 UKTqwJ3b0nVPUK3qHBv5an+82ej2/hE+CumezbCftdLcNLpSy6rHHJuNE+bmm/HDPd
	 C98KdLZWAf93NDdXtuiPJ92Nz/eRYtu9K6BH/FwIuJXSGzhulXbzZxkhXgInvRhDfJ
	 JCoiyIgOwp5vYGXU5pauclDhE+Vwd/BsISNJEVwsNxdO9A3lUIuzTkvN25TOIDfW+q
	 2gmNlumvfqUoUQAKt00iO1mRnhXMNlrhSivLu97lB2GKeGFK8EzyX4AEf7dDgeSBr2
	 VeOtvnbYjOEeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB7E9410F
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707403359.1028.739132159027695970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f21a0883e757bc1b44853b7270c67bc074396e9accf8b91940759908db090e9
Date: Tue, 30 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767074033
