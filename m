Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F165695
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728267954; cv=none; b=kOqZtxt7kJfkfLBWvQzA5b4MrndtSbqbZVk9URgHAUd70NkJ9sjjAGLG3fytVVErFhqzLBEHoTXtJJlgz9VeWUqmweT3esfsClKd7NUkCVwQOHuTWAHgzsV5oP0VlBKiTRMEcs0cLMt9hUsWzl5o5ylHwucyuxN+yhH2wCD/Jn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728267954; c=relaxed/simple;
	bh=YQSOmzRHN8mmutpyKNDnJr178fJXf+UwtJQeP8NuQ7s=;
	h=To:Subject:From:Message-Id:Date; b=C+7LofRtvq81UHajjL3c+kRQ/RwXvykS0WBy260sme4xPb0gpnsn90h4RaANywrCkDqlDKSBzIb5TVDO9QdmtJ7uxw/XLJ26koqTxDbk+R94BP3L/HI1oTQ3l0a67zGNqoerMoJdhFk0js1JODJfaj7VIxdL40yVbtaXZGKNlTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAd2Fcjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAd2Fcjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5F6C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728267953;
	bh=YQSOmzRHN8mmutpyKNDnJr178fJXf+UwtJQeP8NuQ7s=;
	h=To:Subject:From:Date:From;
	b=JAd2FcjnN7Ukb2sr5Tu5fg3l4qCmM5rcgu1CnjPM7MpIP2xWxIOPevOg5WOfpyTsf
	 hpAJ0PmkiL6NGoMBlCkSLGmS740l5nDEIHwRWltrKjv6XkXW0x/ACR3j7qZK63kmJh
	 HCqAWgciBPZo3fqkLSrhEQetfoiCCS7bX6XwdYpADrsmV5BeElkjHC+zt0PXitjAzM
	 FIbIlb2ViKSxUek1jqDLBYBgY0KEPgwklyecsCZ13lmnsQazPT9yzpv/n040lOITJw
	 518qQ7XyBNHpaIVEWkW801Trif+XJuDCwN+eKQ9ZQ2eZ1hhzcwG9L0/q3IknhxnGsi
	 BwGo35PuO0iUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DD3CFB424
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172826795359.32126.6949212989534878679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3981df38b718007d7895f4ed9c1f76d2d1e50dba55304aa5d4c627689dceee50
Date: Mon, 07 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728267953
