Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDD81519BC
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753526994; cv=none; b=tLJA/2utuRIjNhqEGMXy2oqzpjUgvZSsdqAAjY8AwzbIi8+ZkeNdvmMVOx1sBYy4A/4VShbmX/e9UXmiW+nyfwQLAXuqpXJJ+Kt1cHl+C3+ZvIRXlAzxIsuaFvg2giqueFZOx5TuN9xc1I46jauRSM8j4YQ5fONdjQ9JQJ85G9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753526994; c=relaxed/simple;
	bh=Ff2jKIKy6fpEfbwvgvtvywqRaPR1AEiW8g4VgfmYee8=;
	h=To:Subject:From:Message-Id:Date; b=R++g1g8dr2+4+C5lwQlxCrtHTGn86IY+g7rKWOaDoFI1PF1oDKxkPdeyPyX2TNnYh0WIwYuc5K1QcDwEaQSBgwaW1hrlxGPmOFmH5/A1gpDkuFbNCzlWNChISQ7Ns7U9MfaxkWcmaBwO9dE1Q6kCtBQrlJ1o/1sxJutlbWwSLZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b82k4w+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b82k4w+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FFC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753526993;
	bh=Ff2jKIKy6fpEfbwvgvtvywqRaPR1AEiW8g4VgfmYee8=;
	h=To:Subject:From:Date:From;
	b=b82k4w+lxjmLshAAnhYHyNH79r0UnZv0JYuwH2zvJdYRynCry7ydYcY7ZNOwwVvF5
	 ezux3PD/JuYRbDDXAuTax6pgh6UHLBgnY7MLNTLbwSGm3jJBnQ7Y25/EGG/kIGZv1a
	 HLFEE0cvfzbyhg8Ms4ted9ZTMjt36P5eCYapI5H7Tncnfi7hvnoMd1DZ4SadgugBU3
	 wrh8WBTNp0O3KqYYtGJKoI5sbn+9R2rxKUpVXCfXfKLrT2ovOdZBAAlKItnars+RZS
	 7FFYMiPT2zbuv+y9k91d0WazS8rNbbgoB+P+sWZLYZByhqeC0/iwTyW2bhQdP0ngzX
	 w3Iz2iVdxL87w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F933C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352699357.2628.454158566683103854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc1b2e622baaa215ed258f7a25038b0ee994581419133441bd93518b157078d
Date: Sat, 26 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753526993
