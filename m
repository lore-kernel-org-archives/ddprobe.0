Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E999460
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748760594; cv=none; b=g7RIVfoskQrN4hju5lIYoL7ATOAjgw8IoLUvfVa5NO4LLFOksVKKbyQTgbxC6MOM+zp2k1IwrmBHW2L4IFnQbNWuSc+MJ1Cp0viIVCR1FWugx7LcXBDFgBDGYYfydaduqZ7DOBeOzVGFC3J7pBzVYg/7Fa+pHZRAVVV+8lKJOtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748760594; c=relaxed/simple;
	bh=d6YLhu32n7xf2PbvXM44XMzjLK8eLKsh0/ZKnjGL0uI=;
	h=To:Subject:From:Message-Id:Date; b=g1hnV1PeAcSd0FGkDrg/kuuNCHfILYrYYM1ZPe4P1v1TmkdatjKvwe4BaieOcY5dkuahaIk5n18ZGytnNPYBNr7Cy2AiWY5pxBzUvoHRr6GVtjB4RsKdU5jPnD+njOmimM5kI1kIdksiSSEDizQxxqs5RA7FTBXPdBRetRs9B10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/vdoW0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/vdoW0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB556C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748760593;
	bh=d6YLhu32n7xf2PbvXM44XMzjLK8eLKsh0/ZKnjGL0uI=;
	h=To:Subject:From:Date:From;
	b=J/vdoW0yD+zkTQWrwZ++SK/sGQolDxa8FltGYyaPoDjudCgUrpPJc8iMav0BPJsZB
	 qJhMbbA8KkNKFtHBWFEdd1H1j3u73ZnaTMtgCRrIZ0QfgXUIWRSnTVCP7QpguBZRjK
	 L5IezXAa9emME8LLBz06WZB3UJZtmLJoLgIWIYlVVVrUWU3dIQJARCBPlC3nOiLZ5f
	 +cQJMNXW7IGrqYY7VpgvwhQ90XF/03SrFCoQbDuT51IcCQAKZUnCxVFd/hfFU8krJp
	 Y+u/IolGv3t2uP5oAfzZY0OCSsGh/6bTKqPIsh7wCL8UBjQ7nWsgs1esk9BVM55TbO
	 Fbcp3pOf0qrRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96900C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876059358.22659.16097695454295352839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c27f02b42090cfd358363b06d7c4a538b5cd89fc78d8c8a85db56860cc5816
Date: Sun, 01 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748760593
