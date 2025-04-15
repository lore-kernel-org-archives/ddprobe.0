Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1682260C
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744714794; cv=none; b=mIJbmrS8KFSOVI0iRaRrJWeJJan2oXUMiaTk/sHzD5Ro/TWu4Szb4tlbglSCEWtW0J7MVjSZJW1+jCpNw9CW/kUzWKX7bS8I4nFCJcIhfuYI0fMqo8aa5A4eNqmCxefMLEH8YIOnHMiOeT3nIryMZzhwVS88IyaDOD8SULgtvaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744714794; c=relaxed/simple;
	bh=3UWauoez7BhxUuJVZh6hIBLknz4oI1VWB1jx6sKogko=;
	h=To:Subject:From:Message-Id:Date; b=nKmSoV6iCWnf9MTGrGZXdv4aU/KA8FsirxF2gNclcGWWnveprP9RUTtHXzhQmo6JK62EN7S9eCZEjQrn3DXcIQkoVt6BmDSrZB+ohBh2adeXGMscjsABGq5thVwXKilOIHxF0mAiF7xtKtOI4DoCPXQMKnyNOcmWFL6dfIDbx30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tA7zWlIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tA7zWlIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB16BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744714793;
	bh=3UWauoez7BhxUuJVZh6hIBLknz4oI1VWB1jx6sKogko=;
	h=To:Subject:From:Date:From;
	b=tA7zWlIS4zu5Oi3y4VXajdbM76eVqWlhquplSZYHNDEDjWr0P3dOuh6fFrCG3iEuP
	 NxBsbBgBiISqzLqTosYzirRiG5YPlMocsuLuzt/tKsBtVUtQTYOBQUWUdqG76hBCBd
	 PXxdcWtYaIPR05DACUGB4FVQn2DZnn8i7w3ykvTjJRK7lki5TnOI9S7DwlwGc+O79O
	 oI8XEMUkp2l5qIypBrpHD2iam4xnHSY3xP8thTJq3VXlhz5qNVl6rLnP1gcC8gQgkh
	 +oTrpLaPjlFHJVt6+V4IW6TSdliBWdvx6n1cUi6/5FZLLCUZzMcK2tB93frqnk/MvR
	 Y2KzFh6kE/zUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F096C369B4
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471479363.13002.10478529155243548226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ab5bf1996d345ce2b401186ee43c9edd89b9e5f3ea2ca9b99b26946c6b4df1
Date: Tue, 15 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744714793
