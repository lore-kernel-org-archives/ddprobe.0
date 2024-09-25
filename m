Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A30B5C603
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727283354; cv=none; b=U+ngsTAgYxJ4tUEy1FVwGgODrH8Q6xd0+z3wunBk0SWHfoHruPElGsh1/IBFTI/MNvPiWpFs8HwTqo+7NiI9MbS5Z/gRmMZ2dNQzEaqNTQejaJdwZk+ce1jN9E3zHPfd7X7BEdfkZ/U9SmVCrKeWD2VjyxM8604X8oVOvcFjPZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727283354; c=relaxed/simple;
	bh=rXZVAG+54w8lOamLPxwgFKljTDxeC3Z1tAhtcM3IbPY=;
	h=To:Subject:From:Message-Id:Date; b=VAko4df2K4wk+OH5BCN4GS0fPryRIOW93Q/SnkV/EvlmY2ag+6mh+PVj7i0SYoQ5uM8zE/TYgD18B9MMAxWcHqNzZQQ1E2WZn0YKO4l08o0yAsmrfojOxxFdQ6CcWoj4+6wtu2N1rfLmPXFvM/mY94lSWcS0o3HhTbzAovNgS6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7bdINZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7bdINZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3567C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727283353;
	bh=rXZVAG+54w8lOamLPxwgFKljTDxeC3Z1tAhtcM3IbPY=;
	h=To:Subject:From:Date:From;
	b=H7bdINZqWU0ovhtNSAdV0lB1upVLO4ZS0tASFqqsB+0SZWN705AysGP3oMnVKwr5o
	 jgFE5rLFX8DtJRSW+I0UvtCwUBoED0ZZWxtSEVEBLz0LiqzIyaoQ0qiT2Evhnb4lHk
	 wkH52vzsXVXSsdG8VxMGPUKESPJ85C/r7BqJYEaUnvmWVRuj7NjVtqdTc+nfrT1qBw
	 nHGA4/VLxSt1W+3EeYQp+QPiYnhL7n6u7spy/fO/mS03PLXpr/21bAT+kTU9YFDBm7
	 lZnaHqsgcaztaoBO/fCx9k09e+2gPdSfeKHDi2cJoY4/aCzyuDYEWUogUM2huwGt11
	 kGlsWQSFVyFVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91112CCF9E7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172728335358.7717.10376014344507010074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862f9458b367ad42308ca82e0215c30b1df4e37da748467fa9092186bbef3b79
Date: Wed, 25 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727283353
