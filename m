Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71F917A2EA
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774067093; cv=none; b=VsXdmVtXJZZ7rM6ao4MJRdAGZuvNl3GdbgQoMdUSSC0URT0oyDPHFNQy6FgO66pqFeE3Lt7ovZccj4eduYBzK1tqQ3lBU+sfNw0TdNF0h6UKbKEyUdC/LTXc9OKygebxPp1pgudlwZkLWMIvpAlSnhPy7NgOz/yIWZywIXQ6F3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774067093; c=relaxed/simple;
	bh=SCE/e/jGaTYwIR15U67Jd8jz3zwuIBhh0H2BLUIIkdM=;
	h=To:Subject:From:Message-Id:Date; b=tsoFCg5nloFtO58B65/xjTM2KnnJ7ZPpxWDMNvOr9S98q3xNujfZs4H3REHq45FYnPra2Ic1IzQj2RSDGCt3ymZPuQW8WqYHzzNgix+RX/8B2fiAiFpJWOUogjtA8kN2ne+TSMJQLScql3PXsaUvuQpGmkk5+YIwTUV1PsNXD9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+LG7+9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+LG7+9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9988C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774067093;
	bh=SCE/e/jGaTYwIR15U67Jd8jz3zwuIBhh0H2BLUIIkdM=;
	h=To:Subject:From:Date:From;
	b=u+LG7+9oj414rcg77fY/YdySjTdwPZdtFOBKVWPY+YjNw7rUziJbaQ0pWytPEPsbM
	 bJ0RYq8QLfS36US59pskiMBg/LN1iT1BXuzHdcCqwoUv1rkqiZjmdOzUjlrAWqGZz4
	 VjgG0yiJS/eS4VqRKa0pXluAcoW2xJyMFyvRWT0hjSm+oHm/RDotZ+ogpT/DmMx0yV
	 FAD5i3acQfHLctROUmpxKPdh49IT1KfGPatMzVCaZTTZDj8ubsyCuiPAV7tB5zWFPO
	 vLEJz58MI3iazgRAt7Pk4e3IcAwgveXQOb2iPXkcINd77nPsRXh4uBfO2MQibrNS9Q
	 qEcccEocIkt6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F75108B8FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406709359.7729.9773063581222225860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4994bb50ac152a64504e8cd80f52d5b5328007240cb73606f9bf057f104b9c9a
Date: Sat, 21 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774067093
