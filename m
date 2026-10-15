Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323DF4FDE75
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792072234; cv=none; b=X0zKMVwUMv4iPx7Wl4mIfzsMNLrVg0etC8oNzQ3yEEjP2vruly/JqAd9pqG19ooUqamTFGn2yiE8GAuvWMO/uYpMFoKqd+V9uxfWH53K/nO6qpCS8iDrzCGdwGNj2dlGaxJNWFsBIr/6SDQvjEDHKkw9naa34ty24LN2Motq0Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792072234; c=relaxed/simple;
	bh=uPOdmyA3A7lYmSPXsULubGaiL1BLIEshUTqB4Vr3y+k=;
	h=To:Subject:From:Message-Id:Date; b=YeWmaCxmEiq2g7I6zqbN/USYAX7yFwgax2rNUDejA/HiPU/wl3Z6phB90Cj/PLmqS6C4qXIzOQ1lF/l3I5NUiyZWiEnle03QLMI1qMd/rXQVNIqSn++120UbF9mRgwf70gA33cBuFfDzq8XL/0UDob/HDQ/lQh0Rpsktv0Q5nJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMrwGdus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMrwGdus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4AEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792072233;
	bh=uPOdmyA3A7lYmSPXsULubGaiL1BLIEshUTqB4Vr3y+k=;
	h=To:Subject:From:Date:From;
	b=YMrwGdus/uujU8bGELLFzgFw0VcQsEZ9X4IxdDjATDD3lNaz2Y8yrzsKZPl5FvStl
	 zEM4Wq2S7EG+OaI1spvoFCUUmouZQvZHXLB/9JRM/Ffr6rRMG79r7yVGVF1e39uqCb
	 DAa1XImZAJyM6eczKJdcP3P1VugJJcaeRuS3HMqQ2BKtN3igOAB3AT83CXvXhF02eb
	 Q6EzTUwTvcbFqXuBLgZ/uVJq28zTMkQ0cZfE/cJa2I7hp+ytd6V2EsEMz+BV+Q82Vm
	 SMm4WlMdnIqiMZGxWcoqknfFx+ecREhlpdibDQJQo5NRQ6W2v8m5kDUSUITizbwRJs
	 MUz3NFEi6ZNWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9E4CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207223369.31768.11463553877614772901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47181d174e1ea2f5a827f310069ca3a9e056ec357f6d2b972cbb5592e4397e5e
Date: Thu, 15 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792072233
