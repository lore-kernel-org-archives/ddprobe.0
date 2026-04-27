Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082A137B019
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777301854; cv=none; b=bVzGHIky4xkvW4BY7pFLqIFOWBcevaSC2XyX/Ed8k6Sni9v3uJCQI2C/2lwEewKPu8Q3Nw/NFX6zy9NOmEOOAoZqD1KXxK12UsKFYzBOyBAJ5bCf4a56xqttRF5CPvz/f0eY0pCTTafdoqpN9w4LM0TEjt0a6r36f3HUUoV/CYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777301854; c=relaxed/simple;
	bh=Bp23DQh+HRHffOMfd7m+PH4ap6661BVQ9MFIIxDTLJ8=;
	h=To:Subject:From:Message-Id:Date; b=TcOhBzK2NHik2Vkpl+XcUWJAoquPwUWRO11QZ7oGOu2xC9uD6wWp4UXa4Yz2+RClatFx0EMqmKt1VfS4cgevAJgPLNM9NaZXdF3uf8+Zg9zHYJxioomgc1r5T/kfLTqSIeXMgZDRvG77ANcu/RA9/DLgf3JkmA5Q2aVbsxFq/5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D45dk9s3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D45dk9s3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CC7C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777301853;
	bh=Bp23DQh+HRHffOMfd7m+PH4ap6661BVQ9MFIIxDTLJ8=;
	h=To:Subject:From:Date:From;
	b=D45dk9s31QleUwcUwvXdOs5SQL3+Vj0iTNASXKtQFvPTqHmYdqnZhQ5QrXzRBp1we
	 L/RvJDDWO6RjX1+GsTcCm44kP3JZpBhZPHIlhKbMDV1HVx+lhCHebYQmbK+3XhcJ7/
	 L82mKE/Dy/HpgiBfrK4OymLq49Z6vKLrLnVg7E8g5spS+/1K7VZb+SQkOPLTF16/JA
	 IhUW/vTQXdM7hIPzUkJL2hgNAXIR2BnMHaeEvP94o4DjI+/rUYZDYRkgv5jXT8W5M9
	 XHMdG5NzYC+ModA366EAMZD4yJaU8JOI1UV0LBbfCIWUMWwtZZJPebyfdegeGRChyL
	 1LvZkXzHgMceA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97EFFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730185368.13398.4313869619699763494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d761bf89b6c2bada041284001ed550ea0a8c88d1c7d2732e03bbd9e81999fd42
Date: Mon, 27 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777301853
