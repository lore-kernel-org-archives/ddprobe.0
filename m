Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1A3201113
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769276634; cv=none; b=l43mGwaX5A+nbnIqZO6rN1TTEOPD1GzLQhECvQjXf3vktdNT5XUzhBG5b3ky9ZcAvA4qylp4dhE4yoB1CfanTCL3hk21shfo8PQlhLHLrYXZmy2kcLZhgIGk3Cb5BrRw+VFyNrUtVo0U5/jCF1K8hYfG6PG3l7Epj7ZjRw7/Htw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769276634; c=relaxed/simple;
	bh=jgpa+eqfnt0piWtUGgPEE3pRjHJiGuxqENDl+JWYLpc=;
	h=To:Subject:From:Message-Id:Date; b=FZFFzhKS1Mo1LNLjsqOHfGuWNREzxu4H+3mP5eFaeM9cXBwfpsGbwZtNaPdykSSrS1RWyH5m0r+JM6N/IY8bq5HJoNRU+Nh7DqINSdU8BiBy2N3NpROhhXlh9Ze9bYPzId+BpZtKGCyxOqW/zca8phtqnB1mIvF+yOADsatW0uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tToS1JpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tToS1JpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7244C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769276633;
	bh=jgpa+eqfnt0piWtUGgPEE3pRjHJiGuxqENDl+JWYLpc=;
	h=To:Subject:From:Date:From;
	b=tToS1JpOXL6pNe9oy+yKYx7EYnWVhGH/CJwYVZZuDBl8VXIjghMKwWhtsNeWc9rcH
	 xP7Y9xIZBa+lIv6iJNJwb222HYfnDcY405OJ89P8iceCU62i8UzWY6XTl4ODUGaDfE
	 5oKSv87ZD6F4mhoQhlhD0uWrm7XkH68kGXxgcktVNAoeJVy4y/3BpLlWHHyzTBUbZS
	 ktU+NQ5qpGZVhIBDlJJT2ruYEebfx7jxmcyD5CsJu/JhUD9rzKZTyF5USVQpXYJJeb
	 QaHhJRAj32qM9YjrK6Qavlsi86WtLw/a/lwxNeZD9htO4OAhI7jd7btNxCela/CJvj
	 smpxN2bc5Fqgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F85D715EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927663358.27514.14331323274403653150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72da8d579a56d1b7d93238e4dd70e3f29b4b689be4be36476eebc5f712c9ca00
Date: Sat, 24 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769276633
