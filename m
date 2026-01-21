Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0BA30DD34
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769014434; cv=none; b=SI7nPdx/DWbKyY6ykGiOmjc6NIV655SBVK7uk6A9McVNNmqFhVFmfXDP3xvHA69LO2AOskoLX7vf2EEetkn1vGmvp66yXzDno8C14xAhFNp0lJNT8bF8q4oxxyALhbJtgAYvFFEPkWQPSJZsy8VTcQgDc/LuEB/XOPl8D+7KOQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769014434; c=relaxed/simple;
	bh=wXUrc1ZPaKWr8cuItkosArUR+zLm4YB42w8S5VTPVvk=;
	h=To:Subject:From:Message-Id:Date; b=ZbHDxAKg9Ief0mx3wt+KTUJDymM8pDmv3hQd8Qf5fTxo7GgsCIEdrrc0r2kk+StQLBCSnsP0PeukaiZign+N7PT8tVymneCLCy0Isx1bXYEOd2npLfy5h2qZcFN14h0vbizDTjSI9oGBOATDcu0k6QZbGsdCQ0ydvL6cikJaiXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTqdrPHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTqdrPHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11ECC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769014433;
	bh=wXUrc1ZPaKWr8cuItkosArUR+zLm4YB42w8S5VTPVvk=;
	h=To:Subject:From:Date:From;
	b=fTqdrPHBeRHThX10dcrI5BwHzPfYOn/ThJrA5NMzT87bJMEvq4XKvGyU/6oJRDWEi
	 jSG+M8a7rhtuVCDa3iXlFz9KjcmNs6lq/wy7AYAQY5CkOiAjWxp5v0Ax/SoK7T5x9M
	 ISFo/Ct6cSa+bap/c90XjmHDRqrW7ruan+TRT7ySITSm8oks9r0HhgfrdAP/+9MSVM
	 qJiG4KXHPuU2eliUIxV1tCzhLz7H/4oXR/FOS8NZHeavpgm8nrwMndt50rJrfwoQEY
	 6iIwiXHOYG1AsfkiWJL9atH3TWhlo78IlNTzY1rJVoiVAFL0E+lpkNdpfJoyPRBkSe
	 4rE0u0IhKByFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90572C44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901443358.32111.16442640371791712653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e560c06a6f2f23a95f0ddcd29eadfad78a66fd864332f076b3de5a74836124
Date: Wed, 21 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769014433
