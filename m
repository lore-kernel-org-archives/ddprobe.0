Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B261E48A
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708269497; cv=none; b=tgWBfytl6TemBBYqsX7lscCFIeuOIHLwmUmBOwhEeNXONy7iyUdjknRfdsSbjCfoL4XNVfhKjD+eFaCnaa2gFW0Lh/k4HrjtdZfAsu33/YyZ1MyJo3c0GUqlnmlzgGEQrHTmKf7wlhMQQDx+bWZ/XlZJTsMurBGyBuNmkT7HZqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708269497; c=relaxed/simple;
	bh=u7EWYYv7sjEiOR17n8Em6saPiWfKmZ+ykuQc7tMEpFM=;
	h=To:Subject:From:Message-Id:Date; b=pMlLxC+akv71qFllAWK/yFByEVbAtn8f7zgUzWd+q8az1XuMSBgQyIbwSdO86RxsW208VNttdwOBkqCVOXC/saLsor2qt0mwg0hZadRN7QOkFNbJtm6hTz+ZS2Ilib8vBdMX4ef7ev1GbZts9njQn/OYmvJm/nKx7wo9hrBNF0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2U7RWEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2U7RWEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7906AC433F1
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708269496;
	bh=u7EWYYv7sjEiOR17n8Em6saPiWfKmZ+ykuQc7tMEpFM=;
	h=To:Subject:From:Date:From;
	b=G2U7RWEbogzO93/HGEDtIKEEJmXPab1FMkd7ztSR1oZntnbJefldydAu6PVOlGMqg
	 yL9QLajo8c5Ug1ZqM1jvW2GC9std9HN9EVXXe/ajh2ri7xJOIhc3TbNDH5qXQTgK09
	 /yzy9j8yJzUPm+D1SBsR2mg5n6tAYP6m0KuhGFrA5URen/YYp7KjQrFTMCJf1Y6edH
	 BShmpcbomF4WARV6/IWCpypP+pe8KzR0PeCdEYT4m5ph1O+ELY6zuxIMRMSRDXwjyM
	 AJ8wBr+Smcp7RYfeh5bnJRGN/23xARW9gwiDMIZyRPcxf4z6S37dmro8BuDEK9FS6u
	 W6jvmxIO7ooxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F405C48BF6
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170826949638.28166.3657390663794509053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b83b6d7fe789e67f34094768da05980a481f44e8d72068e763fd6eb5d5edd95
Date: Sun, 18 Feb 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708269496
