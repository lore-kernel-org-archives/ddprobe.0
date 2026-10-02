Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BA636B91A
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790949034; cv=none; b=FWXJrmaQ3JKex+O+KJ5iYDMkZxUCM6gtrKwCmNUPn+qJZKLVCcKgcHovCp9hI0kI8P4GSdzQVthyasWAAQuXZKmcG4iNjypqBQBSL4WTgzNU5elOYo27ALbv1Qllx0VfUl2MUvgvkBOuJaG1Uht7Y1OfvcFO32ucZaVehpcBlAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790949034; c=relaxed/simple;
	bh=zdhmf9tc0F04xGaO8KSFfoFYi3t7Dz5IlT/T9B5iNe4=;
	h=To:Subject:From:Message-Id:Date; b=B7kqj63bTh050TEqjUBCHWEGF++Tj7XL6gafxQKjBrBVq6Iu2JeSgEObBQKVa3PtFhUhezpQmsxbVra7Eou/1qwmsZljnCMx3KHsdqGeRkf6V8urFITrE+ptWIBFVJ1QA1GWITvqDMYFyJ1U7mMvv+FMDDM/urXE7GzKWmz/VZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjWUF+C9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjWUF+C9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFE9C2BCF6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790949033;
	bh=zdhmf9tc0F04xGaO8KSFfoFYi3t7Dz5IlT/T9B5iNe4=;
	h=To:Subject:From:Date:From;
	b=YjWUF+C9BGEa5NQSRMD1EJj1UbTcm6RlIwFmWGvpwwhuAbkuUxRyZuBUu3MD+EJte
	 8w5W5f31DS1hUoE35HKYqakXMH7vzG9Zzl/Uh1J5ZXg7t85z1AoDBQpidU/LnruSJi
	 dBPyG3toL6Il+NskC9DRrL7Uv7Cjyr8ri33NeoeI2J/L351OFvocHztUQAwrvEvIOZ
	 wnaHACNFc6nmxjH2yW9gr/QAP5GMRhzorgdtNgfBLfiEbrQ5atr4S/VTOb4as4Rd62
	 qLKgbqVxw5RikEEIfXX7ZgQF1UAiYfltv1gF4EpZIEVDpiTn/k2nJlFY28E2AuF5Z3
	 DsRdvTdrL5fiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD20CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094903369.30097.13465303848009302743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f7ed360d9f7c68c5a88edbcf225de13df812f3742aad0dd6d9a081537929e3
Date: Fri, 02 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790949033
