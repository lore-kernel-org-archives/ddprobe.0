Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A20E256C8B
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764865374; cv=none; b=kHZkX7ow3ap6dEiBVVaRi9aHfOR4XDy1K8zd9bWmVXErmtINzEBmqJidRHwSp9kMlJrCeBIoynftJ6XIODiCrUocMhj+EFauZlZAFggICsuHzN9cXW7LTpsh1YMYnv9cwGBavs3irDquzxIIjBTAA18G22tp1L3VPDwbUXCjLlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764865374; c=relaxed/simple;
	bh=a48K+vd3zVsFQidu1V0yqTckaRU7Dnw6H1orfhzlVg0=;
	h=To:Subject:From:Message-Id:Date; b=JEM35Z3OwJojT/h87pie44Pfbi59j15bVnfO/Bm5VenMwmAODUUnEKflF6MhdyEdDY45Gyc5KRbe2Eh67JkJL+h8dWVvnyiwNxO+6lZ6nr6pru6iOfmty5r4Nt7fHrVuJN6pDqkZRPqrfsTOLgV1ap8iOxH7kev343fruGLYu48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t62Xf2Rd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t62Xf2Rd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3839C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764865373;
	bh=a48K+vd3zVsFQidu1V0yqTckaRU7Dnw6H1orfhzlVg0=;
	h=To:Subject:From:Date:From;
	b=t62Xf2RdQz3RU7OOq5K+pHMYDCdhStWehQJ2ddUXsLgGHz+vmS0WaSF8xn9ONe/lI
	 4Sf/SkRJj9FSjtOTPUQx1lL5vkJ8k6J5+XKz+Ah7LbqkzbFnGfHVxXrp5XGOBIr7RO
	 wl1vnfSCme1EfAlZ8Q5RPP6hcPD27DIiBq9Y64O+H0v5ky7/7QtnsFUZBpB4dgffp0
	 L0oFzeSl7LuzCJTJmmY39GBIKlTiBAI+x7xRF/S/PjkA69uDWjGVUtabe4qqi0BdAo
	 01zxUnBe4RU04V6PzcQ/fu9ZNHkyAV6NCL1FEpD/IUwmsMnpdXt82vhXSNRduiEfGc
	 OUeRtfjpiC2ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6CD216A4
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486537359.26858.9026565106614036542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8b63135c35ba96d4f7454727fdda8ddb6332b401215e9958d639dfe676f75c
Date: Thu, 04 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764865373
