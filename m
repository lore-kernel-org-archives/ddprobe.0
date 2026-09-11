Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8F52EBDE9
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789099234; cv=none; b=lI7sl1RwJvdgHTIh6bl/3EWpB065Eyly0Ett8VxpPMhiFmBDVVfyuY7zFSTQ9PYSF+fNM0sLVNN4VO8aDB9Avjw5DTdKVCGSuAPdwW6Y9EcU1ApyIOT2Mb9izAczMCWP+nSV4ocxNidoSHqj3FaCH5asjcuFDRNDF/MESL/DzMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789099234; c=relaxed/simple;
	bh=kFQqa3l48VxQ0lj/pHy2zxLekDiz5l1M0Eoj+fMLc+M=;
	h=To:Subject:From:Message-Id:Date; b=PgPBlQaOwAwia15pH1qVIblltGYN2jnqN4Fb0sWt0FA9GeINLSLzqQbiOidiK7JuIUA2UYeZruQEGZIEfQqQS1G3mJZSCHZPEE9vz0cMJAU2fAoq+j3QpS4NGzcfUWnEvXoop1CNHuRbp4JzzKPDpAqphbcIPo7L1uOsGzmn9o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ootCSp5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ootCSp5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDC9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789099233;
	bh=kFQqa3l48VxQ0lj/pHy2zxLekDiz5l1M0Eoj+fMLc+M=;
	h=To:Subject:From:Date:From;
	b=ootCSp5CW+MeJLaBIuLCaN7Fiu2Zh6aHCFEyveWDdm8LlNS+NU66et1WoYdCQuWj1
	 43gMH8nHB+Ik9bSZvEjfZ/lGg6jQt4I4nr2MRw+/OonOPbgDim+uvCxIoBq2HheA7d
	 SqNw/TW19QgNtabls3OXx4f+UOSPvOISIQCw5jvev8b2wp1LVroEwtqDMLaIrQ/OSb
	 yQPLGj40v3/asefRSZz8edkcxOZ1ns4WQ0/3qRikAsj4K3RFIXRUadWW/i4UJF5V/l
	 LFBbXM3NvXIKpCrUG20qsJ3B2L50N5gYTx+xAbrYhUDAi1wSX76wKfeWwo/k2L0MLZ
	 SjLL7tw5FyOgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99E6C79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909923368.5623.959492865919425699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b8008ffb22efaf69427d0e007a255c31010f339a9db023e403154bf2ed25b2
Date: Fri, 11 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789099233
