Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FA013B797
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736312754; cv=none; b=RsZVQ5evBIcADWIZ79Q0j1g85FYfbVfHZM+0UjHwkqWu62uEmN0ggLu9Xo5PO058308sfhlXD75LknYr07UPZuxdRfm83TWiVKVTKizDhNVjFbrz+zJ3idSI6xN7Z+FCKRZ5VXqMiE4vdd3DPonPNzzaPff1leKIDjaidqTitM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736312754; c=relaxed/simple;
	bh=ZHT2RUjG2Z+gcK8l/7sw2BXd7bIiWfCzHlH+/8VzoNA=;
	h=To:Subject:From:Message-Id:Date; b=CUFt1U55NFe31tU9KR0GVQyqAuP1fZlETyoGHm0Ni8O3i6uF8FmwWTopz/8Z2SivBvwrW4lUNt6eZvP7+kimTp6Utli9Ko24IyYAeOa5m3R+j8xEzULTGubYypwMYLDt3bcoZqTQEeur2aROSgo+5RywABZfd7SHSsgUVUZ9cNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBEhF1jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBEhF1jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A395FC4CED0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736312753;
	bh=ZHT2RUjG2Z+gcK8l/7sw2BXd7bIiWfCzHlH+/8VzoNA=;
	h=To:Subject:From:Date:From;
	b=OBEhF1jptQOStv1dY33aLFiUFiGAEYhYZUlxiKzQZN4F71cWkW1c5LJ3aA1c6ERYL
	 LXp+u0L9wjTwlzN8vYwyQZn5mufNW/yBjeTAmHgcn0FZAXCAt1aIa6lLbagcWbzv+H
	 3pkqODj3/OsdIOGnO6xTM/US5c74wJBQB0hL6z05HZsZy2cN1fft/+9ZoM5Np0zMUp
	 cRp0FrerWhAnppkcjbnzOtrSl2N81ieXs7MzU+v4CSHOy37j1MNtq5V5LwIPyx9/EJ
	 J6eF69HwXiy66RepjWIkXw72hlBVHZQ9L4s5puQwIY/ozb5UWgYj2U5nl/LWSmW93f
	 geLHEaqZ9TRwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC20E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173631275358.4184.4236001261351227500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46d231ce417089595868f014a8cec3fa20ebd0ccfa926ae3a03e4185764ffd91
Date: Wed, 08 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736312753
