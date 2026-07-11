Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CED04499B4
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783813714; cv=none; b=QENoy/ub23y1ugeM0adEVLw8UhyPz1JY4oVssqz0Hc6BqcVy4dMIsaytUqYiDu0xhTwMpIrawZ0G2mZo3n3aLYx4aw3DWpNdQi5vQ2r6RFNiWFnGSjV9RKiFmsQLqvU4hGRkqlflsMwz6ZU7s6BgHd/9VV3TPmWr9CTEf+ZAiSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783813714; c=relaxed/simple;
	bh=oKhDvYmrsFbAud4YyR1INXlW9AHyZ8KC2p9/fAzSyv8=;
	h=To:Subject:From:Message-Id:Date; b=tH1/mV/cae9ceTTmxPuVddh3nTu3O24wC1itFbiBAv2oJKPEhABheNxPWsgRRLw42GMCo9gO+kVi4IvbZ0y9EdFKZ6DRMSyWCyqd5lS5msaycSJsOmImOget4866quWMQo9++kZtI8RJKxOVvs4I0UXYrGmWV2ACPgu0Y3zMyls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNog9c1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNog9c1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EDCC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783813713;
	bh=oKhDvYmrsFbAud4YyR1INXlW9AHyZ8KC2p9/fAzSyv8=;
	h=To:Subject:From:Date:From;
	b=nNog9c1KP1pF0M9brHEbFpszAdRPGNNuyZ/HzZ8OS27KwL+ZOxbdjFOPQjCVn0cnP
	 DRVL9SFgnBLm8H+Uzg99zAboeify2nS2ajC/UXVLmvQq6tJmdCrx3hTO0w00qLYA6R
	 AANJRwrFyrl1w8tRR4AtJbQjikxVCEvsSqDNE8sangsY/TFC3DabIAeqOar70jMn+N
	 Bj2P1D5WUFYCqS6YyPxPYaTGXQEkBSZXwTqenc/YdJ2oW+oHplvgLoyiF6WIamTCkv
	 eFkKIMCD/o7G9uP6FjAQaV+tbJEu61w1w2Jq0nCsxNYFs/EXJCC4MjblHJLVjXZx1J
	 l94OkcIzTwO3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8A6C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381371368.30822.4769843823146103367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8eb2febe6d5679cc2aa4bb7d747f6fb664bce4d52a158ed869318599b4d528
Date: Sat, 11 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783813713
