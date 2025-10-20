Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241353176E7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760984994; cv=none; b=LRrsC9UFRQy0iwiSupzD7I65rL7o0/ZYEVGhKYdsB7zRBFhzyfXQYkB7DFA0ZwexmkWXsAW7CwuBWQTiKNPsBtmlw3sSJhhKFWclhWD/vUBAod3igR7D0LJ0c1mmv+2XQsPVZAiCVDtCv7DvCYBQVITJu4bCb0ri4bmx+zeSufM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760984994; c=relaxed/simple;
	bh=E1ViCMBwUgvR2TYZzcKYVV8IjkNYDZm9mOqz3S7n8QE=;
	h=To:Subject:From:Message-Id:Date; b=XKRQPX2XI96isw8HTJ5NM9F9qQeAURq7MKDMIZ+UOXPpBGaa9GbbSejRnSGovqkcWGHtq+3fafqnjAWtBgq66yRPqWfE92b3r+wnZZvRf5wttQY9PEdi1t3xjhEeiOs27hYgmaY0YuU4VsE2HN9r3L/PfgeKYyL6RJ0hb0+Ppk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3qN6A/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3qN6A/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA098C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760984993;
	bh=E1ViCMBwUgvR2TYZzcKYVV8IjkNYDZm9mOqz3S7n8QE=;
	h=To:Subject:From:Date:From;
	b=q3qN6A/kFQZkReexKyogmXHzl9L1qtQGSra6kp9lywif0i3d/kgWAy9MaNHtho0Ft
	 ak52fS/W27muK7atlZ4fgt1jj1wSpL58hAidfb0b+tyjLmpFvE9pnw2lSHsxtBgNzj
	 OgrigdgybqYRWAd9e2eCsrRmDAeahUYSOPbXb0FTLoE+LnMV2IwHL2ihCSFIQYjaXC
	 qjq+KQ81hzZ5H1a8N4ECJYEsqQ56Ebm5VwvOIyDnGaFBwhsGq2T9DEfbJzIyFA2sFM
	 wDWzNwvWG05Hv8doPTEBfDme5gq3FH4TngIKvDM/znZc/ahgS1eREtP1QrA6a1dTmV
	 ULj4zkqpeTGoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8C1CCD1A7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098499362.940.1729377636206159726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa00b7b19582a57fc6127e630bdfc196cc4c1a1b56d4a4cb0f471523ae0c3ff9
Date: Mon, 20 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760984993
