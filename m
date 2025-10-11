Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B8315A848
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760217594; cv=none; b=b1uX43PLmpMTRLaaQvKZkhZRNEAhGEFvwjGp4Za7xpDMvrzXynlEot/oIZH9tzKYS+aWkkHQ/7Qtm2FMucm8ZWVxsydyZxw9eulxAc6A7YNXN5Qu9PFTH1GX+ZWuiEQIzpt5xDz/Rn6j4uCjbCIA/be065H6/dH7Gd4/UqgVbd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760217594; c=relaxed/simple;
	bh=+SqjWNT/vLsKAkQERiSRAoVaZWNbVzQC+Jv7daavr+c=;
	h=To:Subject:From:Message-Id:Date; b=Zwd1UwR4XoVjpYtDSnvVMpDOscmOF1Fm9lAJPfr9veL8zjDLpntCdNnTW3fWZ1wPSq2/q1Bqd3k+04GTwCLQ1c4mxsSRncO+tZn76bpZuoF2/K3t9Cuzjml21ps00xyH9aNb5i6VHZOg3ov7OfNqORCJ0+G3WrR9RZ+wyNXSrJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrarEP9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrarEP9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2774C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760217593;
	bh=+SqjWNT/vLsKAkQERiSRAoVaZWNbVzQC+Jv7daavr+c=;
	h=To:Subject:From:Date:From;
	b=SrarEP9yAE/7lG0bGz9u6tXpJgtdQb82KNh8tUl5Sz30W1ssHZUpDXvo7KWP3hw+L
	 7sz7Nac8fPuNkckKXemR/eUxUzZ2T90iwrvNnAxBeUb5dS+ioYeJn/msMySRC6tAg8
	 LBArJKdzXef1BiB+JwfCcEAO0ehyJbwg7KoUxULHPgci5MgYazlF5Ac0AlJoRhKeJ2
	 hRGkJWw+7Sj2aZWb8hlFN13w9mV8Yp3uJ4/cKlf5q1YOcL0uEGaGbRWwtFzKru6Fi5
	 RPNZvthBNlq5o9X6+f595fvTbCtHSQEBWhsWYJfhGQFcFK6g/6zXrG/zUc4NnHxdD2
	 vOm32BMuwVuNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91264CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021759358.1694.7719080069130810022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad04954a16f9f846243a96c9a2cd5e6ccc5f9c134485ab2c849f0a33cc29d47
Date: Sat, 11 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760217593
