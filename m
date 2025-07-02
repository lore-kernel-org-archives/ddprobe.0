Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B5122F767
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751462994; cv=none; b=Pk0hXGlEfBu7A3aB6rnzIQAwBp7ynzzfhhQ8k3UD9JvMTWw4J/eviR4RnMvLkP4qBtR2IK1MRRlQUH2oE5P2fIlYFU0FCw2fViAxSIl5OdjUphkbND5IcIW1lXWprFvejo5yqu9L/tpyRDnb8KgG0G7Hyab67erqPrArPxX/d9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751462994; c=relaxed/simple;
	bh=yz4hvSXGx7stRKznkGYRR0uqeeHurgk9iVfB6XBAvs4=;
	h=To:Subject:From:Message-Id:Date; b=p4h0lRJt9IaWi8gO/44Vff4JuQ/7+fA1UqxXQssYiOopq4SGBnRjaKwYFX3rHeiDd2ecAseN/oumJNRs4oGzAs9iEqHOPXwKZIj8YRvjqxljZ2o9H9s9bxrySBnSBBkE4aSfkpdc3MjbCLQuprAtJ5Ykwi07ls8Mh8kGqSzI3DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2QOIrsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2QOIrsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6B9C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751462993;
	bh=yz4hvSXGx7stRKznkGYRR0uqeeHurgk9iVfB6XBAvs4=;
	h=To:Subject:From:Date:From;
	b=g2QOIrsFpYz7y3vzIUHe74J8OX4SNiQqRk53XlpRwbAtHXTbkVtfB4sHiXcM75Zca
	 fx9G3/sMnvAQScqf9KJzw+rxfINkYazm0zYV2GvbFM2CEqKDnBA6/Xc5wQ4SvikPAI
	 lifyH8/bUnn+/YCE49IDp70tq50H0jdZl5Xf8Ofg6NjHbLp7NcM5QMcnRV+XDw1V0g
	 XFKRipZeFNIvb6OB5bYIqSQ3ZhkAbdJNG5E7fjwt+w9XrAYYFEELTrWnwGI2uqGtgS
	 lavQiWJocMYsADbZFxk0EHW2OWIWwbxvynAUG7CSFlmeFEMgpXwSPj+k5ZEHu7vkTp
	 W+LPEhlpkFt8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50EC83F04
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146299357.25515.11066970126684163609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2031dffa9969ef31fa6a8a033784f2fcb7d8517be9b9c5f6b8a57efa22403c48
Date: Wed, 02 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751462993
