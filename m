Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4FB25CC5E
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755535194; cv=none; b=lQVRlrujzZrQKEKpOxWe5T/y/3MvbYmu51o7RHMRFrvji7ClzfizOH9GyYyn027Y38E9UYnLgtMxak7KqTqAQC87+BQbXsmboGRJqT+drWIm9GPgPSs4AoDbIEhM1ck8N8yuCub8qfHUBjfvZuNwXD7+eUim+8MFxsKt9lwjxbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755535194; c=relaxed/simple;
	bh=YcjZp/HgjSw+PFkNxtjU2nFh1CXlLaJfOhQdhsJEVa8=;
	h=To:Subject:From:Message-Id:Date; b=Csm09M1UQlSNhgVtwmAzizeKYc790i/B0LBN1V7hFZOTuGr2exosMOCP2IIOjCEA8wB9leSJcpaNLJyi1aOPtdiamqcOWRtEEUSF2vMeKeU9fM4rnd18MxHFcQTktkJJpRIBg9lB3Q+kX44X1V/QnM3AufFYcW6P2IfaDJPNa2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8+EebMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8+EebMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C8EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755535193;
	bh=YcjZp/HgjSw+PFkNxtjU2nFh1CXlLaJfOhQdhsJEVa8=;
	h=To:Subject:From:Date:From;
	b=T8+EebMueK1CadcWWVEaM81VLUVp7Z+gEpfNE7w6gnXLpScYCml4Acej/VTz7c6xE
	 MA0tPIfdkIP3m1XXEAw2A2mRbHCrXHFINTnvN0uuHGRtIKWfFIUuLKydRsR+XmYZpj
	 eYeiPVREO6aFX2paE+1d31SLAZWR03S2afis37dIlJNdkuMtFD/0WGmLtRYIhRDUag
	 nbiAK1oEdbfceLzm+cOuKiMx18hFH2ETioj8PCGEhRGBFR2SpFJJ5ckKht/99kLz3O
	 DUAkhA4eDLj2xCg5XVJkJbvoif48pyFEK9Jz7qioHq0oFN7gCxCSNh2Tpg51R9kP9y
	 3F7gSXgiwzYmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93157CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553519359.19455.3504077555619812368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb6ede98208ec34c17f51178f99be6bde318499360f7d9fdd63936b1f6051ab
Date: Mon, 18 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755535193
