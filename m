Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7129539A
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727832354; cv=none; b=b/cLYbbQPl4KNpLC9ZtELi0Y2vLpwIlHs1MtNUhPuotMrqt+SgxBjDE3oy2IBg/26e6G3Wy8asK745Mc2GQ8MBHuZZhrw0pEAIz+Aiq6bDk6ORXl82pj/z7zFmWm4wb2eVBYxQrNS7/rifbuPww+OUSPlAwpJKi4Px+2n55I3C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727832354; c=relaxed/simple;
	bh=wVQwpXepsuy761qDSLfKXsy3yjyvkubxm8J4zDDsMKA=;
	h=To:Subject:From:Message-Id:Date; b=oWCksNlqFj4sqOrpwAy3+Vq7MH8gU6h2Exavvy0pQDFia2tB8CjYbT2Da+t465ipZnnL8rJQ8QCa6n0DxgWRgqV2o3JtGFYZxFkuS16xIddVYqctTeLGR+5rUfkLsBkrB4/WvcCMHUUt/bzsf/rTwy2B1k4yXKdxWm5axeKAsao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mtm8kXsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mtm8kXsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6589C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727832353;
	bh=wVQwpXepsuy761qDSLfKXsy3yjyvkubxm8J4zDDsMKA=;
	h=To:Subject:From:Date:From;
	b=Mtm8kXsRlRV1l1GH5tBykeNuF/VfVdqCulVQ/rKXqec4yaFapYHLnazHIlFMWV3p+
	 /8XP4RHQLGFD/DuPi6TmXPCRGU/+nsjgSGm6H4pPNeu7/A6KOGGk/ApQrpaPaHlZeW
	 iAZUV+8iBAUaBwZpC92RT1qcgMtKDKhIFmEAinghtlByQTxKF1qw1+pNTg8YZ18k0G
	 jf9GViGYt7aY7tM7bXt4Jqr87jthhm4CRp87kcfGrHmtx2kRXZUz3kiWp1Bub62IiD
	 q/YtmWe3DnnvcEmPCiqSW8ksOqtK4fhylmKOFXgP6D0p7acxUCIGsBvj54jdPfUXwz
	 GuNOPzGzEcYzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4667CF318A
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783235366.30503.12491688631046506135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faeeb4818b6d4b502b82561c29614b86b0ff3a7069545f64036cdf60e041fe2c
Date: Wed, 02 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727832353
