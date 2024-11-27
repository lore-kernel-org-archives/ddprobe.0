Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B9B192B79
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732745154; cv=none; b=Tj90kptLtD1/5/iGhsJhlApfbacwqYFf9Qmz9cs+JQ0MJzKzKvKaV7TlljfexCQYr8PfgQQNKYjQ793atcyOPeFZeWtjeglu0Cpx3XC15lswTuyHUeJU6WIG8uMlxujrWPvrAgl4ifAtzY8iEtd2XYPD0SlK3p/P1ibfAT71Ujo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732745154; c=relaxed/simple;
	bh=0bB/SPMTyh7mapJ6yt8L/Fr0mijjCs+9+uUSTEcAih0=;
	h=To:Subject:From:Message-Id:Date; b=b9gaH9fIhPWYsQjzpYksUE+yL9SFqOr6T+EPWOSVOWTlGz/FguGIWlrF9rP0zX7Ri8Svkp12kTzAk7GAZb6g1NEE3Wy080QxskvAVt638Fzt0Rb6/YWSvCtagmFnRzieU2FbrqQOWmXavfSDB8UGKflM2VKlaG5hNDzuOjIviMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ox+iUAGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ox+iUAGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E94C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732745153;
	bh=0bB/SPMTyh7mapJ6yt8L/Fr0mijjCs+9+uUSTEcAih0=;
	h=To:Subject:From:Date:From;
	b=ox+iUAGeQCJj88Sb5pb1czgKf8V3Vmri7GSLC0Rr7h1v+Fi9NhKbMPQmoPqs8txq9
	 KQLkQsxdvXh4sZPriBaDBUq+3h4ImaevfHg3IOelmd4aI2SrwVcvxCz6HdEK/H9rsu
	 D2ImGGna0deeR1PM5s9Xr3J0VObL7Ixyxh++7VQA/fbq4ZGtXoHybScbiRuvUcE/GV
	 O38aVBZhVnPcgwZq3xUBRXBynpGe1GtOJXEIbr/9SFq5g67XJD63nznNpGug3HN/Ao
	 8Ckpe/aAT3S+f9H7UT6hmXEAwr/NDzcBITfEDi4SDC/NtXUjNrxGpG2fhjBv2JWQ4X
	 Z9qoKkBbidz5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE1BD6D241
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274515363.3341.13883505816514021636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f6481f246cae08762a5e7847b1c7bd52504c57002dbd7e7da482de32cfd1b2
Date: Wed, 27 Nov 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732745153
