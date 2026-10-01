Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309A5331EC2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790815834; cv=none; b=kW5lcVKiG1qLdkbUpW7ryCgyOUlRkuezfR0eaRgaBfUcH6pfF8F0DxDIXtd0xTZr/dfO16XOEFuzwyXb2vsGvvHS1464X57n2+C920Q7aBSvTzcXigkBth+WVpgHoCDwUSisE2vTQ43u+YGUm7gNySiTZZnKQpjv3hYR/QywY24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790815834; c=relaxed/simple;
	bh=IbDyRpVgAGZNlPkgdew+eFJgh3J6lOyEb15NJX0ypdI=;
	h=To:Subject:From:Message-Id:Date; b=cG52xgkKuOjQuVrSmbBv73ixAhsUYFFAVAwRytJxwoU3kzNmS3dGFG9Dzi4q6rkn9bRgW1ObjnaAlhIbGNYQmjKaXyP7/2kH+EharLQx5BDUj76Z6PLSUnPhh9R3z1+4ACXDLC4hgzjOOIIU8+/M0Sjj6hZcEo6rPre0DRP5xJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAN84cF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAN84cF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C2BC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790815833;
	bh=IbDyRpVgAGZNlPkgdew+eFJgh3J6lOyEb15NJX0ypdI=;
	h=To:Subject:From:Date:From;
	b=YAN84cF60M50Fbz76yvf/bHx8uJbKn2SW/97zQH60lX6W5/1z0OXlEN13LL5Z2h5g
	 HbIU270JsC+k6BtgUeXjeZM9ph4BHsUNWIrLEk//TV//VIWVUNrPGVqAbNFYub+hbU
	 9FZxJlQsfII7spZxDrWy50vfyqjFpVkhTF+ThiCBXyPmjf/ohbmDn86nVKVVihP5gn
	 VJBplraO+bPDxZ9IV18HkphnXNqJYUwUoye43ULSs5QIwNQFXKgCssk3hwR/bJjiM4
	 1LN3URTsulxelP1mcoCnkLmzAKTpsbHIOYmFpcW7x74Xd/7f7RsWOh9NA9uYu3HYDK
	 CtqyNAQnDHg8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD809CA5FC5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081583368.28528.9511660102305319888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33148784c3765609ce632d4683e194cec4063dacc3a059d89232a0caf0c511b2
Date: Thu, 01 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790815833
