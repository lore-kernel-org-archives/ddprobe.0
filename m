Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D642DA765
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761320995; cv=none; b=OaRJy3CCY88ECgeyc7737bFy5VRopwDI3sN+joXSFYPXhoZcJ8abNALTi/nprY8z1/hmdfz+X6BtZI/ATvXFPzliuh6vQV5yc+EodC/HbTOeFZJiIhxuVcC0dHA9ZcFE9OP74peA48okp47h+F0LGIO/9cnZuWZksGc7chkgc0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761320995; c=relaxed/simple;
	bh=RqAFgz7W/Dvd4yJgzAcFH8SXWaBbwfpRWnMr6A7pORk=;
	h=To:Subject:From:Message-Id:Date; b=ijTuTOzxXFS5u5ojQKqLvmeIER7ap0XbFhlqNlGoLctzRMjJXtDXekGNnZgqdmE1F+SH2bzpRkKeA44N8UTCX8j6wyJuQ3u1zgcMP3qoDe6jEtg3HoOH3bGXZAvxgnjWbi5ClU2xFR6I6uFgLZBlVGXZ4QXUyjwL8RQfkKDKcR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utSdmaO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utSdmaO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF88C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761320993;
	bh=RqAFgz7W/Dvd4yJgzAcFH8SXWaBbwfpRWnMr6A7pORk=;
	h=To:Subject:From:Date:From;
	b=utSdmaO5tVTs5Oe4rec+uG0gUVo2FLwk3UJpCZ+R04vPxrl1Z4O+iNnPstb687zXc
	 R4uubfonzsKI0WBMc/viAn+okzD/NiSGTv20uo+zqxUqN4S8Pw48B9FlwYz6G9CmoT
	 0ox/bcGc3/ep/+I3fy6thO0p648JLcOMHuOTTzDnWyAG3q4VMcijA6JjnQ6k9Qz2g8
	 oK2cNVgSuVsXYFbeet7vJBxiUU4Z5nmXgFlW0g52m8H7+Ez2NPNhgstWX7f1cqVOIT
	 f9vFiv02SbAizWuhuX6G+wZyL74zhRVzW2HQ6Y1mcl4fGWtmdo7VoiBtY2BXUmYWPU
	 Wzz7SatA5BsLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90569CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132099358.12294.13379147541085727101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b601c42c7ce95156bc2e78fe8d74bc2c64a7f0ec4d0953207ecc5a64e4d58ea
Date: Fri, 24 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761320993
