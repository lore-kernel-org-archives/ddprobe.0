Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BFE20299B
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747225195; cv=none; b=lxztev4eIWYKT4ZP4xCjLDLWDzqV0Z3sd1los+IUW1P2WHD0hMQWJjzXotzJSb+SHhIidPMvm2l9rFhyM3MODRGU1A3t1UH92ngYLsLjIADepW4WP+KDWV/qL89W+D6fsNBh94/O6kjxXqXKvoEoL5aLTYgNmUiLOQVhyKtdUVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747225195; c=relaxed/simple;
	bh=Gxm2wQsWAjTEfXYII28K3wU54xm4Vm16wzbdNxrXYj4=;
	h=To:Subject:From:Message-Id:Date; b=hlRsu/dXRsLuZ1p9uJh4eh9xWNCg2CcaiaJZo68W0ktxHGY09Y/Ne2ZtZiI01enO6UgEhlSP+ep61irCiJOXpKNZql7hm2VCk12B5WuhbqJhEuDitj24PtnDYs3ScindFIId3AwiP8KzLF+YTC1IZ3RVa5JM8I9uNDWkBayDkcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dil9+u5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dil9+u5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96CBC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747225193;
	bh=Gxm2wQsWAjTEfXYII28K3wU54xm4Vm16wzbdNxrXYj4=;
	h=To:Subject:From:Date:From;
	b=dil9+u5pY/DA/O38Hv3sI6GZIyBx4lL+SZ52GC/oNTgWj8hSI1JivK8a/9SqUVRJ8
	 c56MiSUTYgdyriyjxP6KE8eWWk3bpWGVrPgHchatsp/5hR2/SqrgXsdtFa5hXjAggj
	 F6diH9htmXtaaS3BmGmer2Af9E7oY5qs1pl7edLWRrxuJc7rCjh5KwbO6DZ188zBxJ
	 DxbT8N/nycxs572ODZ1iAMhOrZ3R0F3YSbAHRE6E45NSHJv6ua2ykHz7In0SweowXk
	 hSFDpFZFs1iEveYuQuVdhuzbEzxOSlxOBgGGz7xXGmrEIzPJAXGOrMZ1tPHM1XgjFX
	 t+CFxhwzhFZWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99792C3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722519361.23930.17015391695272903078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca5bac1ac36437637598380412dbd2446478bbe9ec173f39aade83dfd54a817
Date: Wed, 14 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747225193
