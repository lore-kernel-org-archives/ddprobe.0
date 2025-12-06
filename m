Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9123CA4E
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765064573; cv=none; b=jhu5PtKXEzMBzq07ZOMEWoEYokqs5+ykEzFJO2KfG+Ld3/DnjHyaZ4O1gz2Fwf8MN3+iIODXdLsfrQD7HyWTcboUPFYFbW1T+FdHxjuD7bsoGbdFVyI1srh0FSMlAluRfzyXxKHQzRgCyULgYELfGH9LPrDc2jq5NQcL1m1cu4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765064573; c=relaxed/simple;
	bh=UqGSArjZjdN3pI3XwPBQ9w29NQpK0S/f7cDLg95fwV0=;
	h=To:Subject:From:Message-Id:Date; b=goxFspCrhoI6amKK7jtTDMe1lioEmd3FahT0widV303HybC82RWJ1WdFcknzwidDlo+SnV2qyyLtbM03iih5MGxW0pAUI7Xow46lYD35oAZJHzc7rmBKKR0m+urzVEeNLI6CkWSQ9bmM5VclvonMGmkGWU9GYvb97lguWjgtdi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7WA4snj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7WA4snj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D10AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765064573;
	bh=UqGSArjZjdN3pI3XwPBQ9w29NQpK0S/f7cDLg95fwV0=;
	h=To:Subject:From:Date:From;
	b=s7WA4snjKrPFRyj9bHIco51s+gOtlyiDRLaNY5jQVHl04NG12W33ysgZZ387mwuRy
	 9c3P/DWIGb5ARYhQcEmKb4H044Y2T2cb7XyP7CAnvZ4Q6cpF/Qn+OWCEs8XIWqIjpw
	 XhbnKvYArCrH5LKQoH44FiPnE0eCmEpxuO7iJWvvOixu/Vl/0NM1LWkSErGPUKArKr
	 o1f6bfWeD655fnL4MNl/iPr1XYQa84tx4BtDHGInUr0OkS487lBacggbpjSApInJah
	 eWB99WI7yx+KA25g+MCipr7sHdvryGGXKhpbPoh0dHwRVVb3vfs6+qFxWLa0CYByGO
	 NcrorhMSRC1ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C1D3B7E5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506457358.14907.17200874339088280547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db02c46ec7ba44e357c333f20ff02fc5fa037fe16a7ebf96177c6560fb22b59b
Date: Sat, 06 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765064573
