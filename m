Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341574C6E
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746417594; cv=none; b=uVveDL1D03AlRuNa11YnF/kOmuY5F8gSEAXd/GgifoXHaT2csWt8be7xdpDsa/H/4BACPiKleRBOnf7pJjFxuijmRiNNfzpx000SU7mqihxqGX0mkmG9U72H0IPyHBjGCNysXEy0bmlMw+DeRyPXQTWcJlagIsN55ew3LOAp0uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746417594; c=relaxed/simple;
	bh=2csJuFK5ZjssaGcyjg0N2+aWjrp3iC4ZDWnOLAu5DNI=;
	h=To:Subject:From:Message-Id:Date; b=Wh3YBizlEug2byNmMVptTS5ih5ZwYJLGMd79eFAVEA0G0fsEXvHxHos+EJDENmt1008lLPbyBn452AR2CRyCooy8yNFVPe05+SYgtiSOOgy0+MBnrM483t4qZHStkV8GdAHS8DXFDrN2d6Eda8oYcGHuTwUk9NIAtgqPU7pKnCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbFUCN5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbFUCN5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD29C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746417593;
	bh=2csJuFK5ZjssaGcyjg0N2+aWjrp3iC4ZDWnOLAu5DNI=;
	h=To:Subject:From:Date:From;
	b=pbFUCN5g/GVB42kFgbFsN68rotFrHs7Qyp5as8ibl2+wOry9Tnl6hNU7wFir0M3o5
	 vXtivAKgGQaw0ppdiZiYChcWYB/W4cOkGJqcTVxC5R9gwPOSHJBW3Qo28bf2F0nk7p
	 r0MzhMUlzO4EWJjSPhjjIN8uY1BMpgG8sCMcPrX286mdyEgy8Vd5IjKUchPReTiNs5
	 WOTCXrbPQFO5zvTVF3EF6FQec1PMT7bzdCouYg1I6CDl58F2ty/Sq6LGPUJI4NsTVx
	 jGRXpA8SDOXGeD0wZ54lZPwfhcSwTFJllQiidHS5cWlDkMNLK41xYuiZndP4GRitwr
	 7GR9jD2bWFKnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9057DC369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641759358.20500.4066618867987798768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602ea97576497d9c573d1fd158fc1f13eed29b2c15ae42d8df40f6b754f3ffde
Date: Mon, 05 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746417593
