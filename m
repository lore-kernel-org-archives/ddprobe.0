Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9DC27D790
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744353594; cv=none; b=MU/Z5Xil6iIaZTujwdlc89EAOfYRz1JJaSA2Dk+AtZ5067l7EFtLnRdqu1YlKGd818HAGdQvr1cqFpGmWUdj1JrN2i56Wl14ePI9lKITHFZtokl4Y2k49TbLSapg1RvzzWTW8a4wS8Yn0I37FdtP98RQQ0vB04n8l+W7BNkNToU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744353594; c=relaxed/simple;
	bh=a+WKZkEanbUxp66BjtLEMP/bsW8/0qZrdNMHTNYCdTU=;
	h=To:Subject:From:Message-Id:Date; b=RGDAvPpJXavInRgV5R5LgERw/3t//rQkivbw5PKFPeerKIJtCcBoYg3tMNU/g1IGQdopN23/ymt79JnnEVbRaECPPfYLM3mp6coyqDTJf6J79Ypvf87i0fb0+3s7DKLTCynRDHTrSBsx5H49pYdKzQXuspwOOPD29RVOZ6GWRKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxSa2hEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxSa2hEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65FBC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744353593;
	bh=a+WKZkEanbUxp66BjtLEMP/bsW8/0qZrdNMHTNYCdTU=;
	h=To:Subject:From:Date:From;
	b=QxSa2hEysWxxrVh1ImuFdFyURe0IuGOj0hi4bZbGs1ORNfHjJ1b7vV8t5rqsXfEBb
	 GSOpvzZ3MjFW7qcVJZTEw/5O6bC4wH1D7xJ+jPVm0LVYKspbmQc9TafGxHVi5EE/1N
	 vQY/x5J8TBhOMfh0rmuw3DSnLEuD9eAa3T1aCJj3CjJzkJuG9F/dbcS7MrecIMIWwY
	 cO6LdvgcidlabM+Yc441sbyL4zF65J/madQFHd4/Xi4cLt1cS/EZKEjf2vdWCAou+v
	 ay3KzRDc1Ze0CZXWQTmfRGlLIp8DSiXyMq9jWfcLrjQ03QikLyRYgeAn13DeBnj5Y+
	 r6WuZAq4DqXQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0980C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435359364.18028.6431666401845095101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08874a6db068c407a19decae6747ee4fe77dc0015b86309f0140b99e80d34a37
Date: Fri, 11 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744353593
