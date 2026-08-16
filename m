Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2E3317161
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786872034; cv=none; b=XR5DoE9K2JeCTqZL1NdfPnpVu2IO6G5+IrwU6O6F9nM4U39VRCGttC5c8iPSN+djHk0AQwgiXOApQ6oGzdMy5FEhDssFyYXxzVBbq5YOSRJvRGh6M325K0xdJ/FqHOcpD5uiByQEXhVOfoKNkMumIQkC+QecoCMon6JkQUv+A6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786872034; c=relaxed/simple;
	bh=QFkQUS8R+8eLFQpnsVoVo2eeBjTGfOvaXprW6RzbUaw=;
	h=To:Subject:From:Message-Id:Date; b=uWR/33GHQ51OaT8VIvbLwBRJB+vbCG2tvC8846ItGphN7KvmWVEtwFlxqhqh1i5DdkIJOYxR4d6PK6jlGeV6Qb69kPhQd/P0Ij/6xbbUdCsvd28Uu464j2g3DzgHuQaA6xFcVe3EoVrn6s7wKdChEGp0WHoLl7BW1/pMLjhJ8jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXih7Hz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXih7Hz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD39CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786872033;
	bh=QFkQUS8R+8eLFQpnsVoVo2eeBjTGfOvaXprW6RzbUaw=;
	h=To:Subject:From:Date:From;
	b=tXih7Hz3f5PFQ5kUzd9bDRa6U17D+wKNJlLPBjcujlXijwuoKMzWXmBC8QyYbXABR
	 HObxrFQIMLtJfHa4M4FdAbnJ46myyHfyqPJf0Q2rPT4uzeGRPVRMmPTqoYJr0wWbR2
	 h1C3J/cfbfQ1592lPbR5hqcRmy1QjdA/6yW3cMF61DCWP69llmD2whDAQRAu0MteGn
	 kt+W1rzmmJF3bAKJpO3LMPXxIGqfPJ64Eh986SZVaIP6WVxXNLXXJrDRvRCmh5EHe1
	 3BwxLsgOnixV10kdAuZQx+avjppFW5z6sV8kPwKiTbE9WY0JAPfYlSmmFgV9/Enfcu
	 DFHwij/YjTYJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA195C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687203368.18468.1059983307309094082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924b20eb1778a33a001eba8f0bffeb1d87f787fba374d711da54f0960ace9a6f
Date: Sun, 16 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786872033
