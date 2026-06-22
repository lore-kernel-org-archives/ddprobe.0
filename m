Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8FC36607D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782122794; cv=none; b=QJznEVcWcScvUIfiuJqr+FELzDyFhIB68VkAIu8tVgPExBFEhUuGcpmyMW36iEUmVuyxtMHX6O/60ZVjFwNF9lcKuNgp8YNaXQPr2w1ClP+QJssdozDtNcyqM3Vtdqy5F3cHYNX0npkQTPKpUiZHbv5I4WMkwM+SIRGOcjO2ckA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782122794; c=relaxed/simple;
	bh=k8wm1JClV3WfzXcLH8axGKkfB1r8bBYAva1o/VcvpyE=;
	h=To:Subject:From:Message-Id:Date; b=cDwQ+Cn1AcfMzd1glD93HjelyEqt2gjXrMZAaFVPIvgUrIlY/rc+refxxCRodsW0pg1RvN8Qkeoe3VtFXkVkR2c0WgrHjRWSrmoy1Oevfig+NBbZeVnps0jWqMXKw1eF0An3S9Nci39+NfXy1d2ygvCa/fg+jhPkL7iJplEKWhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAdJf08w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAdJf08w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8814C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782122793;
	bh=k8wm1JClV3WfzXcLH8axGKkfB1r8bBYAva1o/VcvpyE=;
	h=To:Subject:From:Date:From;
	b=RAdJf08wuY2ScSxqOD9NTEodDkQl65m5Ps4wPWo44Qrln8Jg1L3Afxy1WTx6njvmw
	 rMqCdEr9OQSrqrZxPsgoaWcJguDFdzICr3PoLa7StUcjSUjWxrgT8EK81Cnhz4M0u/
	 YJFeivUG8dTxjtCugNX84k5YYRcx5MtsuVBRf+oGy6mZh2WpARR7ybQ/s9vHTMDYHX
	 DnLuMP3aqAAdFM64nL2iSTw+1h79aFPCWUNV+nnj4jJrbIptdmIdyZDaM06vbrZoRS
	 zwLPHoEMdESDQ2CKYjZ+e3wEAHi3E4qUlJjTalrXwGvbEwmQ75T+v5a2cKkfpdF3X7
	 9oMEQrOGFzRMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7A5CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212279369.20092.9355866330073724632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89517cfc3937de577ddf15b753185537e71e90d5e8b6d8683c4d45dbc364889d
Date: Mon, 22 Jun 2026 10:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782122793
