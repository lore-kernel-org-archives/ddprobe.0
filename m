Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1697C2F546D
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771617894; cv=none; b=pEw/wkcvLC9unNj2F1inpDPSR28lLuz0/v86ZxRN33rFmMsAvNGEFZIeC6bSyyCy/Q99sO4GFdp/YQaPkDi8WKuQ/QsNFaASgvdjwwnt3e0r9fR7XZ/0eNLwytb1sV8dgfPOUQi/mtVC+jqoOk5V3eJ7ktE8sD0HImntql/dWJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771617894; c=relaxed/simple;
	bh=Tql4D+Iqi9Wf/oVVQSNs/kLBGCZm5NxdcuNNYuaaCZg=;
	h=To:Subject:From:Message-Id:Date; b=jAf01C8WA87OK8jFE41kY0pfH+4ei2XxWvRuv6we14g0W9A1m3lyqpeEzHgMfvTTOICUbE2ta/iw6gYCVZTNtZW28454ELthuVMpXAY5DG5ADy6BKMqc7RKgQ0zkYEnBp5IC5/dj/rPrFnILWwfzjIWLJQ0qlzJOS5ryeR1lst8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5loOd/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5loOd/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E35C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771617893;
	bh=Tql4D+Iqi9Wf/oVVQSNs/kLBGCZm5NxdcuNNYuaaCZg=;
	h=To:Subject:From:Date:From;
	b=J5loOd/GuWHSlqQkXtY1p8w6jls8SFrpHeF+G1JjwAbj5uuClhJIcCSyQy+r9fxFR
	 R9S9NEPqqXG08dbNoh6b9SOBERMGi2UDVfA2x6fttWLlpVaXiEjNj6eWkfvvOSGsT2
	 GO9ZvixcYnLbxFs8i/DiSFJChiwLtQbLGEgg+Io5+xXuYUGfKlY/zD5jvUrHBbeLtv
	 GSlp5kesFO1ERd0ILFjsAZ6H/r45TJtPb2qj8p5VZ6zbB1FaqyDrJJMydiP2yGVVfr
	 hVfyjOPNJLUS3hCHn8zW2Mi4VErSbu8vqgsAA6tPlmMGQr74PECtwm3byRaFNqleVT
	 IVapCL+r1BojA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7E6C5AD69
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161789361.1406.5272254802450646176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f3028d98ece49dcba1c8a1e5afa8b278d6a079ec62267829a3f4f7f7ef45b8e
Date: Fri, 20 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771617893
