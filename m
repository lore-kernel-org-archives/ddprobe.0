Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7492D97B5
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765593174; cv=none; b=GG3qedQw8asKDfC4FpNq4QwNZrzGO9ZcZJRKhxdXR8ECigpDKaENgFYcGhZl+HKowfqJsQFAYX+JM/hVSqKq8DYlznMX1fn2NUkIJsi5p0NFwUCuEun+BushEeEbQeRMarWFwed1wjbGFxYXAQZQSoeEZOAl4xgebp7CugXfnrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765593174; c=relaxed/simple;
	bh=Xp/VWc6Xm0TjIclS8hbB5FctMhFrqL8z2qgRLNdbhRo=;
	h=To:Subject:From:Message-Id:Date; b=nP1IAmvZud6u32rXnWlRCj54WZUqJflp48OscyS5GO398mgIe44v/rgeE1V1hGmPMG4eZg8Ixo54E9ZVAACivYj9dxyWnctnRnwfgoEzskCT8LjCdWBVL3cfDFN5GUx8G2RajL6zZVK6An4EForO1wkz39K3gcDnOOPk8kzbuv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhXVP59E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhXVP59E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C72C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765593173;
	bh=Xp/VWc6Xm0TjIclS8hbB5FctMhFrqL8z2qgRLNdbhRo=;
	h=To:Subject:From:Date:From;
	b=EhXVP59ESIc0QjY5cq2E8XYgPfIq6eqwj06HNDFsAy/rD0ZqNgbbc1Ri95RpIMOkT
	 9wfVVL060uwonFGodoS0+tXJsY+LKRxdHr6wTz2WoxuiOpwgU72YrciM0Cw7tnIAVG
	 nAP+lIt9eoVIaAgKX66ddias+a1d8WIqodlEe/nSmTr2TH8FcTc0JZt11VL25rWMZi
	 lKnsvL9vD0wnGLg6giwjXHCjjXLR9oD4vN7BAImsZ5rE2aas/iwcpZFemBcfuV6f8W
	 U3jk1hLma3U2Zfb+jCyAiCe4FPg2L+0A8Y/EXBSPbf7qtmimO9SR9GHKnoECdU2dll
	 nVa2Iwm7UGb3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E02D59F60
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559317358.16868.5995964514708019893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3e27d536030f232e468517505ae13a2f8a2bd8a4024c2dd881ef827766300d
Date: Sat, 13 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765593173
