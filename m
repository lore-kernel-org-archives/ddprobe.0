Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E3A2137F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 20:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715459543; cv=none; b=BkMNDWb1X6DpgqHqgxw9b/TXNEpycwGG1UNMb5DvdNHqIVgqbfvZ9FP5f5AhXOUwLtubKO6IqtVCDoTlr72mE3mFnHHItpMuged3xv6MYbGQsKmO7kYCCrprHCa7unQ0X6qeEeffevOu2d+Ip9AyYySVp0CDFb9xTQ9bcwvmoWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715459543; c=relaxed/simple;
	bh=y8pOv7qiYz/nkPhee+ZHRSJREV3Yod2pycvLpBITO5s=;
	h=To:Subject:From:Message-Id:Date; b=he4VYfFnxK1enO7wgIojxg/B4qQQ+02Mix7tIzGkcBmcTRKdo3sxbRXFWDEpSdWXq8NFJagvAiNkL96I2pxQQ67DyVWbqkkazzKV5n1oTD9V8tm7dQg/IcHXn6jp7ih8H1rhHHu7O4hZ8UlwuEKd9I4ScF6X37etai/k3lor5fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxGxC0EV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxGxC0EV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC85CC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715459542;
	bh=y8pOv7qiYz/nkPhee+ZHRSJREV3Yod2pycvLpBITO5s=;
	h=To:Subject:From:Date:From;
	b=bxGxC0EVs2hbjf6QD0sJJPCx7dhBdAiMgfDlhsbw3goPYf2vTelXALy8Dmb5dVekQ
	 ke+Y6Ibx8fJfRthX7KwctSmLVxwc4LbqWCZdoD6drXUg36kflhEWL2cKBwDEI0JJly
	 sEcU0BJpoFpe4MuCIMGceiNriHRywuRy+D6h7BJ1rH9usMpi5TUBi+u1eEdw+LQbmm
	 bQvzV5klzY0ZmM6BU0EZhGvamF3cb4bGzN+bthsP1NRtRVeI0Tb9HV2jlULBI6VvA9
	 Sl7Ry2EDueMHhhMV0RfeXHlyEjz2iLNAQxPl5EN5W+GYDxMb/qqReMIy+ohjNnUPz5
	 Stzl7IMwhBvyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF28DC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171545954277.7647.17352504692427922970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182dd55be4e03c739ebd8e632749b8b94f7781d44ae93d21af9f81ca93fefe3a
Date: Sat, 11 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715459542
