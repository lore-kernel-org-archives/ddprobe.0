Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3515E1D88B4
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778620234; cv=none; b=FvNROVbRlARDz/TstklCW5ty+Vucf8JLdviVCX2bmcr3uUHTwjmNED8zlk2wDgUlyMR5DSJjjzDuZRU4+OcAMm8rXzEkWBnGpzi9OUW+tC4geSor4wOI0W35+qqmPnnw6OvrdT9OaRxCB6htIpvSh92REeGBe3j6+q+mRN+nDPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778620234; c=relaxed/simple;
	bh=6EDToFrDphPO1nvz3XFGXyZTDxHbsIWWI71decUllBk=;
	h=To:Subject:From:Message-Id:Date; b=YLscwbaCH2OmU2HQJVa3FyKx55kbAZCxFGGh6Fuxq7a0y0aYPlE0FnhyZjuG8rllu+X4GgUdYt6A4o+A/8Xbi6nGE9x0Bt8d7h6duH5N5dhSL78Vyknt+W5a8owg3DNoKuT23HIPOsqPmP6k1Z3IwS6yyAZjqtBaN5fRG6NQplw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ma0IOErG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ma0IOErG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD66BC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778620233;
	bh=6EDToFrDphPO1nvz3XFGXyZTDxHbsIWWI71decUllBk=;
	h=To:Subject:From:Date:From;
	b=Ma0IOErGZad33/cli6HGnU2QPB1CfwEjWEqdYpXGVR4PgzZ22VpPEJpFiRcdoIZfz
	 eFbZAeJ1VNOpfq2fm+qsSAFNteumlJ5hnFN3cGsj8H+15xx9GBIP/qLOn5BADGNkk8
	 09lDubXch/LoGnkG0Flc24pef05rXYZpl0N3P/0n6ON0cY5yT3H+SlJrRpbrVKzRm5
	 e3MmWB5NOnCJIcKi2FllIcJVXxqhtJi5QNe1gIenfj8dIhUUF3gUM6L+TC15yBZul7
	 JGQU+lDjpUA6vqaJ+Bj+1v8QUhqQytdwSDLkP9YbzONPnvLckryNZTdwlQKY0kSuKZ
	 UsPcDiG4uzYyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3A3CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862023369.26215.15042299916636081881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d6192a44a19bf4b44a611d429bca791dfe0ec32f4eb97f2c46f4b45993729c
Date: Tue, 12 May 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778620233
