Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC2E372B3A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772070294; cv=none; b=ksuWpKhh3YDhDSY0gz2n6Uv3cwE7FXhQ+G1fuedtGhearzhrLPUCbWokpnT6CE8HtPYrjIzGh/l+hW5zumJ56ztfLxK2zEMYG2KPSlzlnMmkcqOw921rWf/RCgV8ET6ZA04gBpYZHJidqro+byjTXHCO/uUMeO/mmPGGyczzp1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772070294; c=relaxed/simple;
	bh=SSRplyFBsHFULi500CfvKirt5RgsuVu1TH3+Mx+azp8=;
	h=To:Subject:From:Message-Id:Date; b=s1csDrgYsWwA3/AHoDWsyFhtfc/AEAolhwKUKLm8biSnj7McQd5jkXIYf+ybnF22aFKaQ6sCcWtUXZ1FRMZ9hQRgoq9D7amz8VlXEiIy9CfRD693ezNtpmCG2TKQx42MfyPMfzEu3nFn8mThgnpfUG+yS/tWgt8rUVROzowvPps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWaDtbPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWaDtbPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70F0C116D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772070293;
	bh=SSRplyFBsHFULi500CfvKirt5RgsuVu1TH3+Mx+azp8=;
	h=To:Subject:From:Date:From;
	b=DWaDtbPI5KoZZ2UfoV3oRpeLc98QEQrL2ifVE2WkLbV+s3RTECgscNUWNMEIp3K8A
	 hC7vqfDKxT5Q+oABiLVeBQ8eDRbrd5DuKQ7uB3LDOIEhRm8t37BGuueJS6JP3o0MPA
	 G4VT9glfPhnE5PSKVzdMibehJcIl1v4ZFV6YiIThsNih7EQmHZXuLp48FTiy8niaI/
	 X1wH6VT28+2qm16fI8ITXtRP2jGOzgS3QUbyNSDZIMklWq1DQEUWAlSBOUOmfuBgXK
	 m8Ey1wLmg131DACi7kH8ge2tDztrta9KwHyJZ6LZhNbfm8kkzkdhURKY7ZXWHnIDrD
	 qfF+3g+KsWK3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27F0FD4607
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207029365.10574.7890079527437441842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c5da835dab71ba1ad1cebfc563564fa2d6747e1fba3ea0f1ff2c9aeff0bf4b
Date: Thu, 26 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772070293
