Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD933D75CF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776164854; cv=none; b=I1Ya49MS3vQ5fKDYuezCk1GXcXCXOS/71tR0KeSBWM4uPs1Tn3P7/thXy1OvGVN0M9IzVXZ07JKr5jMb+oh5fhw4pdd/AfTpPwsRnMXoIZrdDiXuODNO1ZxT611UKLxNTSskq3aLhWQlxtJgeiBu9xN8UJ6/yb2+I3ahB2EydsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776164854; c=relaxed/simple;
	bh=VfZ+rj+RvUk9fCokixPsiA8heR/Sm9SInFbXSNN9iDE=;
	h=To:Subject:From:Message-Id:Date; b=tI1ySnYfeVuyVekWvfWgsCc0dMzceYgCil4qJVibImH/Pv32h7rVw4uXqOaTNi8sYiHgSWqeKWHYhIcZQAAiHeYvH4UL+gLLcDLFFE7feP5yn+M4p8j0Sma7qotrJ9An2vP8cSIPlpeNqvS+AniQAjTY2iAEsrOh9pA9M9evH5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kgk8wQSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kgk8wQSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB08C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776164853;
	bh=VfZ+rj+RvUk9fCokixPsiA8heR/Sm9SInFbXSNN9iDE=;
	h=To:Subject:From:Date:From;
	b=Kgk8wQSp/pfjySdAsKktre9bYwJL+Jqzajjp0wqN0n+bgBWkEFILIQ8aH0RnqgY/b
	 aZuNJ76iN+610AHa9qAN3lQIY0TMdtVOgZYkJDLxCBw1frcKoUiT9FpY5y7fHH6F80
	 iC0VHcZBKD5oxyzAHFpWx66CE/PU4Oi3BTfLtuLDJPQMRalhbe6zbgFwc4bN2JW2vV
	 BjVZUv/DfktTqiAlY4UZsXfItKzu11L6lgXcJRDubeXFaOUmQCI5jb5CR0Qi51cgiE
	 fs9Fc2TN9P8uSpM0LB2g8iPYXSFY4kikNANOyLsq1ODa6P4dxd52ubcXGg8Yez5hSx
	 XZg4bEwOqMXdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DC5F531DE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616485368.21673.18366052157247986601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373e08b5390c3e1d14b3b22a8c03af9711cca992c465bdb047233c1ce0ee8d37
Date: Tue, 14 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776164853
