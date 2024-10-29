Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221515C96
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730160954; cv=none; b=Ml14XnIzs4xa75pAlYXg5x7bytXdSuNREUWEFvdLFK25nkcbfmhq6/ctvo9kIcpOJkbj+H4Dyz61q20l/3BGxW8oly7+oCbQDa8v+xG2Gl0GUSLJdNqZY/37UoaC/ckEvD+3QeH9JSsEzdbZnSTl9K8jRb9LDb15F4faL6Wj41c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730160954; c=relaxed/simple;
	bh=FSwoU/A2H/lhgop6oAmrgAzY9GOkrI274uOwpezGLE4=;
	h=To:Subject:From:Message-Id:Date; b=VCI9RFZKr2sRQYOEociWbz3riS8cCErTIZR81gvzxnC5VOO42OZRmpglG7XiYX7pQWcCmDhrKka3bc5SInaaF53NipvhTWHnk+OAmqsjhjLxi6+V6CCg9/jPTryLYbP9CPvBRn4gDUtBYdJi45FCVJaqb93LetnQ9Yh2f+3N9ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwPUSW2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwPUSW2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B455BC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730160953;
	bh=FSwoU/A2H/lhgop6oAmrgAzY9GOkrI274uOwpezGLE4=;
	h=To:Subject:From:Date:From;
	b=XwPUSW2TD76RuSrtBmX0eD6tqK00pblIKrvLxMwc83jO9RF6T0yZKjf2hVjmXBPVL
	 bzWknUxJ8wH1zmtLCW03p21d6cls0aAiaohqRHdNUrAdBwcGcnuh64uV0R80HFGo3J
	 O0x6SNkCWhsF9RC/HQDe44BzLvcScM0+2NjsLFfdp4baV0X+ugCPv+jDSEmUV5YGO7
	 b2xWZnK/RGArxSp+AbWh6GmOCpWVgPe6g8WS3O9Yeaci3nRwqvTBQvxIvIrjCE6AFk
	 xKJWYPZVyrR+Ufu3gwCL4VZT0dIp3+dVPLKEX0OnqfTXOJ1L+xV6u2CCnK6kWHMa4C
	 IX/Lu1iqKL7Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2584D5B845
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173016095365.16180.15194122351958515388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f39be8748b21445a9b1697c423a46e13759c1c54bd19dfea0d7e735fa0f21f
Date: Tue, 29 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730160953
