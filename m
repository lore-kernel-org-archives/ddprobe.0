Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3BC3E49CA
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784846434; cv=none; b=lIyhBgMlY5OhZ6MCOcEQ8AMCCpZDIU7AVmlp+ejHjjKMZ26gfI5+MNjrxSMx47KekPI979MbyBWhRtVKCz4caPMnC2V2xalA22EUVWSn9aSw0zYaZf8Yz3EMcWPWNtJ5hW3z41CQc1ZG5RQo8Ti7imhpnsvKq8evSNnvRNA5vqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784846434; c=relaxed/simple;
	bh=zHrqLuBOtpEuI5/rtP/W9MEwdxH9o6ADNd3TyIW+wVk=;
	h=To:Subject:From:Message-Id:Date; b=t/LjLXlRwKR4ll5VNwVuDSijZCtIEwKzZqxTrsF64egipLWdD8b2YYB6v3LJzwQqraQA7zboTI1Hczw3wljL4lmY/kIp40jWK5JuhrVTOY+KSxr+f9erHutyXBvi5tb6Tu265PMo5xqlNZZaS++36rI2HY7BvSohsJt/GTXZCyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/LOj4Uo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/LOj4Uo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD21FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784846433;
	bh=zHrqLuBOtpEuI5/rtP/W9MEwdxH9o6ADNd3TyIW+wVk=;
	h=To:Subject:From:Date:From;
	b=i/LOj4UozssOFTad58wRNbH13lfCcgKIIubuPRHya9eQ4FqLTI+T4v1nrRospqNmT
	 jmOfUQgjB1R/HQp2NE980b7IPiTWNMH9dwXIjiG+hKXHGf88fKq8e5sNfnhguiAP7V
	 eCgy91R192IYRsBpQylzyQK4I/1kLmAMM+/DTmR/LDvGHAE1ItNUDt9RBcWbf61lRp
	 r+ByxtzAXPg8N7jywqOPxIe9A+2OXOYeory/dXfScBlmZ/5qOcayAuRNCoQ9C5zkC8
	 tmWO4MmTfcCJDFbu1zmawCR05xC2fJ780lWNdFu6XXeyrZjPuRl8PO9jPPNmcMviGX
	 9rEHFUe+MuShw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE456C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484643370.15662.3740269254724740116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d804fa43a3035094c00a0fba3ad2ed9bad22e7015be40d4214caf048dc54922
Date: Thu, 23 Jul 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784846433
