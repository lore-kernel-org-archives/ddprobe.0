Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D262AEE4
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752436794; cv=none; b=lFMZVDvZumFzOTBPXOxTt80W4MBnhJfHOhepdUK+R2fSXrB5ckJUQZ2lFR9V5ZTnt2QB3k18ADIoGpJbgQwofAXtDWx0Jmvoaz2Q7Dl6P8MT+gpTZofpx5ghyiqpMq1s48UZTLNjaJTKMyWehjtK284PDdJGjJ6IBuvU5LQHJWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752436794; c=relaxed/simple;
	bh=rS2b2uxL8eDkCKCKpI147hwCCUWQV/IuXPcX+jg7up8=;
	h=To:Subject:From:Message-Id:Date; b=gJ0zbQ/41Md4zzMn220BBIKPbdR7JK8Fm3T7nRz6hGHegB5mjg70TjkHcELLBVtZpN/x1cvyWpG9lvMEsA1tOWO/qso7X7q/V5K4I6bZEQJlrS8ZErCU/t2JFYD8CpfnxZC2yzqE0jSyegPTmnos1kZTSkQrw9Z36VgVTN6UdIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tswvrEvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tswvrEvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21D8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752436793;
	bh=rS2b2uxL8eDkCKCKpI147hwCCUWQV/IuXPcX+jg7up8=;
	h=To:Subject:From:Date:From;
	b=tswvrEvzaYQZP5dj6+ngg+EylKwwfUY3pPhYXHpUF6yMqW5CxZ7bLfA+eOiknD2yH
	 9vcPgyiwPnoV+m4FBoaDfSZ90wTbabG7GioD/Cl/ozfsQU+wo99YmEUf2W5x8GYSfv
	 9vE9bTe1qOfBbJX2CzXqxEejsg1nQlWA50UKCtSH9w4Ua+2gAsy1IaS0w4mJYhjMq0
	 xgi0coAp4x6LGety0ombFsToEDnM+dBqCrHxjdgDBWgnCacmfJ8Jilzv24n63LGotN
	 MmQ3AZajFEi/DLERJkTc92ssxe75kehAnSBvRB6njT41OjYv6l6C31YJgMMbXYLDR5
	 rSjqSBflzJEGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94051C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243679357.4596.1784685232859490007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb0d1ce0cf343768b6a6ac8fe06770a9c7971ecdda82808b8b1a9842bcbe98c
Date: Sun, 13 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752436793
