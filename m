Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC4E32A3C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776247054; cv=none; b=ucB3KdcQvtTXOw6xph1tIQLDDqEgjZ1dauEnzdaMv6yfqJgxePlTqN7ZDQjES0nqGlGos7QYLZ1+vAfpqKgJTLlKGjI36hhwVH/uU9gt1fOEqfkBo6x8qT8EFmWuiWai84Yfi7jbciCMvbl0ap5NUYm8v+d/X7HRGg6mNB1JWnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776247054; c=relaxed/simple;
	bh=sHqvJcauJIJRLrELSFDrFEqc8tlLTzCn3VwqSCoiYRw=;
	h=To:Subject:From:Message-Id:Date; b=czSLecUzWwraJqCQHzboI5p/1ZKvV2mE31gHa3eycFCV8GG6jsbNc/rkEuRi8RQrEctXDlVMQdTP+m/XPvZhapOdo/6djXBJKh0cZPfnooK8KVjPwQCyxWzP0ZKP8P6IJaHHUptD1LxtZPjzjF5B/TjgO32uS8s9e5Z17vEOmMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JV2sE+ht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JV2sE+ht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DFCC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776247053;
	bh=sHqvJcauJIJRLrELSFDrFEqc8tlLTzCn3VwqSCoiYRw=;
	h=To:Subject:From:Date:From;
	b=JV2sE+ht/xdBrepfMauqrkk4+b02vYP5h6K2rvU5wudMdsqZ3//1SPq3NrXMIvH9p
	 vL7wEIR3P4vI4jlRin9ohLrivkuHs967oruyidE/l0UkUxgoIF55hEIVfGdqNroXZY
	 oktsoL8Vfd3Tb1Sy09wip9uuvVsY2wtKBiC1zegdqkg4Tgs7HPgumLJ6zDyZCPXxvn
	 jDHYMKhsJF1blKQUOOBj65ZPZMB91AcTZpV+taaK51LZR0F8qMHaH2hVTMK+S6HG0b
	 U+YLbXJjDyne8V5z2pDvFLp9GbakmmEH2DXlgJPHr5HTqpdeE08UFc7C4a0vqE9vSy
	 bn+iITvq8zKSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F4CF41989
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624705368.20088.8985693843141548447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550067fdfb73872d3de237df6a2a24b4007e7c241bdd25706e8766ccf011a02d
Date: Wed, 15 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776247053
