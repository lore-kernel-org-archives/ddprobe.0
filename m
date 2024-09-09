Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D450189F2F
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725909954; cv=none; b=sznBZbgmXfj9vJi1NZOutvf8uFDZ37GylcbnHjtjuRdWELldi5j+km6fEl+MwN3Hkf3k9DWm3XPkFn5FozgSPNgFBMPDZx3O9Ctc7WzZd8Rks9wSWfJoYjxxb0mgAU2wnfk97umWPl4jgxVf7XHDpRFP/17tm5A9HE0C62kxL3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725909954; c=relaxed/simple;
	bh=6MWXwdcXDXfoW+lvYJK410WVFbGjBKYA1HL8u/F0HpQ=;
	h=To:Subject:From:Message-Id:Date; b=mN4biINz7Ei0+5/gEe0eFvKuGyl11hXjGSYeW7px+RxoHZB/p/QOZ06EtIHaRz9SHTswT4Hs5aBWksDNHNdBINVPMCM0Ih5Tt+3eSJ+STv9aP+vdS91YTTxMooI7lKVvcvML9FeI8JG2AwmLc2CfW+9DseT/V1uz34t//R+s7+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+VG1nKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+VG1nKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10F1C4CECB
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725909953;
	bh=6MWXwdcXDXfoW+lvYJK410WVFbGjBKYA1HL8u/F0HpQ=;
	h=To:Subject:From:Date:From;
	b=h+VG1nKZAU5ed1YegkURh3ftAgGZxYGA3MZI6C65l+xvQgwozbB+pDau4EVudejS/
	 gq2kU2Xia+RHOWQoI449EWm8zXKKadQFfuSrCP1cPlAV2196hOJLo5l4OIKtlpA0i4
	 cIszSUXHcP6LFk8qJehOj0SM061XPmEjgb3g5Ea7zJ0saf+dTzE5nhhCenJq4YRlGC
	 PPr2G7swVUi9GUBFIs6FwC5i/rRO6uwuApzesV+K5H20Hcx211Z7RXsHEmoEhMeAbG
	 zAjul5fhoPQu7QzVfpNhdt1+l+utcYgHSl/BM6a93I+FmiuPK0whMvGKG/aeBhEN96
	 Z93JX0c9Hfx7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C636ECE587
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172590995363.17485.9854319873820290787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e938270fb2c3ea609db6a5e414a632fb56069adbb8846f2d29dbbe5359e263b4
Date: Mon, 09 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725909953
