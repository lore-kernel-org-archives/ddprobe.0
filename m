Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536733BAD8B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784188714; cv=none; b=jng8HJyU6oGnd+0gWbPqsxzV6c4K02DHJETUtbyf+p+TvLsSOUHp58fidGpOF6itScN9AZtZcvrBhLoMQfO8S3kQF0VQAzZgGDA8k0ALoajUPFdIkGtV0zeUJU++f8FVic0m0YhjX4QPbqwZ21Jt/fvaVihTSlbGiAfwdC+qXBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784188714; c=relaxed/simple;
	bh=YPZ7or5GeTP0Du0WRGVu56ICSIk4QbCvVjhROAM5MoU=;
	h=To:Subject:From:Message-Id:Date; b=injYj/LulwffoTem2T0aRrhuYaanKpI3gYTgU5Rb4HMldegMnySY1ROt1CEyDR7QspxEoz37qtl+CpoUkQbPxIT3Nu39yRrRx9+42rdyB4Vs59J7V/n+fms0QEKvwkqscpZa4iHuwgRQe8vi0OPmB0kcPmCR1LAMbAkpZpjhKHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETlee6ct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETlee6ct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FDBC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784188713;
	bh=YPZ7or5GeTP0Du0WRGVu56ICSIk4QbCvVjhROAM5MoU=;
	h=To:Subject:From:Date:From;
	b=ETlee6ctoxQbYh+5odwmx1l6KLdD60xvUVBWB0VOmhD/eAGQA7xXa2oGNjXBTmY8G
	 cZsO68Y6AliAUdrFEa8hrdpMmlFD5jzJs/nJhr4BjvaqFEZhQa7mKiSLRO/S6EgPPe
	 lkkTKmaN2N2sjGscCBvwW+Z5J5pybxYxE32EYH5AZ/26d3Cmi4+rtSHW/uidtr5Srk
	 +iqhBKjeZA27qT5Z6cRK/YKLSYDjloLn40vtna0RgBcVX1is6z6wgWtQbS/U1UMj8Z
	 O+dccM5M18RkZiH0Xr3aJHeULF2T91k2VllkXgucmqGqTwwali/L8qSczDIaRCvfff
	 gydX6Z4nYurBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D20C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418871368.3638.1803910807439688387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc77a934f4ec4709e3a0cc5fbfffb391e756692caf35b3c4bed8e3170777d52
Date: Thu, 16 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784188713
