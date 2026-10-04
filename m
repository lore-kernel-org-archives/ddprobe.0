Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C67395AE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791126034; cv=none; b=Ge0IL39letWmTl5AL3buXVClp0zR6L16aoOEJzk7Xuhe3SFT/NjZiLv+svFX22fI4MYd8oLYIAQKuf3j1fpRZPwBVAFw5CEpXLzpp45WCVa0eS1R7WFGW4MWzXi53oAlNCuMFXjimAng6ijMAJQ7JexaRHbM+c7zMRYpN/J0CbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791126034; c=relaxed/simple;
	bh=9cVCPQwBhDUOKkJ9Vk5HV4RCGQ+Ebb12revXooNzaWo=;
	h=To:Subject:From:Message-Id:Date; b=RVCa4JvrXTfpTLb4xsuuCtkQobUfEkE6LwZ0j6mxgpxi3vXT6Y0fedClpZivZdp+5rvUWiHJKAivhMeYzfTn57EwUZCcBsoCEExkfC0HSH0gC67Puv3DCsb2CCNovDojL/c0lPoIrvdOTPaJytexZsUDnsepOycmDcUkLN8ikAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMIg8w1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMIg8w1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB329C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791126033;
	bh=9cVCPQwBhDUOKkJ9Vk5HV4RCGQ+Ebb12revXooNzaWo=;
	h=To:Subject:From:Date:From;
	b=vMIg8w1fFbhQ2l/AZqNg/uDEn9UCYl4Wtw/h5g3CjKBF7tp4j5fx+ej3vFBnDhbJ6
	 fGBIiKgFLeNClEr5O1ReWlvIVG0X2g2jUkW7OotStnIWztLqF+l7h30DBsTNQR3VXl
	 aY3ZM0M24oIMm+vShxjs7m9o1HvJauQV4c37DpmnY5lx1IsRQWJWgzo+dFs8xV26f+
	 Rn3WgeebI/GDmkkfQz/KFA2jBS3QZd7JDAmUwxNZO0w2c9FUI9p0quLZxgP+NI/W3+
	 M+ELL91Ywo8eKipKm83kC3ll/VndVQyz72MO6QA/fFN8agu9wM+976jJkmOLKlcvJ4
	 jJH6GaR8ntZXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9206CA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112603368.9156.2364660982705068663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd2594935e7d505711fb275ee7caadbbfd8c26b6f68e765b275e837494d2911
Date: Sun, 04 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791126033
