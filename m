Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218912253EF
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759001994; cv=none; b=kRSzngPiXKltxr2KpXuuhQiRWJaB9Hdj9504Nij0R8y05in+KOab2fKnyDJfyHBrpW8SV5HJYSDu9bmCv7YSW3z2DkPROgfMcVK4fNzkyD2JqGKzq3fE5zWQ1svg/wWpUeeHtRWB/37cCc3xZQv8sCYP/p53B4E6aQZucobUAMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759001994; c=relaxed/simple;
	bh=JwecfhPf8wavEuAOUfodCXNOtvKfmovAygtDZUOFRVA=;
	h=To:Subject:From:Message-Id:Date; b=rV9y6YvllyBIlz4fgKWNWaEYlsUdMqLL1ypW1FFmcJiNX0z8/zsOfAPWXdgbR9nkWubQpFUB9DWc74V3CmW+xWs+2g9lprAORM1wynLQfXpDODXEPfCQTzMCebBRuYUg3UPtZ2UmAvDkptYQnwCl65JwarY2IsEuMTpHaczxF/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z19frIO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z19frIO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B010FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759001993;
	bh=JwecfhPf8wavEuAOUfodCXNOtvKfmovAygtDZUOFRVA=;
	h=To:Subject:From:Date:From;
	b=Z19frIO2OBEaGJwbFh2K8aIbvZ/vjmewJ1t4yY9gRQyFXy8dq0tyWMIOoHVj+K5fH
	 3Z1Y18xIfrikzMQj3oetpOVVknZzdApF+3Gncowvr1sqyPO/9jCb/3OdQyH9YAh6Rw
	 mEUbgqgKjliShQMKQb0LCdylpeHqxpthkOqyamWgpqytIWkvh3FIzRV+ouUqAuDEEb
	 3RjA0Timsg5LDZBBtrudugABjOR+M/bDc6Elgu33SBSQLk0Zo1YBU7VW7xKFpQ6jEv
	 a6G/WZ4EjOzOcTBvqS2QOkGRYtFl2EWGqCssbFwh6ricFdN4L+NCe9F0PKy5UAmveK
	 zcetXVhCpAyzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95387CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900199358.30849.2493828761277531946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df442e8fc0d08ba0cf0ddb5627121a3c1623254227543a12276463da059b1a5a
Date: Sat, 27 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759001993
