Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E72A17DE36
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768455234; cv=none; b=EoVArKPgq0Ife4QGFrYcovyOl4p5FW6z91B1ro2/UUE37OlaZqhyEhOgPkjLqwK9Oh/v7KdI/6yVTqCxwD607HoJekN/ULzyDDhlvebdtYDRXHy310Xxt4VhL47AI1tDj6vGiAJFslrrkWJPx7bB7/iYAH6rk0jD5Y5LlAgupgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768455234; c=relaxed/simple;
	bh=yY7Nb+kPCFRsCOmjN9j35eQurrCQC8JJ5iQeFAQ1SQk=;
	h=To:Subject:From:Message-Id:Date; b=CzE4v97laZ99GQ9grFamFgXh2bOWXocU/M6UXEpOZzVtv/lFD2u/KOMmD4nObXL8wfAazUAQntSJd2gOLNu6d86thsomPR7HIZiB6KweMULH8ITPsmlhW6E3LuLussDzfU9aHvHsaP4RhoI/KhBV/MnEZjitnJwjLVSo4elQtVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGylzI4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGylzI4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56D7C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768455233;
	bh=yY7Nb+kPCFRsCOmjN9j35eQurrCQC8JJ5iQeFAQ1SQk=;
	h=To:Subject:From:Date:From;
	b=fGylzI4yinMn2mI6v4Onb7ieDM4mtPV9mR017rT8YI1qskIZQbqLNDuRJg9tDlR4o
	 I6XupXaC+x3+V/yxT/YKuSVHio9GvrNa6eGYaPBNClBZ34SCM6umiKIUU96u2Ko/Fh
	 V+2O7lhzOPJ9j0ZnboT8UJhWGmgEgZX/B/7Lh/goKj8kLozps/zN48rUkCDestIQTx
	 MjcTT77nVZASsxhCVS/CgLaBTQB1TYqI0YrujpnlpeYsZ/FbrSEaR4SM3LlJij7Vfy
	 E65f8QnhSenlUymbjY2QD9UjtIG92MrX/fwc2SWAXEtEhICDd+tIzkFgo5RNPp6TM/
	 oO/M3MkFaBLJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9202DD3CCB1
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845523357.20148.1467723521984698275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab45da6827a2c72ec123446f179b4baa69c60c2bda2dcb2a461c8de48fe17b1d
Date: Thu, 15 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768455233
