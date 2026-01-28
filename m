Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22196374191
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769633034; cv=none; b=RpI5SJGP1rNLYVN5Z31pPW4j7MpERXzQMehhQfdGiaiQdz1YgFCIJCDsosLcaxoGRGROB4HITk2PKiwCCjB7iIGwj/Xm5kayaBzSBMFs/XmZEHuBTzriaDBxZiT9ncH1boQmLsPzZ59Tyf2PdgUCOKElKNdpB/LpTYGine1MKr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769633034; c=relaxed/simple;
	bh=IWDXDo52GlVhMbug0pWdQrfmk/iDPZRUFqG3YjycE+g=;
	h=To:Subject:From:Message-Id:Date; b=Kl6elQzPmo78Xvk290WqjUgGwM1SGL/UIYEkMJvVQZ3OshUnlieQJZGQ0xaauZf/0fr8Pn8fDlIiI2x2H1aE5bEZz4gzpyORq5Dgo22Sm+DCBpWlUYTB2FYpa6xle/Amkff8P30A1IPlYJgb8wslqxihX4SXYNd+aU9/0ifh6cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8wb839A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8wb839A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1975C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769633033;
	bh=IWDXDo52GlVhMbug0pWdQrfmk/iDPZRUFqG3YjycE+g=;
	h=To:Subject:From:Date:From;
	b=a8wb839AgxI8zZjWOSGMKzK+mHT6rKvGC5iWLt8qNeHSKeqYClx8anT+LSwtwtqPX
	 OZJrSJWYZuOsv6pRitZPPObdgMm0vs/805qif/B6zwtahMQmQ4Vv/utRnv21l3HXqf
	 K8P5e7n0VCBilGL+DZLjDKuc8/gpEoE0FqqJsL8mlPAcJcsDhfJN61VPC81/+Hzyzu
	 1mYHt1LWZXOzAm9eHWFHE7CKAGKph9tvmDxpNOLsQVkLEKI2kqSLRDpqhODxpbsvHi
	 Td4Ts/VyBCTkwajb9uDAcc+aA0wUckS73U+Ahy1p4WJy0tmzXyprS8HFHtF6blFLS6
	 HJpwSkpsrG1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD4D46BFB
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963303358.27214.15617713672279519593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0662b959dab9c3909c6e3d7f6fbf764afc276eb9c77dcc88227043a6d43a3c7c
Date: Wed, 28 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769633033
