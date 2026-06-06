Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22229158DCF
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780767874; cv=none; b=SxXrhfS5n926LcE/Dhyc53CPD4GzYEwh8GGO4aUqWL1L6LKzEuwbJ/oTt8VnWKeuVC6Ol0JG3v0qH0K7rBNBUKADb9oLbhONDV3lezWxhPZcXQu4WkysqVKJx0n7iHSO7MVMRE1Nm7oHWaTekGsw/sZ+ezLDm+PUeHZmcU4ycbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780767874; c=relaxed/simple;
	bh=wCEbV6ZKibCIrh8i9zOjvkOE/FjDQudPfNYDIqKE2hQ=;
	h=To:Subject:From:Message-Id:Date; b=mYB3yhbw951gcAUdjycCQwP0Y6xOBXNmHl+f47+LiLFQ7cqMFUQs6uGi+BKPiPet1J1kdHMptGbt21o6opcB+dLyo64ErRJOOoGWVHJpBzLqGMwGsueEZYZbaI/65AGgKJSrIfeAEKLLMrtXGgnEnPM6vKikSOStD2149qINrIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9Qffaed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9Qffaed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06A4C2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780767873;
	bh=wCEbV6ZKibCIrh8i9zOjvkOE/FjDQudPfNYDIqKE2hQ=;
	h=To:Subject:From:Date:From;
	b=d9QffaedHS4Sz7skqWw5Ui7gs55XkPffhrsMtqevBaLlOYMRpqtr+L33IbBTsdyt2
	 kUBYfqp/WwqCua73p4cxBvGZ/qSTNjFjwM0Y8WgkhBbww5zivWLDHAlWHHVGdwKPy7
	 q5QZSKbCihlNWVUK2hx+Ib7v6WGSTc7GeO86EcSgxp2LLy8iS4ZtlFvnvD8sEr8grH
	 uCtHXVVavwfBG4OKuO6yKYLbNuIddtYz8egMYDqrix5HPSF0XI8KvHRasynIctLh6+
	 gptDctVOwwCCftcLatT54LCvbFWuLGv6XOu3zzS20Z7S+sY7A7j/Z0GZKnkaWa+Ot6
	 YaQ5Y4PUkPu3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9693CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076787368.15052.10597271112591293267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc9ac5da54b49685f579498f4a7897d3b141d873f03d9111acd0648a51d2e8f
Date: Sat, 06 Jun 2026 17:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780767873
