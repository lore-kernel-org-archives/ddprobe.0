Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341041EBFFC
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725407155; cv=none; b=sT6OPfzCpKh5Fx1xaxE8PgGc5KKQHCDyQW0z4KaB2kkIAYWxDNSkNZRTXENGi9vKg3jj60/6qKd9xBgxG+ZjV7uJHsk4zcgNFKRWKEcpg7+XoRp31C4tP0mShpr4OjHolAJbtNpDG+f1kU2wc2jwLVRdbfTAymum0/sx3IqBKtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725407155; c=relaxed/simple;
	bh=fP/QfpP9Foq/tyKrF5McQz14io8eKFVJ3TmbvmCtaHY=;
	h=To:Subject:From:Message-Id:Date; b=AXQZyDjeI/0taMJcmZ2EfJSDTuqjh96nddzzopOrJtW8y3rVSXDdkgmWj65ym992LS/5DoTAsIwacoF7SwtIe3tH/el5ZT9vVhhacICJWbSJiVZyEE12OdozJhBRu5/t/A5PMoRYCC2wgtToR33B+Z1kV5fAzMMWT1VPyFcz/Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTzKPT0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTzKPT0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DB6C4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725407153;
	bh=fP/QfpP9Foq/tyKrF5McQz14io8eKFVJ3TmbvmCtaHY=;
	h=To:Subject:From:Date:From;
	b=rTzKPT0OPAshItI0FzoEYJcF5TecAce2he4k3rInM5k9Hr9wdb2Z4dfwoqkQ9/zUp
	 M5z4Znb28bxjzV1hCyMaoNSez2kIM3a9UMdCZ7JOqOkblnCxNAs9K4m6c3u3U5Uz1B
	 Phhjtp4cuF5Xnu0GpvlsoymBbfUHaCTM4IwTloJivpvzCOvwZhnFHMYl36drofbItI
	 c22wjsr5ba0xvR2FnFW1FgfrFwbczRhjFd7d6TUCG36IjWPip1OUlMm07ofE00+H9N
	 YnV6Y+W6Cl7CGShKoo97xz8TeWKi7fm0aZn+qVtRcVfxi1nrGyr5rKXBod5exOAZEn
	 Z9ucfeJRgB6lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9203FCD37A7
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172540715359.27524.1059802587381806488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f97d4cdd9c84e2bbdb4e49840330eb2494829fb479387192b109deae69225e
Date: Tue, 03 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725407153
