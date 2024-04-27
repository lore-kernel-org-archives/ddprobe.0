Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552ACBA5E
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714240343; cv=none; b=qwUN0kw9o9H0UrFwxB/2YgTy3qlsFtkI1w62lfaDle/5su7NSwPxQN6zQhvgm0uka8c8ad63c1AGSDwXDPaUoHxEc3s1TIybGGelzAyGPe+HlftXDRwHav/v9+PvvnXgxoAsqqCnY5gfYQOwRB/vOqmyLuK0pmWRAzYaxUicH3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714240343; c=relaxed/simple;
	bh=1OkOvgFlUaWxhKUxNUeXdodRWLdfWhJhEX3sOaUbV0k=;
	h=To:Subject:From:Message-Id:Date; b=vBUQuNJH9Z7E68s+2pti3aURrtq5WHnt/Oe3CdIZpfN9nNYeyOowoOOau1IYmBPTls8K1zfzVWM+VK3sM2gK9GbiCYwves8l3VKQXOZIJ7lUoaXfZEu6rr8GRyez/yIqmBNtVQTbAoIb63ZiVLYxz2HyHo5Ic3vRAkJTdgMbvM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROFTWa82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROFTWa82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82EDC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714240342;
	bh=1OkOvgFlUaWxhKUxNUeXdodRWLdfWhJhEX3sOaUbV0k=;
	h=To:Subject:From:Date:From;
	b=ROFTWa82iP9Ohz73SpUqFWNWyznZ7Ec1eAdiMlxDq4nzcqbnT57CXdVy9URrhSh6E
	 A1rcjn55cSDrQnN+hmZ74bfONUgqTMAu2cqFspRHw7eKju5NId2P9AmeB5MpEh3KJz
	 +Me/RuBZZ+s3sxOVzmSu5mQeAlD7iozPBt9+5LG/jib+oJr0dXk6NcQ+J3BOAHhbrA
	 MYqpwujX/M6f2GuBykcTJVCcWnEmIs/t+G6dvabMUguDnZ0YeUmhXyRgH1lYmLxEP7
	 DByTtznP3YYViH88W5kPySdHPNVNyh9L8lSPmzOJAEyllPIWq5wGrlLK31rtO7zxtC
	 fv7rbKY+xhNwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DEDC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171424034278.7892.13010069252255355438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975a2621854e6a4a49e0e461a431c17b8a65c2ba517e88ecf9a8da7aedec3ead
Date: Sat, 27 Apr 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714240342
