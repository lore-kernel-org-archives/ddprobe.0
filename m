Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC1919D087
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760173194; cv=none; b=egT3vDpzG0oIse+SDCAtaLnCJUSPKf8or7HQLQeyQHeVFeoDwgEEtAbPAPaN/qhKtm/ZhmysnoxbKgzO21xCYcG4oq7HTcMsZJxkVjiF93A9RzX7AKYa1H42g/W/fN6+/yG6mZ6TnBwR9RTcXcvjyrcf9+JgBfUd0i2f9p0dFug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760173194; c=relaxed/simple;
	bh=cY6IVKzgogkLqMIRzATD5KrPwFX/tmZ9gOdHjp0w0V0=;
	h=To:Subject:From:Message-Id:Date; b=Heca9ZAK6ukGn8abpU6jNTUMpp1p4jNG0dCXK43KDmxbDhgfhucV0xxcv2H9ZItQmLGDOdmPb3Sly0ep/Te8T2G7KakSHHoDtRs6aS/36vmy+BuODCe6KP2gApjXMLLDai2kuwPeYjVSWzmTe1taxETxtH3o2mQq2ujjH6r3pm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDAED7Hk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDAED7Hk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91BBC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760173193;
	bh=cY6IVKzgogkLqMIRzATD5KrPwFX/tmZ9gOdHjp0w0V0=;
	h=To:Subject:From:Date:From;
	b=pDAED7Hkix2yKXzw0LQdzW78m+XjZYA/VwGZeFGXQ3g5s335aY2T/IqCkLkJOxkyE
	 fxOXZWlE99gSYGTqhDL3WM7M+gy77nO+M8YPTGe4X/W3GGqngeFRo4W3GWFHKJXwl8
	 kBA8iwdMGHO2G0MMyaz7biznFwlLeEGGOpTxZgTGbYGKmUsfgF+Vk/Gk9vDCfJDDCK
	 KuU40PUEnMmPzV5bWNozqYhMDuEV1PNJP65j+ZZUEECTl0xbtXmf+OyC9Wo8yYcoxp
	 AAywRp4I0rZTYttT2QFynpxHHyGQUig+P5rMX/Yn8duS5DOdiVbwHVj3QpEApeA/LP
	 eiJ5EVO/fE/ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954D0CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017319359.14859.13481081029370048888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 517e6be3ae7bf68ae873127e6adb4778526af55d507a6080ad7976815d884b35
Date: Sat, 11 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760173193
