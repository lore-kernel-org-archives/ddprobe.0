Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435B3154C04
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741908534; cv=none; b=ua47NYZKbURwVpEk1Qlcc8seXGLgaCacw1TJr4ZyjMVhPRMYHf5CUmDVYgHJVHkn1BWi1Y6FuhW4RAINGSO5G4TTm2JBJQAriAnP0Yb3iU5vjTjE/5NP1nCaWxta3+GGOwbvBNJtPPAgbSyxhFsXwjHiRLp5pV8XKFxIjsy5yL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741908534; c=relaxed/simple;
	bh=5hlEvlgntWHY8+dVuIC792a5M+QHjh5IlTC/K+gP2IE=;
	h=To:Subject:From:Message-Id:Date; b=NbVmCuLMNifCu9hdkkzf9jPXSnLNbhzqSjzLIXTeoqGBKJXFN7bAMLQTlB+MkKk+2ksOS6O/ysxMSPbYJN5mC8bVMjJV4fQ5eKuXZN5NGTqkrfLNFtFMcvJNxhtf++R5Cr01u4dnGWvrigpAwOhnaJXH9DWpUTYBL8Uaoqpd2vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EffrgJRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EffrgJRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2727C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741908533;
	bh=5hlEvlgntWHY8+dVuIC792a5M+QHjh5IlTC/K+gP2IE=;
	h=To:Subject:From:Date:From;
	b=EffrgJRLszwf31e4n8xoCUMraGhDcjApgGOE9zSWads1ZFd3b+faWn4rcPtmuYr8i
	 Obw+iaBUCnc4f0vdrNnqNvdfGigjLko9Mlq1XUB91jJM/ud7SWRsGxBwBp/Oc1J71W
	 UJfzaEFHTbXazys9ANu5uznv1P6Vgv/Y4+CvxSm414MMchDUfQ96uPn+qZPi6A9QNv
	 43hPMEl1+SB3pG7em4x8ohC56VsVfrzaIT90z+vjpRcrvKe+JIGWqeDDsBFGkPDFsd
	 HNxqeHy5jCHX/kjTW2figLQB1wjD23r0WZhOizukwVE/r4m0PSDUKhSAsr56ef3fx9
	 NV+fmWIz+dztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0609C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190853362.11726.11747653618999703933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea00c07528624baa4da9758444ce6bcf9710f7dc3f3617e19342ea8914773cda
Date: Thu, 13 Mar 2025 23:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741908533
