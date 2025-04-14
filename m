Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486CD15442C
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744642194; cv=none; b=NAqtctNxB2XGdK7Xz9hNDty5DBmFP16+PEChcZGCpt6+KSgrrFYhWLiymoG2plbEEbu+ZdWIqHznzajm89V/MeOz3trdJWRc/nzukZPsxYcw8M9EmmM78nal2Cc12Qx+BOhTS7Oxccj8JOO+PUjVTYhK67/tOBYrFZGKbrNYVHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744642194; c=relaxed/simple;
	bh=Fx9xq8MMTI/5A1b6twsEfr6fL/Jn0y2JpGz8isNIFn4=;
	h=To:Subject:From:Message-Id:Date; b=QTXamRXHcybqt9Fdy3mcPgi0a5I7AV45VlCG9hbaoyPPB1KKnRm/zkBHdrImtI+C4sY2Qpxs/ynNQoZG14Bd98XPkd1adZJdvgrFi1Oj+3gD/xjOP7bPROsruax+opkqEPyNUuXEz/NiFcZf/KrXpaBPl9pRldNrbgmpTQyyK94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okOvmUG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okOvmUG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5634C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744642193;
	bh=Fx9xq8MMTI/5A1b6twsEfr6fL/Jn0y2JpGz8isNIFn4=;
	h=To:Subject:From:Date:From;
	b=okOvmUG711TOFfFjUqoVHZT2LA+WIa3lKdJ3uCbQx2W3swvO4GC1APpAEzH5SnSBn
	 VMsm3yihpbjiCK+7FdPVfeNKZgBItIUv03Cxuy9RtY76w0Jex5TwCIU+w/3XzzUPO9
	 nSDUa6sKHVuwm0SEkI5CHvpxYcdF2dr0oV52dVLQvMRahOt+HR9Lke0MaTl5Rj3rcI
	 qZCWOeYhuKJDf7hqJIhhLkvGdB3BpD1x7VfHMd4SjyjyvlTI1K6oyEtuggS1p61HOZ
	 VIfR261bUKEacIQwmeNiQt04V4KnV3zSkFn2cPs7/H+rx9j6o8KO10C3jx/PcdivLo
	 VNVQbK5laH4ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5D6C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464219362.13600.2861404959984346849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff1d1d882996d8b0bc1bce4be4ea19cdfe2b58faa5481d1b7189ce4c094cbce
Date: Mon, 14 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744642193
