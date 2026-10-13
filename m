Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661E753D9CE
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791904834; cv=none; b=cmD70HszREhiTHNTiAV7iREalztNYI5EhfRUEJpigNQSU0BJoq6m2UL+P2ThPUi8oXrNj8PX0zvPaBa9jt52lJM5L28TCK/tnOqI+ZFK1EcB6j1zXL4uHtpctMUbsBQLUGb+JT1nlOsRHJD9dAmoLQWheskeIPza9xcKFJMMI3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791904834; c=relaxed/simple;
	bh=ONcu8DlZXiWxd1uknI1QMLqL7PJwEcrGQmsW+SGf938=;
	h=To:Subject:From:Message-Id:Date; b=q1CFHu6rHI2MBG2FNiIqRhBSFPVpDYIA35kWPc0iK6zYkNDfk3lMXJASFi0Q2rmWJPDeF+KQGujxoR0zP3fhae5FNcnBUQjdOcb4GEbOt8XzBQCYfQwAkvS5lBfVM2SFz8gVYcERqq70ITKhfSH8pzO3sFEpF8SPoiR1sRtOUGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FImSPdi5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FImSPdi5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCA0C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791904833;
	bh=ONcu8DlZXiWxd1uknI1QMLqL7PJwEcrGQmsW+SGf938=;
	h=To:Subject:From:Date:From;
	b=FImSPdi5em2Uex2vqhKAlIrpuk+V3sq5SyqepsqsT6yVe9r6bg4GrabmsCxygZgsL
	 OrWE0+x0bIlp6t2ZqcSqqPXfZQqG/Hv+oTj8fvLHYpzVAMXXBOXyjQ84M9RILsaAq1
	 9OTKcksrUIgX4HMdj7IpwZdHdbFNv1+SUkdTVEexU7g3hB3T7/81926KI0Stk/ullm
	 NQ3FXvs1qJc/oYLbIXCVymZc5H7MCQTKGCylmuzUkks3xvafN5ZTsUkZL2ByNdil+l
	 RjvbRRQ/n6md+sOhjoyIDsfBh4oNQX+5vNqzt/B+OUOcEqSN74SZmWHUlddITr2HpZ
	 IX5A2JFvTXx+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77A7CC6B19
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190483373.16928.14464255150097142798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2054437ffb5dc9f5ffc48ac831be36e645dfcbfa01f4025b9c0497c0561313ec
Date: Tue, 13 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791904833
