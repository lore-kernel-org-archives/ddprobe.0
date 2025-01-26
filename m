Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4333125A648
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737884754; cv=none; b=NhreW73q5vGmDl2Hk4yIguZck3QkvlAOunOV9B8uERQ7/i7nvNDeN4P6C5YFJ1AuWsjac3RDQ+6r3JN29Hj3OgZhI0P3kQsLUA3nIo3wcNmxilW1htWhDHZQ/44rlFosbSvEMlPbgSEy3jqOTR5GummuwzLfjHkZJhv4to8C9rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737884754; c=relaxed/simple;
	bh=kjgq13UIjmjc+QO2YmUQGVwBtg+Fnss1IkmlX3uKGbk=;
	h=To:Subject:From:Message-Id:Date; b=Zc9huEQeIyEcf55ViXi4TK2Pti8bL+gJU8SeHMJ6IDisrcDZmTUhh8sVwU8KCAL3Q3AiIZAO6fNUPJbbLe3NW/1g4QQumnJSUNRswsDSm8HiTafNVTkPd8Eu/IjHk/n63D2MrngDzA8JNBQrUcIJpIXqi+kK4+0nfIUEcChtCYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcKUbeyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcKUbeyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA912C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737884753;
	bh=kjgq13UIjmjc+QO2YmUQGVwBtg+Fnss1IkmlX3uKGbk=;
	h=To:Subject:From:Date:From;
	b=DcKUbeyKQ3740PBLe8sa8lYgta5a5QWO+32qC6T3VT+FlrwhE+gkVdah9xL/Pz/tP
	 Oc+MBbIGMybwgwTQB8iEjosIG13WHC7FWeVX1EQ36kz09NeSfdmTWuFD3SgdXCMuNm
	 2c12RKugq2/3dthm4mHQbJOO39WNLaGP7LVCEeR8M39ERIkK1EGE8xq8TUAZFMhE+1
	 RugYyMWAdOWAl8uA/CBDGPHxfXBXTfajcUnlAP73RxUTeeMeN3juCCv/nnlbnbgV1k
	 17yYXoyv/p3gnMrIZVLxQutGS3xyelkG23q8AFqDwXVGs7DZ/aUe11lcF0w/sJugeh
	 VfnvNORqTtxtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939F2C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173788475358.22556.14281679354326183892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46a3045f29bc90f782221741e27696b58a712bdeaef7e49ffdeb2b101e5e441
Date: Sun, 26 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737884753
