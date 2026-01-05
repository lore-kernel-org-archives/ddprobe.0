Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4E833374F
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767615234; cv=none; b=FGwYlvhjDr2fqEvl/LiakRAwY/wyfNuCUgEeIoEBTgtB07KJvA4iQ9W7UIpfY3AKQ4Bh2ix+80qbtZtvgCERz+AZ8k31wf2UKZtfKNZXGsod+iTV+gsOehf6OI8sUhg8Vk6eV1Ea/kEWbhjo6+HHrh1a73CKJwMKd2DMxEK22e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767615234; c=relaxed/simple;
	bh=4z7M2f6Ai/4QoryEPBmqKI+ndLQxC7abc3MQTjGvTes=;
	h=To:Subject:From:Message-Id:Date; b=BkOll6xHrkF7YLPW6Ks6sDzF6h806+K0kSrVzPh/EL3NTIoKOaFd1HUaQhybcOD74PFpSdLqKQliRze6blwcBQM7xYephqQ7jerz/vRKsCNKspp9dthAye47Hvy1FcQ/MhbkC6Nl/qZ886QSsjfJ/zC9pFHtMH8P464JD4BBm7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3Roikbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3Roikbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F41BC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767615233;
	bh=4z7M2f6Ai/4QoryEPBmqKI+ndLQxC7abc3MQTjGvTes=;
	h=To:Subject:From:Date:From;
	b=a3RoikbhdbQ/uz3tdAX+jSR+pwS9D5YdrrTIIl3N4UeAKieVv63os89JEkUNRR+36
	 plNCl+fZ2WcOxCK+fAr2BVmez/Ah2aBoSyXLO4GSXD4gcEpCgBMrW5mf+CkAIFnJsJ
	 aOpldVzYnlImH80AHjefMhJA8MbGnwbSXMxzIXfw3DWUHo1ooCa210x/STR8C4IBAD
	 hsXZMW1g2cNNdOHqhAN3CEtlRCWSK3j55g4rWMtmiDvI77t9AZi/6zMT8sJ1fldnG0
	 jjC7TIzF+LzUK+1VTIUkfUsKtZv3pJWiLQJnZnkKYYp/1Iy8Hu5y6GGmN097EVYvW1
	 +EL5oLSPDhcvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD3C79F87
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761523357.25238.6581326973337522690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f571c3a628073b39831675f625f26bed2d3127012d12f7d579996d8b7a0faa
Date: Mon, 05 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767615233
