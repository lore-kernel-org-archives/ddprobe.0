Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339BD318E1D
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746497394; cv=none; b=mcSLJIXTTc6RVf+ZW6Lg8DKwWbXtyuunmkCqHKDI7WSggmOqxg1Ts9EG9/2xsacDJn+GI9AN4zPnW7mohpWgcIo0vXqh0ZLfeYEy6kClXx0rU9rFU1C59aRTXiIVELsBgbpKNMb8yhl+teqriRo4+Kc/QwZpabFCVYVqkVKQDRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746497394; c=relaxed/simple;
	bh=XUVU0VxbL03yhPYdwrvE0XB63hISkdNcyOasgVsOyns=;
	h=To:Subject:From:Message-Id:Date; b=cIIVOaOcGKRsgCfYrR+vOCdeb2XV6vx5ASm8hMqqSOfkQIvCHXA9Q+BVTrcpGWzmsBUF6q3h6bfBtnyfZHW3hTDbYwdC+o09RXqkQwAIJ5mbXjrUghblCnPLI8BoIqshELc5y8J38nNWiSLkPv9PODk5s35nMJiPGi5tsa2r2bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7c/E7tf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7c/E7tf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A261DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746497393;
	bh=XUVU0VxbL03yhPYdwrvE0XB63hISkdNcyOasgVsOyns=;
	h=To:Subject:From:Date:From;
	b=l7c/E7tfz4J4MxZVwNDeV9kdWMnLqKLkA/VvwRNO/ltLWFME9Ov7DKBNXE5HVm7jI
	 uE/5Vk/oWzmasNMeVNM4WqZzqws1ZCiJDs8RIK3eridIsr/0Z1nvBX+QOagfd/4Mpc
	 97ZokrHpaQQPRQ3aq0DFuCOFqm787zCNQ29SLPic3AxbyIr6nwSU/BgCYmNPRPirlZ
	 l6vZ/zfJMKGbD5KDMWLQ2B5as7UySaRc5Dp8CcBVy++NlDSw1VaBDAPpcNitvMKUZC
	 SaHBjZu/Dysq0avcdP+RPKqJ715/QDZvHRatRX3qWrHfGV7HX7jV5tPw4K1yDI6kFK
	 9GxubMaSkfMUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E99DC3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649739357.3370.8523511735264030553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ed542a445a5a713d699fcf9b20b626f398840fa11f8bed5e27fa4203ec890f
Date: Tue, 06 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746497393
