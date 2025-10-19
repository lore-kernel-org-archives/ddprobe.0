Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F086F54654
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760861394; cv=none; b=VvGcevEQjIjuLrBaCfntgQosLYysaF1e7efur7pv0UhaopJYphwM1bAbLObnDq1w9gW+FOOwbFuQOir1kxzVuAb/3Uj4rwJt4LcdwIj8/qdW+OK9/S1vqG78/dhfNSED+Qf2Ic0qEdi/STtBfXodLirjUBG2qaICRUOkh/hA3Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760861394; c=relaxed/simple;
	bh=BJWfoLFD8a7n3LDDrNI0Lfwcw8RXtgpy25yKjEI9yBM=;
	h=To:Subject:From:Message-Id:Date; b=KR2q/T9rIZAl2g1AEwAfvT7bmOLZUb5x3zX9phwhiWlcCSJsZXKbghpvVUZNXPRb2YAckbGzosQ/O8/iPCG/VcRamlQAt3pWmsp1+Vl7kp7vjy49BhJf9dC22VM89Eqnotbg/FYzS9OJE//geMRI1fl8sk+aVHy5rVCVwFV52bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNYVeZ4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNYVeZ4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6ACC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760861393;
	bh=BJWfoLFD8a7n3LDDrNI0Lfwcw8RXtgpy25yKjEI9yBM=;
	h=To:Subject:From:Date:From;
	b=dNYVeZ4QC2Zm99g719ym0nTi2bMr0xr50fwUMWXO7RkvWZ2NzY4Es/JGF+8Kjusec
	 r9CcgEXnqJGXD2C13mFw9XBn7sxYfSoLjqes5Nks04cJhkZDtLCBuGjHsF/VqNs5Tc
	 AHXOZc0ncI+urk9cjkZzClkobTilYNLW1kT/uFi8MNtZDYD0p2/cXGPUe/nDlpbcx4
	 3MCSmO74IUh6oTl+JBOuyyk3cSRM98E6fz/4HPGaXhu95TpegSASy/dB/tosUb48qQ
	 GzobUy5F+fz0P9OUIPmyv5ID5yAqXkKIZcLAPcUSjgg26MNDRP74JqFcRWCON5mTZU
	 9cG7tE+yoHejg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97640CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086139359.20616.3504193496881752130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796c7d597588dd50b7d8887887e7bf4369bf03b5064f2bc3343b517fc2dfe6a9
Date: Sun, 19 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760861393
