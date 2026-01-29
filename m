Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3413EBF1C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769681634; cv=none; b=extIIlf7eu+nEK8o1+H97cnRA7Yib9ZB6Zd6BMQ+/sNxnCCRlslkHuaTYm3Ti5NxFFknUsuA8Z/R6IMYKdbq6VH2wsoUwZQD9AiWb5D2g9KTrdVVm+2RouIzMCAY3diAILg2DQZO/fBYWGDHGHVBDKnV9//jj3OhIZEjW7zDY/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769681634; c=relaxed/simple;
	bh=+w98o9dE+856p1b5jiab0aJCPQVPZVljxZrOdrngMcc=;
	h=To:Subject:From:Message-Id:Date; b=jqXCq+i9qm8Bd+O6lF15bsdc401ZdsUBPGvh7yoH9r5pb6xnPioH4upJR2D0FTYUEBFMYVLb5UKQ9DWMaBj/BS3R5dGhqhq0cdRuV4bY8eWKQ5VhQ890JEsuIltkP6JvrW6DfekrLFYg7GZ6nIzD2uJW/2pq5ghm3HcGBn+pvwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDFNKQLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDFNKQLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11F9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769681633;
	bh=+w98o9dE+856p1b5jiab0aJCPQVPZVljxZrOdrngMcc=;
	h=To:Subject:From:Date:From;
	b=lDFNKQLeBNpCnyOibDVGfYUuHLp1Mnr3XougGJnbMQLNCA21SptV2w69iryLOnsj3
	 arVSiSjvtIbzOvC4bNJLXE2VGOkR9JujIdNbK108K5Rk2bBBfpsfsOiWirTph8uAh3
	 yNf5urn40Ot31TzshJFSgKIwMUX6lzxFrxF/LG3j0wF+0RCFi9RdvloeYEaHWh60nm
	 PqJjlo1nhYYDZnfITZNc8heCTlqKtAE7eL6w7I1C+kAdU/5upHr/TB7zwOlc7T47ZZ
	 GnW71ZlPTMXgY2cjNkelBjYJgDH1lkhJsCPX6eD+nr98//DJx7oFC0oOMbN3gR8iKm
	 IuOF32YBcL6Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E8D358EE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968163357.30777.12311931728603888470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0ce9b27d16f33c6abab277f28c2bc1769ef7687c4cc5e107cf3dbfb73df475
Date: Thu, 29 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769681633
