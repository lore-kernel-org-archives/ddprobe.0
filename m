Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3486F190068
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744697394; cv=none; b=BS6v0N6IETuPDVyy7jtz8Eb0q+MIYEfs60jkzNXw5CJArxzx5kVDxh9oCgBOfJ58c8v+sAvO7WqrKRPwtFIU9jopGhcCVzIlVaJZns99VYTHvTGxBRpPGW37raHr83vffidL+s7XvXy//VFqPFhHzoE9DY3tLT0d4bvGzT8vsqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744697394; c=relaxed/simple;
	bh=oGnnQVtbbGI3PNFx0SfLGCnRVjYSvA34oyhYIwYsewQ=;
	h=To:Subject:From:Message-Id:Date; b=lyXtn7/XF+LQIMqjPnTMXNCqxbrOdnXCeHdfTLqKv9+KL0Boyj0NkyMr1rHnwug35QDQnMrIDRlObfj8TJrp3etgKYx9tlFMEpunwJ76HTEH9PJwjrPl2EPBh7KUrjaULzwQEK7mvyGrqgfBHYal0JpfsV9x3mYSZMkAptzEBC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxiNF7Mb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxiNF7Mb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C79C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744697393;
	bh=oGnnQVtbbGI3PNFx0SfLGCnRVjYSvA34oyhYIwYsewQ=;
	h=To:Subject:From:Date:From;
	b=JxiNF7MbPY6KijFr576CqWI2PP5MwM2Pdz/OVueRaRM8jRGAJhI44qlOAnfuEE6Ba
	 nFcXz47XDs2QGaCQJCsd8rBXvKo52kNwO4Srty237IyLvO4QnFicVIm3kqrraqpdJ4
	 ZUBy7UTYC0vtx3lN3rd0EeYcogPOyg4V7Nb521JiKaqzQrK4qC8Hjbyh03UfmLiJkc
	 LKXzBCmJ7vZGg2IFQDnGbuLfhoegEB1dELwVPIdvfsMMv06qcrIhmpmyxvJuQ13VWl
	 3D8NLqxZxJ+z1gFUYqKYVRfn1oWZF9Ch7arg6Oi4gyt/+KxJ1THJVOYivq4XNRTi4x
	 FlNnQnhLKw1/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA33C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469739358.9841.5370785421960531106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b196b83d571380a90553a1fefd86819011fec8794d49c7088ff7d5a52545cc6
Date: Tue, 15 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744697393
