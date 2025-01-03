Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319D01E517
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735907754; cv=none; b=FqNLGhd2FhCGwVTxcjiXtlUwjxFd8vGUlgUHIzxp7jKSYTJBs9buL4fQqO6IZyfsBUtb6+KMNCO7kmc2SC+FdpncWTTl6O9OW6FQCwGs1J4rJR/fLETAwsTtQ7M2v6l9VWTY4lLdv8Sbh7b+ZWkf8Mic/CYgtHGX/zyU+tOsGI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735907754; c=relaxed/simple;
	bh=r2FNZC/FsXz351p3CYSNrwtQjXEqx8sJwuoJ9F4CVLE=;
	h=To:Subject:From:Message-Id:Date; b=SAPyRBVTwQyJ3RC/S4OBRH5wfINv0W2oFN8/cDltX8TZ/OTrbn5JXDunQWaVYk7WXKwo8//8Jfd2H3vLyE2Tv5P/BMbHqYv2Dwp3uL0ldWOx5TMUghS7OSETAhsF496tLLcO0zjuAyZ9jo0XlvtDOxRM/tdoHkDuxKU6h8ezQ6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLSdIvwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLSdIvwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0354C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735907753;
	bh=r2FNZC/FsXz351p3CYSNrwtQjXEqx8sJwuoJ9F4CVLE=;
	h=To:Subject:From:Date:From;
	b=hLSdIvwQNJccv/TjM1sAz2VIAQZgkB1WdbqQzDIgrl8sMN0YjXTZmXqNI6lW12Eca
	 9+g6G0AMch6NxaKxPOAdbAvKPDQp34ip0H68rv23UCNMqUdwYS0oWFysxlhqyr8PnO
	 aZ0nyDaLFTACox4PCcHZrrE6NnYGfrOqkdty7G0zHz/BB44gns+iViU81m3bRPqAjB
	 iMRXiZtTswTImJin5MsdwSDPSrTF10i2VNIa0CACyzeR824MXHNWzElYAtvDfPhMtu
	 k+9NeFupZHVa8gWl0jLGSgzwk+eIhf7b2Y7ppJOso5WpPAJDWkq/Vbh7gwZmaNhZRn
	 2AKM1rmKDX8Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91545E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173590775358.9608.9982381272819705206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf5852cc66a802fffa2c13a38c44dcadc1c7da7387f8320f9359a068bbbe04e
Date: Fri, 03 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735907753
