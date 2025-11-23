Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1225F5CDF1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763892714; cv=none; b=gxqCYfpci7Ov0OMDVHGsFSt/KWsy+qhDXB183t9+dVW+1WFUAN7wdoU2R9eTftKJsARFT4alKpFQ6XZtJs3WNh8uPN1Yce3ZM3ROdhwgTKGWl3/hmyWVd4HrEQax8ICYEnGmuWErCsE1pLgpvmsVmsNo76z7FGCbtlRyxtDw3sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763892714; c=relaxed/simple;
	bh=jBhi0tbsx9J+KnZwD4Gd/TrGofxODTMK3aZrXR+u+xY=;
	h=To:Subject:From:Message-Id:Date; b=WNZ6CajQSC4BE2d4RHL8deLvfaZQ6n16TWyn4ZBNwUhD0ZMkaOOXciHcO4JYww039L+wYoau6DvjX4LBZ/lnhkRwRzgrNyjBpCLkMpY7k3VwRuTNz1G5VGrZjK1tCcvaD1nVWQUZSCBvixc7HKhN/BW6z0fPKvbRv0XLYFLu3Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzg13cKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzg13cKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C23C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763892713;
	bh=jBhi0tbsx9J+KnZwD4Gd/TrGofxODTMK3aZrXR+u+xY=;
	h=To:Subject:From:Date:From;
	b=nzg13cKvBLkTx193qUIcsGvnxvlfflJ6l20Y4S0fPehYWdfNt++U9kaBbL082rMxH
	 3MvCUNIauH5SuvQ0iIOKbWRIQuisVr3YVOZ0gxh5rsx+VpMxoFJlWnwgb/LpqkV8V2
	 8z6e6f2DOneqXA0MKkGzLl68Ldl15pRE/GeZlN32ZVst6jzOjLHIJuq248PL49wjPt
	 ZLbYVZWXyDCmAA53AwYiy39v+d9nl9YAnS0M2p5lqLekW9ctTEL5V3vybh79nn2lE1
	 9Cx7MGrsT/n0ynDWwK9vGFtDYLvoNBWKbACPoO/yjVI8qcFKhavNgu14/R2KGMmhFA
	 wvPwM1P6hvmjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946D5CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389271358.13412.13686832614153141349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c09e6840fd6df8dd44b1f75958b2b847019ff162c6f669424d96da60e706db
Date: Sun, 23 Nov 2025 10:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763892713
