Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0ED336A02E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786295434; cv=none; b=cr/1zMxo+oR+D/iLXcfN4U1xrBf5GZtL+gAHyu5fz94yv7c/GZI0YdIuYDhwqF3XPWRpbpdIOa4sJ3E1YgAUWuyO3Rj/YVB0UIVBTM4r9tsp3bKbnP/dZZ7IIjZP+7uRepkI2/BSA2o8ylKEwAodIWCv9ZqgvZbCYo+QP0VIpoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786295434; c=relaxed/simple;
	bh=s7RpDapVQ5L0gTVtQeZwjPNIbJJuxF7hucc6i10ZOCk=;
	h=To:Subject:From:Message-Id:Date; b=IJsMxB2ikwhpVFKUaKmlM5j1NZgYTauqvVDIr9ZqugAQBG55YznK035ECOblTc9P6ntA1j5pC7FAO8PG0kLsEt6p6k7iXcWxzdP+rIBDa5N6fx7uSXYXz6oriB7qRVCuloQo4gir2fqqyaJNFRlgO/Q5A5E97vDGjNjbSq43emM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6VaKnwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6VaKnwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29C8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786295433;
	bh=s7RpDapVQ5L0gTVtQeZwjPNIbJJuxF7hucc6i10ZOCk=;
	h=To:Subject:From:Date:From;
	b=J6VaKnwxtPEmNtAl4A8YyvVCuRF/OZKzp0wjZy+FjtND3gxe5KuB+h9DUEO138mav
	 edZvSHFFpLpyDlDYFBOG1s9vXCxUYa4NTLfHnebxf8iwZjm5h7bcfbNtybAvUWg31W
	 qdMwMzft2Hjl+LGtHPPEzMsUc9DrR28rMni4U+5nPpva3T20fPBKZljTNKgejjR3gs
	 VK4kzlUlxcll8IdJyfH2K9Yr7iBcE+cv2iaCGiY8gt7GNJKDFLDfK9gfLNx9CFWSh4
	 X+BDp69aNW7vsGE30jX2RU15mmImYj8tLDljmNernIryjshJdg1COcDDzEKbAXfASR
	 CqWyRWJoZP9kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB7EC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629543368.11327.3322654128445083554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea4eef9c3fac496ae1916dff3d95e70f4b89e3a9171ea5f033bf73b7de92d6e
Date: Sun, 09 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786295433
