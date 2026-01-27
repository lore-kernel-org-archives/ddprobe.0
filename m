Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0408F625
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769544834; cv=none; b=OnuJe0wIN1NTAZYM7cz5DZOKgJNFUQqz17XGcydei4mOhBJH7M/nodynt1IdjICcPdnEMC3PdyO2vBLCOFgUQ7/FlK77KqvuR/PPtb5ymng36PDm1LbcjHfgq/mF2PSL/H7MYd5K3UtLfdzotMQY9C9FR21zEkgnBOhrNXUTS98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769544834; c=relaxed/simple;
	bh=7jcyAY4ytlB7bXrZbjuX2LlPzIoLmJ25nQlfHmW3BHY=;
	h=To:Subject:From:Message-Id:Date; b=ZU0z+i2DAPVvSPu/jj1DLmH0OSOtEXD9/XRjYtk0vUraMxgKQyGCE5+LfmPix7tNbluXChzfSLPzGgxfgtIgZfwEhIKYS1LyMHPQadSnepchy6lNx421q3hJ012ZTkxoI74Lguuv1xggl3cqA7x09vMQ4B0fUQ6Px5HGnto0/EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLqLPW1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLqLPW1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EC4C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769544833;
	bh=7jcyAY4ytlB7bXrZbjuX2LlPzIoLmJ25nQlfHmW3BHY=;
	h=To:Subject:From:Date:From;
	b=JLqLPW1LS8HmN2bXUfOstUeCW79KOEr6SlaaORIARBdd3LXdt2aEJazkIbax30zRr
	 4qPvm1tnMXiJc+LdeJBVyIpG7iNROBijco3F+GQrpHVReribZ+Nuk//gqnmIyINrcy
	 GMvz59j0Ww5Up3kyOe57OJtb5qQHN49RrZ7L/hP1weQntg5UOGS/82XhePAEYCJok3
	 9VOjzG2cPAPAK5JKGKyJJYhlR+gLWQRYJI3dbK5b7ntEW7ZdAb0TN1N0+Oi3rJ4vgE
	 toHVTCN7rKbhWKY4MnoPmAM1XH9j5xkhk7Df8J1vM9CHq7bbpaSJE0HEJ5aoB8uR1U
	 omCzDMio4K7aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FCFD2FEDF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954483358.1190.8630444738036906358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351a8cb7fac15bc902314f152ae2ce17702a621379c444137736052857f2efcb
Date: Tue, 27 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769544833
