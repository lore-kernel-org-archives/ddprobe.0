Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DDC38B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717495523; cv=none; b=lz3J82KzQtojMt5dGLDxDI9nc0zQIJUqApOxbKkatoh+OI6Wwx5QLGsawBzfjFP1B0z/qkJanBeT3On41BW5SRTy23Jn9q3Imr9pvAHdrs4jGxr43GQUUHV4nt84zsx+v0Hspf7PbMhLmm2ECS92f9wZG+e7T9mIKtrYA6uVSdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717495523; c=relaxed/simple;
	bh=jckDs7nPw42lj+NBZO2JHDVceuLy8sVUi+pvAf2eW0o=;
	h=To:Subject:From:Message-Id:Date; b=LI12OIYfDu858+JGevlaKrYNP0ilIyHr47+c//3RhqnQhD0P4W6mWrUsjrZtOOFk7mMDTPTYOh8Do/fsiE6o6/yoRBpJnp52RzpdIGzQwKOd5s/1EpSRT0DQLhYsWTGuzYToeFK2vKfI060au34h553eBdwhK0iK85nLKmFtZVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8r+Q7cR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8r+Q7cR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCACC32782
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717495522;
	bh=jckDs7nPw42lj+NBZO2JHDVceuLy8sVUi+pvAf2eW0o=;
	h=To:Subject:From:Date:From;
	b=a8r+Q7cRM7GuIdYshoCrKmIWOzDnqgoGqydmuANPOj/7JuZ/4x3hMgG+XjWVHDsYV
	 mc4kKHDHco0wKW8zK8Bw/+7Tx/NmFnpSCJWZ2/aE1g73VLg3m1YFJE81wWWsmnnEgg
	 rYkO/n+y/59vJKTs+Xg5zu65tHcuZD20gBi6KlvuWgExZE0fjGE9wW8LbAzf83xoMd
	 Cx+iH1lNQgC+NxAH5akBHYU3RvMlpBDX4bMk9KYZOyYFIBi7KtqEsDOzcNFBOWN7ln
	 jrj2u5BN2Lr6QyfxVfrWilSaICon7Ka8bB/JuDJWBt/oKGWVO0B+sgNjV2n5l3rVEX
	 yX/gkR4Qs0PuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3DABC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749552276.12139.15943990503774866933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b051f1a458db1c4be98e2e260b683b278f1b44cbd7d56ba865005525fe7ef8
Date: Tue, 04 Jun 2024 10:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717495522
