Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499603BB669
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791651034; cv=none; b=pCennO3FfYw2Zv3JC8SwKDZCToAcMRKi5XZLKY27wCrIKJ4L+sNZbx4Z60CsGQjYMN/odH3kwkKUd6T8BQXh2HtR+QTb4FqVd5PW1Xc5QjrhFDENlZoO5ZvHktzWgrI14jXLGvxqiNTTsgvCG3sX4IjteJbeS/2jTgJ9qIxTYbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791651034; c=relaxed/simple;
	bh=cQSGfocSkDcN10eqoiKqG41XUICy1YeffcxKN2Z2bQU=;
	h=To:Subject:From:Message-Id:Date; b=d1OcXPGGHuX8gNWRPgLDJ3RrhpP99vm1u263Dr01BqkZzoH/CSiiTOKjC+SauVKKABQRdEQ2sMjhLCAYJeOquWuRSNKoEQvrd/nyIdnWI+qMuYoTG6Iun9r7pPxIXeSfRVhLyXsLQc7ORZRBuoZNniBpS0NZrB1dax8CQbNVfAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3CuxSMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3CuxSMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F6DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791651033;
	bh=cQSGfocSkDcN10eqoiKqG41XUICy1YeffcxKN2Z2bQU=;
	h=To:Subject:From:Date:From;
	b=a3CuxSMpVD46ia5SgMP9Faj0sRfnzkIUpgmgxdR+5+EOFiYb6iQD/kPXO8m4dcpaG
	 uC2jFZqtWRj7KSdZF+OwhKSXTFnjArVqGEfRt+rVqLXZzRiZH/YHfr1cMcM2b4AvWF
	 G3QejypUKxUP1LGGN1CwWhIzSHx1+cM4GGgE9D0sRYKI1OS8VF00InwlQdDyRAb+Qv
	 5AFSUNnZk1su7gOv5zCDkHYA0wkRuoSfwsCtPPRvmHA4ZC2yHR3f8wE+jS0ig781DN
	 a5CO/F3rfJ4hcdsQoVM5AodZauWaRAUc6Ff8L3uYE503N4RoDIcZDHno8Ijylwx2Of
	 IwG/DWSrLjC8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDBACA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165103368.8009.8093516392247057857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f111707e18ea4d0bc5dc1fc15e97b4dbf8bef4527d15908183586adbbb3b7c2
Date: Sat, 10 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791651033
