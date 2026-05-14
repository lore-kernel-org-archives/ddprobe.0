Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFAD3F4135
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778736634; cv=none; b=MAIMPkRZrYKizrFpV98bs6lZv4tzbeG0NbUMqrXZD+jnH6WC9OchylQkvsXrqNzRSwYtvJt9Vvo78NmXs3dNomam2XfMdFuaA4K/WOUxrwE9VxIoZu73nlxYbvYf1oqvICcPN6k+DgyABghUg3Uttt99kDHqeFGDmNHTWvIHLek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778736634; c=relaxed/simple;
	bh=JTcoURo9OGIZcbb2omVNo1ewioUpiYYumTFe8mf10w4=;
	h=To:Subject:From:Message-Id:Date; b=RxPaEP6ysVi/jWsDCp0jN2qLDSK4EoPDdJ63x/TyPZUsskqPXvH3Rp4o8cpU5jXi9gXda1U/u8FM9pLM8vGm/F/k/KDTt8XlQBJPjvY+zXmuhfKZnNPdKkTrxjQoAQhTQWfPDkp47AMZ2Mc4tKJaz1ddB+9YBxvE4gxjy4dRTbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/zrPIRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/zrPIRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9842C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778736633;
	bh=JTcoURo9OGIZcbb2omVNo1ewioUpiYYumTFe8mf10w4=;
	h=To:Subject:From:Date:From;
	b=t/zrPIRvtXSP2U/Mzp8CyU6bqGUUhnZOVcs+GqtnqMQPlrni8U5AnDB5PdAvs9VE/
	 kiBsjTA0NRc9SOE5YzwtcEbJ/yHR3346JGa3LmoVywxZOWcDu/zu1cMmg8kOjmLodG
	 2m3Rs2urujiMyyLrEpEtrMI5soysy1swA8CwdoJB9xBZhNOtkgrxlv7IkLXs6GnOow
	 YWuJkIVBB3GEkfpiKQw0kfukkHG/1EO5FjcGGEtQ5vY61erzPr9e/8rd+m9nSbVxUH
	 HkmNoCj573638hims8kmBdfNFRLFgK0MOiU2qWyAQjRX/Xzqn+Fa15qlwKtzD5CLwE
	 Xl+R0qcH5vv1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB334CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873663369.14298.15487409752959145043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4169395e53a72f1c956d5697bc94dc8e394f68a887c1665072ca12a756afeb76
Date: Thu, 14 May 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778736633
