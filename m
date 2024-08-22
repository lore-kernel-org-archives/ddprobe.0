Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31335181310
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724333754; cv=none; b=OrlVt3OghRt2aCDxYRBlRw/GcOVEcdWHZO1FzGuObubvw7YNtno2Z6VLQnO/sPI53fSmDQ5n76UZz5YPBug98O/MJaSLHdlN0frkQbOP16Nyv4jSGVhnKf7186ztKxQ5gu/H55TV6KV9OYcsF6CWPqwHw+yLG6ZdIWrGqteVtvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724333754; c=relaxed/simple;
	bh=rIAGXswNFOnsrlSvodw0kT12dJXc9wwdLcJ7AlRBjJY=;
	h=To:Subject:From:Message-Id:Date; b=AN1g1SzlC63rctkDEhvIbqdL74B65YBcDMveQ0XmqhSlKpOhi62gJ57+KHOyEFJs3TenX5nAq5g4JtUfFQmIgtPjUmXoyii2/H2FUgWiD3oBamUEMZvzfpCeoEWs7K7zalOGBCt9K93P6Jc1SiQhFxE/Dc+UXz8RFqTR8WevjWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgs76/Ct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgs76/Ct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EFAC4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724333753;
	bh=rIAGXswNFOnsrlSvodw0kT12dJXc9wwdLcJ7AlRBjJY=;
	h=To:Subject:From:Date:From;
	b=kgs76/CtCPQmv7qPHMi2yS4ylSqvUO6vNyxNfIlkJX0pUcu4gH3upkoGqUI9S5usA
	 NOoA3BE0mjswdbXVmlEQ1zWYL76feB5D/HNL5lGQNUUQfsrAG6vhobzHM5HF9dTpnZ
	 4lYw5CHQ7sWor0qoTBugzo9swyl40FK0VnZUIrfA9oyxTEuxl1SXCSfROsIWVm2fQy
	 Q27Aom5+IaStEKbxKLGqKNqyAmKqP0WlWSj9z811QPz3D9THTIbXi1nrenmzaCZxef
	 GHh7uV0hukHrCAdVBYKIMO8fbcvhoPrcuMhXRqcOTEDHCT68PuBwZ1aVZ8FuhyOWeV
	 kF+hSzpzOnmXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF54C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172433375363.8576.12752002281293912393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23392167f1b4aca781a618750c9d123b8e7606a701c1d77ea2fe0497d79addee
Date: Thu, 22 Aug 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724333753
