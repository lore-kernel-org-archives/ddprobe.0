Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358CB393DC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789281634; cv=none; b=DPOl3uoBD9pOCITerAtZC2RI52ATxe6kn+H9g9NfOTvR51iiVJhjSHtFVMutw9JSHdhENOAix2bbtbs8x2FfEtmC4ZRzuDkW+hyt/nPGifEh4lnzNXDApO3VVGd502YVz97eilwUI8bemnugCRygR1Cr2UyT5X1dBzLBWSfctHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789281634; c=relaxed/simple;
	bh=pougmru0jqAKMe7QlUQNnj3m1OYuZoepMGQJ1H+J4+8=;
	h=To:Subject:From:Message-Id:Date; b=OdSnMXHGVK0uj+QCHcHD/IN5UYkXo6MVdbWfHAI5c0E7AByp1ONP6hOsl/T+2lZdLZq5adkVeDkMOzsqtPuVzr8ebQBm8bmLebsvIOR84a9zD+p3IJjr2jjse/sAW+zZG3cx8lWePpHGBZiM2KE/9P+4TnlselvCXlxP0iRY5F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BG92BsRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BG92BsRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AB8C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789281633;
	bh=pougmru0jqAKMe7QlUQNnj3m1OYuZoepMGQJ1H+J4+8=;
	h=To:Subject:From:Date:From;
	b=BG92BsRApa23Sp4kgVe6f6HYCUnABisDYVj8qcS7W/IZXzXsJPdJxeKCwZVzd/Vx5
	 85a3hluLijP/QHlLupkYNrZ+k+x3M2jCDF/OXXXAnwtgx1F8ZaMOUlypznu7GIDEy7
	 shgdcuTvzgdfm6KUspSHEqMgXdE8ZJcByokU/plRfrRS4nQKSTlj0K4mdEcRZfz6XL
	 zqnqUxkzXPZxT/TPDTi98RNxOaG+neslZcVfrae325CGEnS7aMepjIL0UZzxcwDi1H
	 hSTroX69aM3GePVgItpd5tAvfPTxsqo+fyQ0zDU+M3XXzew+U7boFdFw7Rc4vCgAbf
	 hFNc2IDIUVRNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1395C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928163369.17851.2913748879220545876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23062b6014f16f10f1163c6b00df5adde3521d5ee7b5380d9fc850932ff3199d
Date: Sun, 13 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789281633
