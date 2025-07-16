Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270F4262FD4
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752636594; cv=none; b=ZKE6MbZBMHY8yG2jFI2yj2KBGuXs8UPAST+cNs3ZykgHzmsnVmf9qGAPvWWTGdF9unpzmgEw9hARDzQgz/plq2+WpFjmF451X0RRfNtqc73OAalRrNBop1BJHuPSH+a3Re70TAQpFHrozyS6l+3ZHDr5zFNLP7z6PrUObVl3tho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752636594; c=relaxed/simple;
	bh=C43K+T6es76+o8Jz3une8ypkaxBeXTpXpsqnrNeOTvs=;
	h=To:Subject:From:Message-Id:Date; b=iW93fsTWPqsVbTj0WbnpMjy0HewLqvq1n1rKID0hEVzlVBYvOMGT4j04x9F5pzs17cSK2JNyeefDCJFyOOw+9jx6PlkWUHyuMv8x74cXo9vVSwU4XGCMCfbvSn3WHlP0ncFZc8b8GMERxMsScSK9u0b4Uh/kBQJ150VwAWaqM2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEfmE5uQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEfmE5uQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DA3C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752636593;
	bh=C43K+T6es76+o8Jz3une8ypkaxBeXTpXpsqnrNeOTvs=;
	h=To:Subject:From:Date:From;
	b=jEfmE5uQnNVvEd/rurEhnnvEZ4XirTtk0Ywt/SjQFtVqolLesyDStYWeZUEaRG3Aa
	 2wZK9BqsiiiJUC9n7det5Nzz8LxSS30c+H3L6Jb5MgE9dNEvInd9YGDs56FMc2rFgA
	 fGNuvDYlvUlzvlyvwLcsEuWHx+498oXK7+es4OPrMjq2Ee26gId/YHByrMHlBxdi23
	 AbusrF7Xh4+uaXiK8LHCt0f/dyi2e8CKF4ozNRy5qVmnnVC8Dt5NB3bvEFjhApT8sh
	 s61+aq+2Cv1BcfFXeSwsxuEMCYihsVSygVQQXBmRY2mMzcc/Zu+HVL6d4erHSVXpEz
	 ls/y+6r1SQYsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94020C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263659358.11573.11083449568773218966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc3bbdda2f46b369510c720ed9da8cead35c33cc2d150e1d292fb29d2f5bf124
Date: Wed, 16 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752636593
