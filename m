Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180182A1CA
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760005794; cv=none; b=PVhBXQpD8xVO8blhdt8lDZxuna5IdJYt0ijCFXkaoswVi7etyJHd05nYbsTePB6peRBJNWHaBx6UWk/bKSGuHzh21s8aUTd6rEZqFvDGH0mUpUPThQfhfKQnbKiwTmdJ8JgdpfMk+fhNw0yL5ShTop8J67F/hJoq46njY8NTVd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760005794; c=relaxed/simple;
	bh=alIqW+QuKv5y/DtDcvn5bgllyaJIrVWCjya1hCdo42Q=;
	h=To:Subject:From:Message-Id:Date; b=I1C5GIBa0lFd09t8uSZw/1n6y9UWfTX+HKU7W6rK9lTj4b3wy4hUWGUQ5FEwo7gnwUUiBjUxIGsvTAb7Ia0RPkU+/g6m2ca7EURH9mygGbu5ysc+6XWLB5ovsVdA6vnAfulZ/rRrJZCW0FElJ+NSozDmPBful0SYxgy0P/l/YkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1uPwKLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1uPwKLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DC1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760005793;
	bh=alIqW+QuKv5y/DtDcvn5bgllyaJIrVWCjya1hCdo42Q=;
	h=To:Subject:From:Date:From;
	b=l1uPwKLDE6oY/3nW27wBBDpW49VUR47/JJr1kgAFzsRveI1XdxuEsNw3Zqngfw0Bq
	 zKPzwV7PC5ZEN6o2ZYHs4U/wXyw3ZiQehTOjdkvwrOWGv2xtmyF+KN2bZ1SkoS0pbP
	 bTUL5l6K/Uud7Mc8cj8r4n+DrXPAg6PTMc3mfBydDqWqXSIMCRfo6g4lREIpKCidlD
	 PPVy3qJjVbI5ddnnDdSe8cBYVNSF4l/BnOFgX4kBhjkv20Nlg85uAIzATvhPMghb8G
	 HSdw14dafZAYENnLr0gqgZlqX5QGwuGJ06M+uDCY9HCY5U2PQm4mn+Py9vs1jHF4Dx
	 U8g5lIO+m61tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C5ECCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000579359.28971.4383443231414820488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6eab03fe88e7087c695c11097a990a17328b5cc5e265969dff4a291029005e9
Date: Thu, 09 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760005793
