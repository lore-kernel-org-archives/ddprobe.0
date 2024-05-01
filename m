Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F2B5024E
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714578143; cv=none; b=NHgCkx71qoCM3+fTsKtg/Merv9rXQ8ruNR31ziMUCcsya5w3qAGb++q+a/0805Cw8gYH/qUCh86qPddDe/lDTPPfVcFK5+GDqf7Na/9FXvhXR1Pp4rhFPcyuV2c878KbHWxhohckVABns5rzO/nFpCyMV4stXscFDi1JFLTETZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714578143; c=relaxed/simple;
	bh=8lveez34BQqfm3bGsBaep/tUg6S6FYv7i1q6IblEL+c=;
	h=To:Subject:From:Message-Id:Date; b=WiMIGdu56o1idYJx6CHXbkmKvAqVIHWrJLpGawrrHT1SQbJX4omrvEetgbmk74qtOP5ru3/pAMFAY7eUPnjRK8/kEdBXrlOT5sGN1KiS6iPZiCQjRn0X0jwV7Vg3jLCi5fUE5UoLZbI7ozQR8H3j0LPCIZqm25YpsM9jTFbCBf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyN9nO5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyN9nO5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC36C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714578142;
	bh=8lveez34BQqfm3bGsBaep/tUg6S6FYv7i1q6IblEL+c=;
	h=To:Subject:From:Date:From;
	b=FyN9nO5AmHJn1D9hynIhoVWUjVWzzjhoYgeJO3qz5y3TKerWXdVqcPg4NKqzKyHmI
	 3gqkyYZMq6jJaJPEG5908PL1i0/dfpnks5mfzRsqmIuz4X9+Jg+l7W+3Lf6fVpoTRu
	 +K/eOmBURsYqIYuCw62KYMB1/NwWZXAh4CMH/dXsYWviNbOcr5W3nJcQiDmm/skuuq
	 fsgSDQWVpAaeq5q9DXuHpty0SMZZh9J/nhemVMK4rAfilzR90GevSCJQhp6QhHkNo6
	 0cwzEJD2CIkTjqqAXQ+ubo5eM3FiJd9ahOEcpcY6civMh60NluktgoXFbz9gpq7lvX
	 6ItgS9tIlU5fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF13CC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171457814277.17062.4397143276593072299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9762e136030986c936081e3c08994f31df150d2ba7935e7c5a3644d4583180d
Date: Wed, 01 May 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714578142
