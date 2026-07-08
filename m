Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6A1364935
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783481314; cv=none; b=aOUnHWcwArRSnyhWNnR+ZLrdoHxM0PMwOEJ1vj8wMqFva8i1AXf1XDWFpMANZlST6SVwFw7AoxS0l/Iu/rijyebQNCHPpGkfu09EmFG/2+IEOZz1axTzxVbeq5VeJ5jDHNz3JApb5po/yJ9VmHvgVJ3tqjG4rG08v08ppIO7Dfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783481314; c=relaxed/simple;
	bh=Ira+e9608c5AAr9RPApTyZB9NFyrS6YCPzihsqtc+po=;
	h=To:Subject:From:Message-Id:Date; b=e/j0KJupUK8HcuQQbuCY3T+4Ivg/0vjMSDLz+WNz+NjL5Ut733p8WfUm3rrOoPL9mI9zXxVq+0NCzw2xm1huHhIGwEvHPzKcdVg4NZNUrLLN67pAaTV+scskM1NseuyEQEHKuFfOiqh3qwLdcSs3yrrmKM4UsbvCHSbb3IW4xYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7zuFf55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7zuFf55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADD6C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783481313;
	bh=Ira+e9608c5AAr9RPApTyZB9NFyrS6YCPzihsqtc+po=;
	h=To:Subject:From:Date:From;
	b=B7zuFf550Mpxm9ESiNCGuYmnQlrZiewI4r/yEuFqxRO/IABMe3kxBJJsWAG40tYZ5
	 sXaI+uyfDNJuEl6Ogmkryt7go3EgC604YxeZ8Otso5RSQSjm1sGHEXUsVKLc4Ah3Sg
	 trht3pGhKoppwc3oP5rthFngXHWzKwFGUsjZ4M5I3tgDY1orEikbnIMF3BU9kjWAVR
	 mHuMto48F4/bVogoGV9BH6LmVK12c/9F9cmvWLq6cH9ZfZ+S4oG9u9Tv4Hj2dXB1HJ
	 IZi0OgZ6O+41AJZd1jO4W6j8XtAhH5RwPZG0NjZ4dU8AZZ49pbYkxkMIsOEr3YMsaP
	 zohUn2Mjl+mvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A970CC44501
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348131368.13436.1196877651725388688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1753803f7d6074f3e9e15aae0719731f555299b318d572f56a4c3633bf4bf027
Date: Wed, 08 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783481313
