Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C928BE8
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 06:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713507563; cv=none; b=G+UbkRpoIVYE8+QIME7arMyWrIcBECso3GoCKpGB5deGXlr5t4Nlsffnwut2s9izfczBLAfZ6ptaXmN9My6677pGDcdOR9+iOJ6koZbijDbrFHb9W8QnyWY5qAZ1Bf1EEHO0vWk9r88QMjpgHvx0zdwXJhdROO5JcJvICzSePJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713507563; c=relaxed/simple;
	bh=27i7vl5egpGYfeuuKIZE9F8aygezqnYhaEDlPB//bzc=;
	h=To:Subject:From:Message-Id:Date; b=Xp3TsewKgGkYgGAir7uFnm1z3x1cBhsMxoBheE9+NcdU2+cOgyQY1b1nE2oswnqr8rXAWfVZS2/ncI7xvY5sH5yv2Cz424rUiGb06qSk0r58xeKiFfWgembKlulWTPpoL4/eEO8bMOOP5EmY0SiWaCL9jE+cvhPEh+cfC1nu/4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5m5tHYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5m5tHYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77F9C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 06:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713507562;
	bh=27i7vl5egpGYfeuuKIZE9F8aygezqnYhaEDlPB//bzc=;
	h=To:Subject:From:Date:From;
	b=m5m5tHYKYR4Qd7CntwBF5xTTMIw4iVQbuygT/FhlYMh4LzZ9QD4FWw+Gl0E5MlJuT
	 FSz5ouGaHKO4aD9cIH7SZfs7jB/Vz3k4DuRW+oqLgmBNq29qDz4fv7sKEzDdL2rc15
	 uhbcb60ixU9mI4mqUQ5MtOBSHozLNtpugVp1Ay4LAB32fx/pZFgdZ1snhaFKYR8iyb
	 hk+UqVoL5p/a1DMxc1WjNOOUNXcm/mwnfbQESS/6lgncyvXFivri0h5x3Ro4iXtcLX
	 VkT3MBFPfmVorJOhnbdOk3JlBSzauGUNO+2F7i3wNsfsLRnGhZIeu5+pOqW76UHzXc
	 gtO87yVHn7oxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C197DC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 06:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171350756278.22335.9592039432695258656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac824125f6940067191bdd05aca1aa7c027c5182486f7e7a0e1931739dbe3717
Date: Fri, 19 Apr 2024 06:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713507562
