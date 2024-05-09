Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C992148318
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 07:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715239343; cv=none; b=AzL82tdwpxVHadKeFjMo7Ol6IDBApnZdtoj8FzxQb28ZOJtchTVBEH7n2CDUZeKCEmS5HnJ6+QrsXzwObm9GLrHUF86H45QjaUSWH73ep3s1ojSqMhMbDR99lWGieMwgwNtVnwoGL3kOwPYuS05dJdrnZqWKnyYJQElaxeXkl7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715239343; c=relaxed/simple;
	bh=Y4Hn9FQTjeWNOAGWdGR6vbP5d1yfQFlCeD/y6FdeLJY=;
	h=To:Subject:From:Message-Id:Date; b=gyybJXK+JFjjp4qBRc6RP18A9CcYi223PmgRhuSUiDPNHwvmjiAs6Uu9onkaM3TxqKfu858tieXZhkUHeERImXvidfJli5icOk6EJiBK3sZzkS9n9dijYh1FivdRsrByfEZmaywjGm3d6GfwtIsC4hOv4YzPJgAgVXFpZ/0baIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKkdobig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKkdobig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C49C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715239342;
	bh=Y4Hn9FQTjeWNOAGWdGR6vbP5d1yfQFlCeD/y6FdeLJY=;
	h=To:Subject:From:Date:From;
	b=TKkdobigDvtTJkMY21lcAXlXv0jrtZ00rnV+UMXZwwLfPM4cpjO/9zor3B8Na8vFF
	 yvoMMvG6h2j7VUAUcblvMeHgQ9AGsA1QrFasea0FNQYxN/MIE1xfIcY3cmYVPMdbww
	 6rKvd3ci7RxloUlXqadvO85Lll4a3pZL8MUkO/sOtuwEMva5fYO91+lRRFo7p32nzP
	 cdYfoOmcA7tkkuhsAa9Q1vFXy2pUnjsO9vYoSQg4RlN9PEP52P+NTxij+ITl0jyGGZ
	 9k7U7d9cfSF5ZWfdfpJ/w/Xp3lHP4W2HR6qpzJHXO8McPeD7kBLND5QheczGv9k6GH
	 IOWHBt08mD/rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C150EC10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171523934278.19947.15792972283917931867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bcd54850f76daaee9ae34816c938c0ab380d299c7ae9aa741bf52583bae5aa3
Date: Thu, 09 May 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715239342
