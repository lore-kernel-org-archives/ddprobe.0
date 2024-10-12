Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B0422334
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728728154; cv=none; b=CnbgWPS4dGdHB8MBPO6zje+KfbPEEXQaXTd1wLj6mHgVw1DS9R00z0l8UQZgJzonfASp1NCChkAAtLIZYBusXLMS1MsoS2ZaGL4PoCcTWHQp78gVag71k3UT3zR7wPmFST/E0vJ1rxS9HYCF1bBpvM6syBQiPyWS417cHIU2+xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728728154; c=relaxed/simple;
	bh=vV5w1YNUnZNMKobfSy+M6KVP1WJMHDACZQaeTotERDA=;
	h=To:Subject:From:Message-Id:Date; b=FaFLU3UKa/5SY7vImjoxFGpB69rm32aaZlzVijfFK19HMQ6OsFVXoaEGoAoxrZ7pqPoUVokdoMWrs47YCCMRzAoeAMNhKZ4Dii58lparcyFz2uMt8SG4Jp2w5QEqrjpKm1GuKIAaZ5WTqNkfsc33ggLukNzUrDY5FZVodOsMwbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4wNCyWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4wNCyWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD8AC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728728153;
	bh=vV5w1YNUnZNMKobfSy+M6KVP1WJMHDACZQaeTotERDA=;
	h=To:Subject:From:Date:From;
	b=X4wNCyWedMdUp/noi8x/FC9B1djECLd0Dho2oMRvX1E6AR5SOzLHR44x2JR+WXfWT
	 UuvOrIDR2qFfGVfhCmnwG9Go2p138hgXzsaHx7wubN9Puii5SFBXyU1wlBgRkOlDcA
	 H/4Cmk6SeLsxMlM7pH7HzhsIx1iGYXHxrnPXGexUjCydkf1HYWKSv0WJcOGCtzjdch
	 xYou8UKhrIQWPsxxM/Gjaifh1nxTw04TYbVhcYk6gt9ktcmmolUWZ1pitay1KD6U0j
	 h2POkjXbWM1TKAVCJ0Ww7rj9Ddytwz6BDw9Em+htoL0tTOUU2d6MjqgdRLBaoJCtCa
	 o6HuVajhYE2fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDE7CF2560
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872815362.30389.17999337197316533427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db1f84fddd3660452c95580866c4db5170a581e3418948575dabf4b5117c0d7
Date: Sat, 12 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728728153
