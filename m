Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B053253359
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759984194; cv=none; b=i7X6SdGNR02LeVkWrz2c3P2cnHVp+a1JaK8rxBSyhzgyvX7TQAxmmt8gCHSR3UBggCcX4xBlad1zf2aHDxJnnMQCsnuQwQrCcE89vlIJPTgxOkQ2riBSWcUPIPBXstJFhrgAsTS4/2gY1qMUwWwt7YX4RBYyzWfDXE3Ws75dFmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759984194; c=relaxed/simple;
	bh=LZxAS8DyGTFnWlDTuJclpGXDFMJVgBzDd3jp9Kauxas=;
	h=To:Subject:From:Message-Id:Date; b=gNSr08i1nGaL3iRKrCpNBl9fF032hRdBIQFi4Uet+MYL7Uj3PUbkl7Jgg+eKQMEfQhZUl9S/VmIffMEwWo6OUtnNseJNc/Ph86l+quYLEf5lOi3ghEQf9zQIJeKQzD2qqyRn6BvHevbnSWHz4620uaqEZKZ3yI+I10yXfuoTesc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnNS4loW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnNS4loW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B349CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759984193;
	bh=LZxAS8DyGTFnWlDTuJclpGXDFMJVgBzDd3jp9Kauxas=;
	h=To:Subject:From:Date:From;
	b=VnNS4loWk63uZbiCDkf2i/+kmU90YkD+SvfJf/m5ACzgmUEfsuNDerE1zUV1JTIfJ
	 8OA6+MnS/v5l4soKeRPwUK7f2HTUccIIVKhfJUGGgplPv9hBCrYFPLBVa5n+shfyzw
	 HFejG30QMzHmdSMibZjRRClkq2zWJW7j25NG8M2e1QivzCnaSUX9IpdP5brPISQhAO
	 GBUvCuOIHjaacsGzwPFAx0JsEy7m0ku48FRzR/65SIze4xiAUGACfuTqDPm2yaMGzu
	 x2LKv5jcNJ2mDb2LRZVaqN9heHIG77dF4CGGynBbdt5LGr5Vtgnvg/jH+wka3he5NO
	 sjAPvMZtt9h3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0FACCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998419360.22846.12422790632243521355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd631bf9ac8778ffd313f548c6484a61d07024f713cf136245aecd630e32ac0
Date: Thu, 09 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759984193
