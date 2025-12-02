Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F1B7DA66
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764685374; cv=none; b=gEJ1lSQZye+1wGESc4m9cTtjQf244AghFvUJjmi6w3aOoMF9w7sI4zwh1zBaDssTCoByTIzCuulJsIeQg8Yfoi9e6O7ItDG1/l1HjqX/LDzTTOco/OCH5Z9d6wjPI0rxdHgWzpYvd0O/fFnloXOEjZtPL35y5fVuB3rSFnDAagg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764685374; c=relaxed/simple;
	bh=4lXvWZ4NOEntIRj0YSijqUF9QfNNPIiArXZw+v0jtmg=;
	h=To:Subject:From:Message-Id:Date; b=GMdh1QFHjS1cdygZGxhrA6sQqQePu4L6Z3t2+sgihkl1Til3OzISqaIkB6QrDiwb3GNjsUZkGZAwZmTbWD7+QqvKMLgkTdBTP3milEn4ZEQyX5PGruh4l5NP+fkCU1VwAFGnKSXa6jP1hkPzQuwq6wCekVV7i7kxiT2eTnvj40M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQmoJ6vC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQmoJ6vC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2123C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764685373;
	bh=4lXvWZ4NOEntIRj0YSijqUF9QfNNPIiArXZw+v0jtmg=;
	h=To:Subject:From:Date:From;
	b=uQmoJ6vCKbvTVqKgxNzYXc2aEAFhxR+RWx4Vtb2ONbnk4l8ZqWf1uKkzGc1rJ0n1k
	 Eei3p1uq/Z6LqBz8a1G3+jjEUrK236vY7usT1pEhENH7Szm9eGW2idoJrCaKYXZ7ms
	 x+q0FlhAEU0d8S9Ai+byfu1CxyN7hXpfsOS9ebyLM000SauonJFVa+Juikaw13QKBp
	 jw+Cu5qYu3YlFXYse/7zy/iW1weqPNBaJ5ZHRm+ALhNrGSFmhHRhfb2kjN2Djoq5y3
	 yXOdIzFCF2YIDga8FjnlfAXfesbYLbGDM3tY0uhhWBL0ehlvn/T3ygnmSW3tX1BXKn
	 RyCEfCQBbkJmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE72D116F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468537358.10061.619949414547988586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9dc5f0cbe5b37ea68e7a1fe63446ac9250479f71a6dedfb05796a31f0d60a3b
Date: Tue, 02 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764685373
