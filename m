Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6BC18E743
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744121994; cv=none; b=c1VUbNTQ1QcmBKEhrhslPXY9I1pMCllO3Om2fXuyY9G7pxmyNAHbEF/cTGBp4mpSNFL9SHXP2tCSrzlAWDX4U8mEuyt4mfwXLLjCfd5s7a7ZILJokWgwR05HAyb0mYATM8emiOcQwgsDFFJCKBFdIMczG6tRORJgOJNFvALlzS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744121994; c=relaxed/simple;
	bh=KlrGPgSx708qrblIipfI3oS324VAkEMwEcdSho2Fqdk=;
	h=To:Subject:From:Message-Id:Date; b=Feal6R+Jrk9QalAmTCkQCdX4rQyZ2CK5Y4W2ajSncocI2YMMd/+NxW+gkfzl1DRbuXKenT4s075Ex2IisKBACCxYPLoV/pZ1V1vCSqKtYffoszliaSnLS0c2SPl6b1c0bgiDJaMj+6rdqyyRZ68ubtZp5cGb0demoz5dBmUJehM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hzk/pJua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hzk/pJua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A8AC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744121993;
	bh=KlrGPgSx708qrblIipfI3oS324VAkEMwEcdSho2Fqdk=;
	h=To:Subject:From:Date:From;
	b=Hzk/pJuaQyxZoIuiTp2wQ5qUx2AVP6upbm+bcLkhpceeep4/wHutgR8NOhgXcb9EH
	 JXc5XuXHOMn8JcXLljQSakrCpLlsc4fst+17VXUK3FIpkhw+6U0t4bU9JFXeVJlvSV
	 V3GQHCQ3pXdvByr4VQ6yX9Go2nNqdLDXhe8AwrELw+prndza1RnfqwM3AFFTKmLGde
	 14+u6zd4eJyOgTPHWIZjHiObeX5Tv4CUYGv9HtmpfRrqv9yNdP9l4ziZ1iP+/LO1hh
	 79bEPe3KxE+u7ZAbjg8PBJgiXsEK1fbOIppaMMopU4VRjae5WPAIEAWbKbLzPiyVZu
	 TkbhNUJCwuiiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3BBC369A4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412199362.12639.14855297633327338878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d810a27ef7edea901bdd74f9ac065ff442992a01a93bf41ea533ac0e4215156
Date: Tue, 08 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744121993
