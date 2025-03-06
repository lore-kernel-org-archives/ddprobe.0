Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC922E3386
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 08:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741249134; cv=none; b=AKURoYf81JwaiFnlMQV+5PfM0pC+aA4acC2SiWVuWps6lHcAyAXhCUmextEfqzJIn9iiflLsduOwrs3oFi+LJHDqZM8Fxk7LSvF9dWLjy+0yRRS2u6yXeeBL2ayuDPzMgx2Y7Cnvm+oebmpwKudwoNI9q2eyuhgGGvb81bzqFss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741249134; c=relaxed/simple;
	bh=wRMB8tVFkpakf67bPbP3zKJ2R7/KLbuqIg8/dVXGV+w=;
	h=To:Subject:From:Message-Id:Date; b=ke9DA7I9Y8WncJNhdjU63TUWWbVD6jON7B8e+yPdSegGXX5hTwDzyLl1wW7Cd88kr7oLEJfn9a8Jv/2SJOjmU/RhS5WCVg0gsmmKG/xPP1OWbH8tZ18OazXjZSycX1Lhw8+d7RZUY+kMvPjHEMfIBLdifuG4L1tEDLA4vdOy/CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElHlQU+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElHlQU+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3232C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741249133;
	bh=wRMB8tVFkpakf67bPbP3zKJ2R7/KLbuqIg8/dVXGV+w=;
	h=To:Subject:From:Date:From;
	b=ElHlQU+d5/0Y+Fc0kosfo9XTiJHzmXqs0OGMFIdjc78nKKMOnZnMgdm+Jou7855A0
	 IKEwM9FKaEgyRQx5QTEXjxAisjV5Nthksel4lA7+hwiMa1sK246iMHBOFO7bPSJa+a
	 uFbCH7qFKZ12JqbGsjWHULpSRqF9neu35aXcvXW82hJvjJ3UT709OMOJRJsCCM6Nyz
	 mLHIDz/cCuwkcLk2KjNmRzp5LV+xQ4wXFh1x3a9+qOj/KecDfkFRbpUSg91V0GlWfr
	 +qCVfQI4oS+PS/4Os5RsG7U4bzwlbyxhfq54cO+l9L9+63jcW3wpSHqb0eGAn7rRGL
	 tqnpcMB23DBlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D5CC282DE
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 08:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174124913358.20093.10254577645258992204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2382f541a7efb14c15dc279e92b7284898da206c2c3493add4f530edb7ae2c9
Date: Thu, 06 Mar 2025 08:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741249133
