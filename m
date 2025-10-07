Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B84321255B
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759860594; cv=none; b=XpfE29QNF+RDO66UULuFDpAxNhDOHPxUM8dD8JK/C9DSww6IXn1Id7v4J9ApsQU8h5TKuv36MWgF4bPhyVeg4IfFEXl1XycjE9ZMSrIHpVl3JN+gnywoVG0L6S5y39Rogu9m3fd4fNxvxKZ6ZBQl8m7wUlP/RSFTudOZBOLp+T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759860594; c=relaxed/simple;
	bh=LmuzZVHi/qAmIzqYa07qIybUu854wmUris8Spj4BGSI=;
	h=To:Subject:From:Message-Id:Date; b=NAI0OphkbaYYMBr6nJ7qmSIbVi71huWFroslN2ymaRRgIEbWz5PGlyhA5joeh/ijpppXXZj2C8tLTXY6GkrUPCZjPMDea0diCzo5nzawhtmhWFh0qBLpMjAt2diwknzygoNoN5bGzPvQ0P8I/7pnW2mp1oF/KWePo1biEaSYDZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQiHhPs6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQiHhPs6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF92C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759860593;
	bh=LmuzZVHi/qAmIzqYa07qIybUu854wmUris8Spj4BGSI=;
	h=To:Subject:From:Date:From;
	b=ZQiHhPs6UaU+xlhCc0MqknDC1luDrSnUr4ydmozAijaIZ4mJwDTYCoam3o0/03PQp
	 a2YMxMsbBDOznq4Kq2bOAJj8W2AQ67AYc+pvsFi1v6hrCAYfBiBeWzdYViGDh6Zhue
	 9vNKNHP784s4gaQ4a8luh4cQAC2xo6lCSATMS8UDLmmFp9eWEUbAyxwjby8SIcMmrD
	 rIfa9YVxnD5MboPOxHC2oGbo1esy9QtlaiZemDMXkrPKSijI3pfapqGmRgAsXJIAPh
	 Mf06sEcmz48zFuZb0sIq89o0dBfM0vDQIaIGpvRbvmK/cZ1y9grbvB6IevTkVX1A79
	 1KhbpzISQzZOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F240CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986059357.4253.7062839140786298443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e4fc9893ae3f21e29bf1fe64d06fafa041957fa698defa700134350bc5fdb9
Date: Tue, 07 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759860593
