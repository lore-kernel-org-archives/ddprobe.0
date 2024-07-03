Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D61B134409
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720032923; cv=none; b=mAfDE2biZBMU18QbjWDwxm/XsK7zBYULcVl5jWI9Rjn68Qptlsh7XI4H4vdRIcNwSbYbd26LoAfjU4gVGOpQmCKR6o0OWhYDQooRGWfuhRFPOdqUGRYBW8aMcea/UuU2C6chkA01luHIcitgBDzs8zsSKnj7NT3YsSy2wGK8BRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720032923; c=relaxed/simple;
	bh=/Ni1zQkssvhr1Lm8lNFih2SIC9sYek50she53u5E8lk=;
	h=To:Subject:From:Message-Id:Date; b=Cx9Uh49TrXJY+GlmNfBjU9voJBpKMG7r4IMeA+ExVJs24swFoeQqUgkysPpf/a8yLbQ5hvEFnz0tbk8ejVpS+0vQvaev6q+VGErkXFLA7X0+PkGH3w5KJvcc9LKNJbYqJ1Pfyo5ngfFUyrP9LQGBxP0NguQGV1fx3lVtC7VVj+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4zoeVWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4zoeVWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D556AC4AF07
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720032922;
	bh=/Ni1zQkssvhr1Lm8lNFih2SIC9sYek50she53u5E8lk=;
	h=To:Subject:From:Date:From;
	b=r4zoeVWKw4Rp6yIkpADvEI8CCstTyVbbf0nEWpLS69DroSQzPo7CgKCTJSIWXvzhg
	 bfhSQjywFFZ2UkyWhZwaVlMUDSh6IMOO8gA5vMD6tBTFaMG72rrIYzS0SgkXrnaDDu
	 Ade3ACPRAJb306ane8Fzp9gMyhdgAp34b0ljsGnBU2hjoYWVzvQ94fbD1GpbVfucYH
	 bLXoNWuWt4BoemmxWqHBwEJeh76vEarvjcz7k8pBCdgtUCc568sI+yumAyG6zPMpue
	 060sKeheyKyFN/W50VzLpGjM8uJBwzOt/2EJq7cclwIM/Z7TRYhThc4Ldo6YtVs/wq
	 aq8Y3v0BQa4qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47B4C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172003292276.23173.12853179481286545360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e32f284fc305c681e776afeabc399882583c51443c9e410c43de70603004563
Date: Wed, 03 Jul 2024 18:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720032922
