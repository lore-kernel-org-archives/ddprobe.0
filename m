Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC5C3D6463
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778518234; cv=none; b=JwwHL6BoF6yKLiM9WnR3LcedeUot+eG4xdYzdgE6iaHkjGbeWgQ8RBW0D6A9N3MjarkGjXmP6rNOGhrACClq4/eXKInkJ5/tt745HHp/Xj7wLyPN5z5GJ8Esg+hpg4BkVQwFUW7fDR7X5QiFC7AogeCZJMLeMO4sRnbdH+J1TEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778518234; c=relaxed/simple;
	bh=40PJ8T5Ev3v8uIip4NvA6AVOMl6iK4Um0dXI0t0bh5U=;
	h=To:Subject:From:Message-Id:Date; b=uUAYAMRKjB2Q1/mdGYomFvczOB7RJ9moWVSvw+c1U6Y8NhO0oB+JZ0Da/dCovNoTkglo7HKHmNmJSGTw1xyqKFETeohgP/6GvteyyeOyCBhxVVDRwhidOfinPjnJpGjslwIEnp4erhKiz6if7WnzmGU5AzyLtpV/vQpTyFLMsLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6OmsWQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6OmsWQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55DBC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778518233;
	bh=40PJ8T5Ev3v8uIip4NvA6AVOMl6iK4Um0dXI0t0bh5U=;
	h=To:Subject:From:Date:From;
	b=g6OmsWQQqcUq0/Z191hAVhzUqnPibtNVhN2ooG/LOZVsap8tIUMomzcqJumc4rY9V
	 r6tfqGFIZAIXIlvcppfeCnDTjA8qSUu07+xqRKTGz+9jyEeguaU4OpHpkPZLIfxYkK
	 E2fUg+5RQYpOm0voTbDLe1k6Jpm+DyaFSW9iR72F1kD69UrxZ1IQi6fsyIsojv5PHr
	 AcTEJgGCWfgY/1q/UzujhUVyhTIWJSEPk0GWE01Kayw/Q+5K+DkCZJJDflakHZL4wp
	 q2oNWFByHjLrSJHCVipowiLKWzvCDPHXgKnF379JoG/TrEx0UZyHm1S+b9DrkuCRmw
	 n3QoPYHFNA74g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5895CD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851823370.15426.6410620356305951585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af86b1e3a50e3d9700d45ee42e4a687d93602dcbbeb3af4b4ce3fef3e56d6974
Date: Mon, 11 May 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778518233
