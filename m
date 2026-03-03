Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358933BD623
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772535294; cv=none; b=UpT5E4i1lzt7OU4uz1Sm78EeLT+sw6SRkROd8DpMxm3E9VqzbRy4/2TRbc2pyawKVyc4ZSHYaKmhvx3omP9+wNBN3e2kaQrTbZWBBKZpTpZ5dNR/SlvHPuoMD5cDu9lvCI29BMMwrt8r81KbUdkR7WTJCiGSZUm4I0qnc1P8zdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772535294; c=relaxed/simple;
	bh=lwq6SF/+vPirp6L/hWTfn0ldkITt39X49XhX2+ZruKg=;
	h=To:Subject:From:Message-Id:Date; b=aDZlj25IdReE7ycLEZRbZAwLSXFsNCdbgRI3w6wLbwWBPIm25oPzj0slZgdhTUcUxOV2ugoEOFRVMlrkSF3NL2CNRbeQ7yYIAV5y7OAKN2QpwkDuC1qya7ISognU9OOELnrghVFwhkNit3UPkiyWYdv/Eg3TZPmK2G5v7XhA6mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPtVr8Wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPtVr8Wz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0426C2BC87
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772535293;
	bh=lwq6SF/+vPirp6L/hWTfn0ldkITt39X49XhX2+ZruKg=;
	h=To:Subject:From:Date:From;
	b=CPtVr8WzY3ff5mugE+LZoUlj3XRoHXkNZqaddKtUNGv0e+Il9P6p0Uc52OgiP4djc
	 jIUc8TVAQ1QA5ikmYkE5NhUEakPWyx4VDQBq+9xmN7ULm/YQn4zJw0k3Xn7j9SFaXL
	 eVGxm8w81xn1JOvydr//hjOVJpfZGGI8Me2rFwV1Hgy9czF7rKp/nJm4c1w7dLDqCA
	 c0epOLsCUhWl9OukwPdb/+Kne404jYUvQntteeVt+wuAT5ZTF2/5Fe5p8myEyhIDUg
	 hbrhn/hws43u4p+D5Bgxq+7rV38CuAtKpRTrj83zsstoIBRGlCZA/z9JW/0R9QG7Jb
	 Kpfnqln/F7aJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E71EC1429
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253529368.5503.15721750351038466037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e7f20b29aed424a731f805e869ad3fb96705ec1de68285e61e6f2b47796cbff
Date: Tue, 03 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772535293
