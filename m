Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A47D14B075
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737925555; cv=none; b=ufH8UpeH2e0FvWMEJoSFzaSHv0srQ/X/u3Qj43qgoNBxrt+JUa//x233JAQMOSKmrbQoY4c0gEzFGeVjnCne7NLkyrxI4yCHIsoqEVU9TGHuqfAoB6u/sRpI7suNkfx1fvvPgyT0kqwlt9/5KJ7XAV66E/posc1cncU5Fv06bzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737925555; c=relaxed/simple;
	bh=q5/JXcJHuBk9sJaTN/bpF7QUVe/VJZzIew5+OepFXqc=;
	h=To:Subject:From:Message-Id:Date; b=ufukGCE8IaZlUkj0Li9ZoM1Pgcw4rBl0HUHYhzr2tXZJEXw77xe93PyQzzz8yjf7/sGDeZi2nQyfrnFJLNqFl9gvffZZQOvQ8lYQj4Dy1cGo1EW7rM68IzYdB2GkXygQKW8blkmEByZDyuSDcbkD+F7WRbGxKn7cBWA+L2GJnyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kgh49qWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kgh49qWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A607DC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737925553;
	bh=q5/JXcJHuBk9sJaTN/bpF7QUVe/VJZzIew5+OepFXqc=;
	h=To:Subject:From:Date:From;
	b=Kgh49qWLHCl5ZyEZ58FhnZEIZ1H5kb1jRWos9h7Qd8uXgv03ALN2JaDjMcauDkryj
	 MyOZTmvZzR3xQDmuM9HKUf1q8KIYVuBmJLls8Ta9ThCNK5A2sfSSLDxjJycbIiR5cO
	 8AbxOaUx4ahgcKvu6QI/aOcSBf07kmfJjYQHp1AMPhGq33IXP1KA/NFQeKHow9xvB/
	 akc4kkFTtat65+0Z+L/nGd3PFYOYXeOaiSOsjmEsyy8AYckte1nw2KaY5/t/7pX/fl
	 uXdhMyR+UEB5MhJQZGKbJNhmSK1SwohdpwmsMgxXWIzZLe0Z9QKBYAXF3oVulYlRN7
	 1LoLL1GBC4J8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B4DC0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792555357.18886.12290199618455175289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea6c56cc70893cd5661c1f6e4589166c53fbad9d92d86efe7999d2b43524631
Date: Sun, 26 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737925553
