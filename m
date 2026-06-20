Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDBF392C28
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781963194; cv=none; b=X7Zx89wZTODI7qM4XLX2AdCODkjgk3JCw+XtEu6fXGMa7fDvKr1kuYCFHP2LDi3+LadI2AoH+L4BnpScjBGO5E3/VsCntY5Y6Zop5zLEl9EJlC81NvFKhgc1YoEcDLJlJVwiEqBBFJ+C0UtlKsMz3Ljt4PLEzKgmN2qmabPanOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781963194; c=relaxed/simple;
	bh=+oslwyVP8EaZuERqn4ZCVrQi8enLK2IBYI2433bo9MI=;
	h=To:Subject:From:Message-Id:Date; b=pzPwWedKTqaQM/JV+dzoQSfNAxG+Nt3aoruIVsqy05FEu83WsC/qzKWXrBQUA8BJtOVNcUtVh3wRuWNEumCs6+zP9vRsbJqsim0T5Y9cfWgOLp1uArQvea2d+QKLUMeCasMalpNmHlOErZ0iFM3fkvs0fyhf24X7mxH6jzxIu5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rf1UZqa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rf1UZqa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD271C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781963193;
	bh=+oslwyVP8EaZuERqn4ZCVrQi8enLK2IBYI2433bo9MI=;
	h=To:Subject:From:Date:From;
	b=rf1UZqa5JBf6z5Xf1tzYj/JjK6/D2zRz8EKdQeLb74q/hQ1yOgdqiaUt2VHXl0HY3
	 /RP6dk50jZOwrrpI+7INxLGqedHQm21OZy4qKa67pbz2U3qHXBmTfg0XH3Np/4dcza
	 ZTXlRCxBr2wxUhtFfF0JJloVYVXxi5oEO4ONuzmCkRUXsEy+XDrPkDI1ZkTLL+Lm7s
	 RWIR+AZnmMVDYxjiz9YYK4yO0ueGqWqZ42Qx4AzRSWZT8YALFp8/MrbUB1o5l7UjWo
	 adFZxtiMB//XLebFxFMCaeB8xQm+y513oCQ+492xkSZYtZujFFFJ7e36fSRLPPtJok
	 sDDZsTzJhJlgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF368CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196319370.6906.5667064869366372473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c5b0bdbabe14c9112cb7db71f73d995ac60ed3e0f09d53092adcdb87e5cdb5
Date: Sat, 20 Jun 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781963193
