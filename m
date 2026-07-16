Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230A0376A1E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784238514; cv=none; b=XrM4uT9EOTSpLwDApjztQYcXECXMOcsCFrEgRBtmJsReELuO4MMHRAussdP5u67wO95NgqwZNN9I+ShlQqCC/bLgZOJjQ5fp/QeVNj9vLWd5I70aNytGdiagdSfx0OzT9PqI4gEuhNTtmnJrCHpzlsbN9wOGTBJBpC6wFrA2btk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784238514; c=relaxed/simple;
	bh=HYPcwX9BZUZC+8JB/VoAu5f9HMTkGF3LaOV7eWKzq6c=;
	h=To:Subject:From:Message-Id:Date; b=YvyKUxYLhju27rlRUmRa+axhplQCe4blqt+elJkazFcqGXZnpZouSGo/MigWXKdjEqShbkYmFRqdW+7b9koucGnpD6PJ3h4mhD7LjzoiTdfokMkwGxa3GkOsvsgGby8UQ5+GtLjOP8Px2PyY1iOHvZYLQa3BSnyeiO7HrJ3xa94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/tBAefI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/tBAefI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF36DC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784238513;
	bh=HYPcwX9BZUZC+8JB/VoAu5f9HMTkGF3LaOV7eWKzq6c=;
	h=To:Subject:From:Date:From;
	b=B/tBAefII6/vdam0WM99bUV9Shiu0ruxtD3j9YBaqmYdoeLqa70fE9kzBR1/hUTJW
	 u0hD7m26XQ/yuVeUP7JggKrYGVTgJNkVPzQDvXrABUetguOUA2smhhk746CE3Tmb4l
	 /fXC0KCGGrzQdr6J8im6R+8DmBeFt49KIEjX28dWcL0KG77pOfHnNtsa1OWrVRESk5
	 UY7q+jd0uMP3kCPWmNN3ii/PB2dTLCitgLaaNjDbxeQofIDmkWkXJwsUJfbap0vZQo
	 nFRqApK/LiHDX2V5O205tHpsQGLSjMrU4tpZNmwWKia1v7LKHEcPyjdUDugfDb6ngj
	 k0yufua+pBwWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D8EC44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423851368.10263.9771230801775487384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4961682374dfebfad8ac51238b81b17ce7b8399b6e0a391d03136fba6a250183
Date: Thu, 16 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784238513
