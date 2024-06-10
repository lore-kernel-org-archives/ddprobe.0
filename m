Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A491DFF7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718036243; cv=none; b=I72n2OGk5dr5hGpImvtQLs5VQn7dJfaJmFw5KAo23u9xaAK2/BOufk8zQyLRJFqeN5Z1tHmUz/xj97iRXeBxVm4oS6HrCJLRBtav48+wJDxYY+wTXZ+L2V+8uufhv6oEYpOgz6F6vYuAksNSx9vOtg/bM3SmIyfywPjHj3XKdHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718036243; c=relaxed/simple;
	bh=k1FrrHtOapzn2B45PUCoIzrH7u6HwFqAx1RpalGBbwk=;
	h=To:Subject:From:Message-Id:Date; b=oroHuUnfCEz0m/CwLuff2YhONS90IYLzZepogm32foF7uHkZ4Nic2cZr16SsRCOBLXI7X7wZkSDveYtKrX3tay0YG05Vb/lmsw+6wdQWkZ7EJPfIXG5/5tEhlPAumGucbKlpjGDW/ok5lvbq+Lto1tiKolGXeHwinfwO5O9KJEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhLKigoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhLKigoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1CE73C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718036243;
	bh=k1FrrHtOapzn2B45PUCoIzrH7u6HwFqAx1RpalGBbwk=;
	h=To:Subject:From:Date:From;
	b=UhLKigoWj50Tdl9agFO7cbYC8klwmD7VdSQwiqc+v2s/81HRDRYVd8ajYv75EhSY5
	 QsJqOGfIBe0T2TIP4/C5++yxOx6xH5Ihk5tyg3Pp5TUDUbD1FvFbXsgqD3371eEcmn
	 cv0P7mns7BeEJB84PjV5quOMoWfVWv3T+BSUW5OpDFy9IaPdwFDCfJYcrvuYDZK1Xf
	 SBpgAVAFooD9gXziLJ9UmtXIoFT3omSPhm9FlzF4g0R2EtXbJhV1icNV4blr+wM11M
	 QasZZdfkoH43pIJ2+4WtbsVxq369o7TTlDBcaWcobrAj38WCPVWklcIKZCA/ZLQquT
	 zIm5//8AsNg5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05B94C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:17:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171803624301.13667.12099374525715589693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: defe7e841b20e41520aa260510b6062fb7384f51580ac53e9d668ad929b8315c
Date: Mon, 10 Jun 2024 16:17:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718036243
