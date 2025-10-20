Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A51279DB6
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760982594; cv=none; b=q5m7Mo9hcbAN8FhdVCk2G2H5eb5kzG+30XCuUWpGssn7aljj9xh0PhO79N+aRsfMxI66OgRUt7rwnmnFJAw8olrhBh7XVfhWDjD72Xdp4mSE5ZXtlhkgMSXY+9pfZbN2HvhRpTfFLeBhk+xuRalFxWOo5GyXQpkGcnvwva92vgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760982594; c=relaxed/simple;
	bh=8QSQ1KgXYrS673huHR2ZtJQhfT2/5fv/RtrsSESV8Rs=;
	h=To:Subject:From:Message-Id:Date; b=p510jN9eifKgmh7UA9/UK+DMfFruejajZq4qyj2xPatkDVJWhio2KlhWaFSiD/PGCaNlNBafaD1kCGkJ2LNVjNHKI+DF+KZlBUT4p+RhOb3K8GpEqcdOuo79l8pBNXyG2AEpebFE3DNoRkgjbErOtS6k8jij8Js3rgdiSBJ8yUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6126YpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6126YpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F50C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760982593;
	bh=8QSQ1KgXYrS673huHR2ZtJQhfT2/5fv/RtrsSESV8Rs=;
	h=To:Subject:From:Date:From;
	b=n6126YpTK9GQpJqrE6OliaP17s++cxVze1F7wVggbHDsmxqdbp0thAXqRiYa+6Ift
	 K6CPq761t7MVqvCcdK3mCw/Y1tXP845nBAp0Oxiwj/VpvHan+5mFrPbMnP91sF1k3O
	 ++KRTTd12/dL4hiz8gqROPJWQAoOSSrY64PZXMpyAhD9sEHarklUEn2eD/uNmMzIry
	 NTEH7JLmaRhI1lD3i1qDoc0tiRxBLKTeIB6jDTt8pVNqfkDWeuiDvqIgYMScG5hTfb
	 j8vqA3N+gl3hFciFiHeEvRXqJTvzsNWQHf7+ers/ZXR9SXvSduf6v0Bhb6E0PFgH+6
	 q3LsztJLSG2sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97674CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098259361.22306.8450353663817743810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d30a16cfa671961a863084f339afc6c920305f5a634753b0a872a3ffa7b32d6
Date: Mon, 20 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760982593
