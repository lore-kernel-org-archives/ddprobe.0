Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC0086334
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768493634; cv=none; b=m5fB8awlpoR83+iDRoDnJujzKI3b2HKz0UlxepdMtkawD/CtIbUqVExJNFH+9AWKcyisWvkyVfxxk33CD4VVI5bINCAxEvqMN8YKtLAaFQiuicdA4ia+R5+JXqtQ91nfUhBZROUHR+gbnnLgk7UJS2OWNZJ4mIa9AjruetQ63OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768493634; c=relaxed/simple;
	bh=vr4cOkuo+vEc1w7SvNAlDRdNXwAhgl6iHPBo25izfMA=;
	h=To:Subject:From:Message-Id:Date; b=RPT2rVzvW6KbRyQyAnC825zfH1SaGC88wXHCOh3JpQmLtOWQuGS1HenbdPFyS9UfGivq3+BiZjZMvXqTRqTe6kEe5WMYA49SCFtvmNAbLbtCdAZirzNAzbBU9cwRHHUfkisWB/z4yHABvAw5rgKhg6KxXs2ga5NVolrF5pCzBH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbgn34RC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbgn34RC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A377DC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768493633;
	bh=vr4cOkuo+vEc1w7SvNAlDRdNXwAhgl6iHPBo25izfMA=;
	h=To:Subject:From:Date:From;
	b=rbgn34RCvrJuFL3ensWaxwQ/2n1uxwbwb5PiNiLkETTXGEvv79uQ5ifuBDBzZ5Dl4
	 9d6eMwojd/3PF5Cd8g4nuDSeUeL4g9LTCmtYz5rY5s/p9rUruJFfgeK7DOfONX+XQq
	 0ckiW9384IivZFBkLe0rt/RzlvLTlxY5GROpe9V50VWtV31SlgH7k4wcefaMGm0tJ0
	 CJnIkjSwI3CUI9Uw8f425RUBjopZe4ihpFuWQSVZT/y6J0xZ92MyCn1kaa1ZsXBffa
	 QV996Zjm/Pz9kx24NL6tjxR4jhfx99frpOipkw8p6ypa+9vDT2VkzhPYxRy2FbTvxx
	 2r728QasPkrew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910F9D44C73
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849363358.22314.7703871591340222053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e064410c44d42b59505b8f1dbb2264c31622cb5a4e30f557e3c2addfdfdd5b4
Date: Thu, 15 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768493633
