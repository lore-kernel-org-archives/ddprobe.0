Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287BE3AF67B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776415054; cv=none; b=XwDr9I95nWS9upcL/gTcwbRdYkQOrdLbwQA0Rz3UMGWiz26boE8kgvtl25+l4eDqvjxFAE2Yjcy5usdpARJ1ltDOTTMhv438OHd0XTDxb+VLktcjzhFsxkcnHfIKdHZ+4/vPtTwndinBa62z7mf/5o16knlBpSw2SIjhUrozQR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776415054; c=relaxed/simple;
	bh=C1CI1NPAEVDnWRTNTc/pMr4LZ/kyhFRhkJ2VfmO2IbQ=;
	h=To:Subject:From:Message-Id:Date; b=P5wGgX7Y1zZ2Az/q5M3oxMg5ZCqAc1kLmTrb6PpKm25pzmRgWK3vJf8fltjQ3n+WJpw6veVLRzkloZQ+vc1ljtL2HA9k1x0G5rFsMJobnQs0GCbZVDYqBTXHXR3EHxGuB94BGjBMfx21qMtDvMVd6IlnBT1vYmIfpbMEuCYlab4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHX6pWYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHX6pWYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E34C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776415053;
	bh=C1CI1NPAEVDnWRTNTc/pMr4LZ/kyhFRhkJ2VfmO2IbQ=;
	h=To:Subject:From:Date:From;
	b=KHX6pWYXM54AvPvDZDsVeecStaFnbzGW0hjyKzpuZTaLDaIFhdgSZi+ejO+KzzSAd
	 4fPo6BACP0rB3wOU6JTjFNpjsmZDEzvRItmiLbiPg/yb3Z7xPapgzVraZJcI3rE57j
	 nybA5NFcV/5FS5i3sJyJo2G1gNO747PMyimrrnIECXz1SyaUYMnY/af480kIkz/XTy
	 3uXYfN5p/B0H/aDERslB56FmA7dblEXUnjfo7DViGkEe0P0N4VT+jOqIg07Ef+d4j7
	 0Udmunvxic6pdAqd1ZH09FkNIxBpp30zMHR5Uz9aphiAw9fo7J3m/FipnPF1nryFL+
	 5jnzEjSs4l66w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86A4F8DFE9
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641505368.30131.9180181480824267391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58ffba4e0bcf5ebc05333a3a87acfcd7665d7d5515e47798101eeac9331d183
Date: Fri, 17 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776415053
