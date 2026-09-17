Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2C34A7CA3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789636834; cv=none; b=AvTPNwoCcA4Jy6ACTf5o8I9AFRy1LEqIFOV6j2QLElgyXhF6V1o/Krqe3VTwGhyQC5qsC0K62g093BHpP1UVUPVJKLKTeRO1hyZFOxBLGhRcXkv3bO6NWT89bhj6K8x9FIkvXGmZaVAVynvwAs1jaj9sFuDT1T/MnpuNUz38YfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789636834; c=relaxed/simple;
	bh=lq1aiOXkfPyMLmd1RHAyTpjpLlv5/4TL9uk0a9nyPQY=;
	h=To:Subject:From:Message-Id:Date; b=fHElQeBdzQanxJtg08HdyVFnUwx5tdvozru0U8pe2gea1wiPu7/Z1nhSbPVp+4R4Ans8b0c4AogTjLecwXNa12IW7Np4Z7mLCymZvg2uhoWuq9UL7dAag9mmHih9H+R7AJmGtcPXUM7ywjDJqT5LlH08KQmJXGnr9WiPDc5n0A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BV3ASapE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BV3ASapE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D602DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789636833;
	bh=lq1aiOXkfPyMLmd1RHAyTpjpLlv5/4TL9uk0a9nyPQY=;
	h=To:Subject:From:Date:From;
	b=BV3ASapEunMvk0dbyUatwclJc/HWonOwDmM+fIWOf9X2BWmoleNOlTT6ThOCKBAGa
	 HJsRX6BcwvccGr49eB7qnI08zcaIuLzOcLvsxR8TtVVQxV3+zcJRL8rqqCBaMXgdcB
	 QhZqF/eqtERH6oymxDVPx7lu3aZqW3/JwHHSMIbMiu4HJ07zCFCwWkxwHYJSCOekul
	 AOcTCJreF0PhoEV2+bEmW+f7jmBKxA6aSpWX036rlBhIzjldtNI4DXuViXguiQ9AX7
	 PoyCt+sCwRr8qRHQoxbYMaO5KBD/3DgL8DN1zGuS/EZhG5T5rFvkZyqWaghrapYn+k
	 gec8fyjHLmLkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED5BC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963683370.2842.4684740153446132993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694dc65c11891f6806563977b597d9010f057a00c6f2d8cef1945e0a5a7e0f3a
Date: Thu, 17 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789636833
