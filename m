Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2827E26D4E2
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756844394; cv=none; b=HAxXgWKGLu+ACa8Bw7sl7s36QX9EvjVObJ8DdtbZWwly4Gn1+YXBcaqWxpOLwNnwHnLqD3/ooV3YuI6xlAiNccwWyhgHV//C7MYPJB5/nEuF7Fregjh4+b6OW5O/PlH6BdTCH9yyizFD/KCRi+psdCP19DVXFGZxM4hoo2TeUeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756844394; c=relaxed/simple;
	bh=CQiiFMpreAF+2GCNJIbb24HgG3CM3fHmfWJs/i+qUVs=;
	h=To:Subject:From:Message-Id:Date; b=OryZlP61bmwcqAYkk6dZuFH04NGIZF62u4n1r6sttkXWOThw7knys59mF40R7DC0tjB+1EnePEvLSSnTWSTIBu1U8e7FFQGXkT99Ui+PW2Ct33k5uFK98Huc7zBAmHRltdKVK91WlXxnKt7qieH4vm+r5NgMysE1pGkgbk0Hg+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNYDTQ+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNYDTQ+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3636C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756844393;
	bh=CQiiFMpreAF+2GCNJIbb24HgG3CM3fHmfWJs/i+qUVs=;
	h=To:Subject:From:Date:From;
	b=hNYDTQ+WcNTz0xl46Y+PF3PavUX82+OVvc2xdPOsQAC2dDFlZdfEceugzHfzQMCk3
	 5fZm5QivY8ULP5nTJCOBMr0PVND82QoT1FBQ0wvlTfehjvhL7LumEEWYc5AJpLuZnr
	 F22xN2EApUM6iEk9wuDbV4fuCZfOxSbhtkzqaoO+7Ssa8a72zUka8p4C4x3KVm4L6A
	 Z5DaFlqq3OTJ2FH+D8dyWiGuYst/DKdIgWrnnR5Kulfvz/ZfaiP2I3pTZ9YXJ4aNPW
	 LY6+EKn8njhsMRMPuRvBX1Lcxrp8kRzv3jDsni8WKGh2p+dCpLYy0640VAdTddbng9
	 2+n0auOD1+lXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A1CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684439358.13040.960748320652107623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49fd8ba5641a8b33d88736a9b80728ff552c3181306b6971acd782abc88d67a6
Date: Tue, 02 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756844393
