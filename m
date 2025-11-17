Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201A533993
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763355714; cv=none; b=LviBZAZ21OmKYo5b0oC0pa5O/Y0ZblwoI43pft2Jlpnbm/Ww0oqthKVza+bJqdl6kGER2doyh8x8QoeoYa53g8U48u1R2Q66/5eZHMX9OECAkX6kkmI0/n+pw/tz0R8o+BIDRAPZ8H5lMs1lQqCk8ZRIooA5tMxL2w+gpAGb/ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763355714; c=relaxed/simple;
	bh=eyXvsYQJMF1KP7L5cJ74uFaiOiGWg1+SgjqTozS4wdk=;
	h=To:Subject:From:Message-Id:Date; b=dUVh4Z7WpvANkLp0wNdnPn4Mrq/jFIRagtLPAOde3TCUMk28uBlbZhODzSao+lTW3moFAPYGAvDSNLISXNYD1mX5SeEcRk+LhHhbjqqUYICw3AkZxTr2pQYTfpnWtlkOkuDsI4iYurHX0X2CPyl0juLILbNt5298kVRwzfM8+1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1q7Xpkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1q7Xpkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B2CC19424
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763355713;
	bh=eyXvsYQJMF1KP7L5cJ74uFaiOiGWg1+SgjqTozS4wdk=;
	h=To:Subject:From:Date:From;
	b=F1q7XpkbrZk3u8pei8HP2wg/U67cHUH5ImIDU9AehHPMSJfmkwkjzRRsNt0SMSy1O
	 ry8n9JrEoX6t484D3Ye4x7VMIZZVMYQfXBprRMd3Y/8nxl5M51Mwehm0r4lFC4rqsO
	 vPi8th9exBP+JSEk4HxQDCWU9jb3qaYA9kyR5K3Nn7ipqAK9+BDAG3NBl+xTBSyXu1
	 ahpZQxTwfxJoOSwH3ST5B3X+iqUEe55a765r7hrrrXRCQRpInbtxDcCXI5tFn/H7QA
	 MMQsICId8Rpk2ZsOOgL3FXPyHBAqxm9cpW73MfbLS18R9j3+P03/aT013zkpGfaFXk
	 GOqEQDdM3KhUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C91CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335571359.6964.18262960910955031692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e3e0460e64819ad4f4c43410a23ad01bb69f45a59f571f75ec4a1fb6944332
Date: Mon, 17 Nov 2025 05:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763355713
