Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA41A23
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727827554; cv=none; b=im92eQMvNKLdhpGz8P/58naE25JT1ure5/oSPP74Y9uP9K/GArTpvTiNgHQB6IpmtOasdiXtXMeGsYi2BBbL0xYUk3h/j/jbLHnTAYIrSvZYIbaN4xUbJu1/K7dlGcmZI2ZmFnnjs9wBK/txLGT9RJTgbWK+N4C+rSRMOqCgcik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727827554; c=relaxed/simple;
	bh=ifd89lvXXzU2hvMOJhSTCTJQC1fvXM6V15auPghBjpM=;
	h=To:Subject:From:Message-Id:Date; b=LZDsc9qZ6htISxjZJp1zgH3++DMovTUgOrpJf9AqKSeezKvHvITiOySRdaCGfDjn9kbuSz5f2Ifb2ekmsP45hMfkl/bROjvX4kZXZTG/RK42XNGPU8Mx4A2FQph0cdQciSLD2cH8eRzFumjFm3kKp6+9JZXfaCAw2NxDd2WObR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyfRIane; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyfRIane"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF14C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727827553;
	bh=ifd89lvXXzU2hvMOJhSTCTJQC1fvXM6V15auPghBjpM=;
	h=To:Subject:From:Date:From;
	b=OyfRIaneFy31HU0rAC7Dl/K0m8cD9pgbv8AAW1vmvUWCnBAeh3o4UHc6Rrl8tbgsW
	 e43Slj2Dqiox4fL8Vt5gA1C/F6qcYBIjLoQBoTZ+7921mqGrAGvNYSJaxHqM4/gx8C
	 u3C8cPPDYFWyMTPOulOMYYEwOmuGGCggo10qJ1mMM9DP+EL7rcpIg20rFe3qq0LUAb
	 p8N0CCgYBzrWlwUWT8fGalf1tX/BKbiMy5mH/grrMmCg+OBZb+/EBFkh3En/Jb8goy
	 +2qt1rda7Fn+OtGyoS37R0bYCiILvOdpIyfRxg+F728BUI4XzPJIumu6qYZgia8UQm
	 EasEHh3BKJNPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92BCCF3189
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782755365.842.17123786231230418005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237052bef183d80a53fb76e3f4c6fd1fc767c51c80da2fd851526e1f38239df1
Date: Wed, 02 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727827553
