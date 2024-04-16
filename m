Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5871738FA1
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 07:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713252563; cv=none; b=V7rqBn6dQ1BVI2qCT1tg+eKV6CV1X2jwZy8rtnFH2wj8KrgYDNW2rz3m59it0MavhmzunHDQ0i+DgH3zog+NeViHwPXUDVT4Ybes66zIP3uwjHx+5QeCl+/eKlrjieea26R2D1UX39cURo5jwgTs6SRxwyZc7lbyODsOXhbIeDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713252563; c=relaxed/simple;
	bh=ZJ0J+u7fqikxbvaAz8+lYAXubne9HBZJvTJ6QbxsdSU=;
	h=To:Subject:From:Message-Id:Date; b=Nj1n0NCYCN2krWnIcD1wA+sAXO3MFqUhDzRIFn2N/jky1bVakkJqZxKuI+OnC0fSKHrOh2zdEt2Eo4xxT746+BM7IzVgZ1QPCN78EjQFxHKl3a3xNVIoTL0kPM/bSaCERb316IRTrO1dV7QmTwXfruma4qAWW5fO8jA+y2KwpKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qITLP1tH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qITLP1tH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCABCC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 07:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713252562;
	bh=ZJ0J+u7fqikxbvaAz8+lYAXubne9HBZJvTJ6QbxsdSU=;
	h=To:Subject:From:Date:From;
	b=qITLP1tHFcTVb0pM73k8ZaK2OVehoYpcCGAChXUFBi/NMusmyv2gdcCF1K7WWTMdr
	 5dXkYmaB+2R1wPmKLXzMZofL/QE86sv3acT2Em5ojsSOSdURytchgmvbgkyC25Qifw
	 4o5pdZ0DoAyl5DWd3w3/loNfX73W2+6+7dGxgoCKDEdPIxmer1p4+UrIsMA3YCJxH3
	 CfdSJB9DsEfxUbByJ3wCXNrz6yvJQu+9oymVX2x9uoA82kJ0njHk0PbHi8G/TwgR32
	 j2fUBvdUOIgwXywtwtVZ8DB6j9i+oSeuaqnS+j5C07YPQldWBQkBOOw4PlWn7mvMHj
	 bgUfJc5ARc41w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7462C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 07:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171325256280.16573.9090700950112706093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3879fbe9b4206bc2928765b1926768ac3dfdf25b67b516057a137b68d83711f2
Date: Tue, 16 Apr 2024 07:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713252562
