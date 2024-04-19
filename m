Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410F47F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 00:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713485363; cv=none; b=Y3+8IImG3bWGS14ZKGdmk6tsfcNojvlBuYiTjwOcKaGXEa0gYa6ki48Uzr8ltAJWXmti/Rb75D69hrsAyHxiXNugtdm9/r7vlmWe6L0/a/TER2Ib70wc1oaKhe8uTAK2Sr6qpMCdqOFDXVJKpqJcndwo3GrvGEXjfj3yrcZ9rRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713485363; c=relaxed/simple;
	bh=w+zY70rIFe+oLUr+UTe1XhZYgg07EuVZFMRM8UaSWcQ=;
	h=To:Subject:From:Message-Id:Date; b=bRESFVO6wPbcZQrI0ngBNsJA3E3n2NsY7SXA0UyPvELtucZ6dUWnF/N0DIkxet6j68T9wKz1VxxiE80UBqX+txH3jXEynkiS55dXnJ1//8F1VM5F5Kl2jPzPixaAYNHITmrADaa0TtXm9ACBCJ2jpCPwN9I4zffniHs1G8nV4Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YskvewnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YskvewnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C32C113CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 00:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713485362;
	bh=w+zY70rIFe+oLUr+UTe1XhZYgg07EuVZFMRM8UaSWcQ=;
	h=To:Subject:From:Date:From;
	b=YskvewnPpTHNrBNqcZMGhATldNvQZq5rdjU3AWkwq1dfoISyKCIHL98O94+fFanlP
	 FRz6zHLRH8OR65iWoDP3rncgwFsP6fswCvQECuW2UuDtstrtThckO/KUbZTYucR870
	 x+ehDMXXWQCYzbeImKquMMQbUyZW7c/aXpcZsbR2EGB+rK0t3AqTFffHq5qP4lNRR0
	 IgiRUQW8IDdSafrOLr4jRD7plQT2e91G5IWWbslFD6abi3mXHux2gBNi/69pRo4nxW
	 HVoJ4ZgvnAXv5BtpHyNHK5wwjiWEdC33VKLN47uWL0iy4P0IHMM6gjkUyR3uYGXcXF
	 r2fiTZMrYtjDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C361FC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 00:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171348536278.26214.3852714043597456276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03241d7ab0465c826e34e5ab12a72e0f36acbb0abf615cbc056423ac372a63fe
Date: Fri, 19 Apr 2024 00:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713485362
