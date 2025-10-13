Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A382FB628
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760396994; cv=none; b=oowA3x8mymZI8NrDE9/t8WXLRtfFKSFx7VpZTy0RKY4okabe/l6nb+eNr0s0qtKiJxFdMAbwfzzN8A+47WnERKf9SH7SgkZShUoh3cjwCqADJluOp989fFDNA8q5In03c7uegggIHBbJVYLU9q439Ohf2tgtCDjRwF2tMlPEjec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760396994; c=relaxed/simple;
	bh=blOorJQtMynn0RODzJY+q63Cc4CRc06Tcv+31ArkVoI=;
	h=To:Subject:From:Message-Id:Date; b=i+fuA15R51x94SWnHDhPhURXqtEkRrjDgOF9y/8HtiYOoyHaX7aJc3UPMHndKItUw3vZM0DnFm0N0HS9j8S2HZZa6aZ/BTvCg81NGeFQhMQxLPA0fCRZHg0ApHyrYxhWAEx/t3xNBVA2MYOvnPSuMBSMT4EYo+A2Wv9fgr3YcX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSmg7rRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSmg7rRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F259C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760396993;
	bh=blOorJQtMynn0RODzJY+q63Cc4CRc06Tcv+31ArkVoI=;
	h=To:Subject:From:Date:From;
	b=cSmg7rROimmptJ3Ln3qy4udcUXlwwKMna6u6NuAGKVGicq3/krRmtS/ULpNHByeqC
	 YRVvi6/z80qjuvEi4H7ubKfdchqKpuFklhVXKfeW3DjYAogVbdVINo/yG0LKjbeAhF
	 glQtx4y0ev+mu2Pp3Y0SesSqcV0/0EjeFFC/YY85vzU84dz0gbanYn6KWsi8Xp+Thu
	 YSNJnePYXDARkmuCMz3VH3juTFC5zjnBl+LTYmTVsUwWk+84TDZUd783o/JeWmADdN
	 eDAtSo8gcL5x73TKbndvUyEXY/UUU0UAtELTqwCZOTz6Vj4Wu/clJ3L1rOTicQa96G
	 4iQjCKV+8/OFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90770CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039699358.2823.18031027866925354662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88513a3aa79dbdccc281a093e14bc7d35150d754a7c711dadaf607d530bf3d6b
Date: Mon, 13 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760396993
