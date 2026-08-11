Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A294052B8
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786441834; cv=none; b=DcdG7hGiCwWvb43eiBXkx9EzG9Za1/BbwXCOl5+IDExAAj7c1I1NIThsfFY+2chSXE608zfYYzuSLiM1NNw55JHfCw35o7UmzHVevtbyGBs8top4a5rYmj5wApyX7eGuGgb/AW8YFgqcJyXS6A/zVucwKAYctiAmdSWXlJFnTEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786441834; c=relaxed/simple;
	bh=uAGPmqJETOb3nIp5krV+SYSFqSA48kwEJHry7GZ/s4w=;
	h=To:Subject:From:Message-Id:Date; b=XeLZsex/3Y2qt/hxabAUv0+zsNYM8xG+H4DvINK/iHhxxctRIB0uCU1MncuofoxPK8ISDPCupf3HB58f/bLkoTYJjyvjvfKFwqLpja9qDYzW4cZKQGoeK7DG8UgHlrCXc4Lc3rEQ7A+jgInTYG+8lPU3OX8TndrdpWI2AjkFYfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsmq3WuZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsmq3WuZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC347C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786441833;
	bh=uAGPmqJETOb3nIp5krV+SYSFqSA48kwEJHry7GZ/s4w=;
	h=To:Subject:From:Date:From;
	b=tsmq3WuZZdxCTCV49d8yi4LAoU0jX5ZJoBhyFGY6lOMLvribeP4hRH3Di5bACY4aR
	 ZNGS7ECGogabWejEVdYa4TR3q453dXBp05kUitzcl4NMlSHhQWHdvZbhr3dtMtD8LH
	 /5sCjSMYAinaozt0j/AXHsWCT7L8fy1vmJmZqRjik5a1Rigrnuj/ObUvjU/UkEnZGn
	 9OcdX5K5CFOHu+TITlkLc3SqV7ekvAIH+rgRbewfRJmMQK9NNF/Wh9yKjMtwS5L3O1
	 HVvRlpk2257xU06IEN8f+FU8LF0BcFpxxLpDsXPe+vEKGMpxqgzY/7lR4wce8/F1Qo
	 4h1FsCKXIj1qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A81C5CFCF
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644183368.16896.18189831122124740005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe5dfca3ad283920e649af5d3295528a2f95772daf65cba4d3df15a4429f1dd
Date: Tue, 11 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786441833
