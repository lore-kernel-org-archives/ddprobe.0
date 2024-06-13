Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27824137777
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718260703; cv=none; b=cEQM9ToLU3gnJoh8BMbKmtozjZKXfVUYiZt54CAPVm0ESTAFCorPaSwO/pFw4sAAojQq62eR29WNXk/lmajNtTIcevidkY0bbqS6FPOjHWsXPfEaJC2uaJcNeJbRTihLgqaWC1kNXaMrs+7AYC136yLGuTFqakesjullcCE3RlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718260703; c=relaxed/simple;
	bh=C7f9+0ypIMU93yloGSd068svitmjrWv+52l1CY6DMAM=;
	h=To:Subject:From:Message-Id:Date; b=EFFRKHNFHlueiAO0O3CSvri4J83nGg0MOm72m0AXMW7h8+dPQd/2dvmnafpoHcgEfpw9V0KM3DS39BNNcBegepRqOOj09KJ0bbUh3n5gedQKPea/qSQgAJX8v2totdIBDCG/uEbbVCG8doDSiN4jUtFjMWEQ5zd/WSRLyjQ1qAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFe9vA8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFe9vA8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E26C4C4AF1D
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718260702;
	bh=C7f9+0ypIMU93yloGSd068svitmjrWv+52l1CY6DMAM=;
	h=To:Subject:From:Date:From;
	b=PFe9vA8fVoMjzF3/evO7VyQoftShqcKQno/W11InH2NC43Ym9XBZo20M/A8gnEz3M
	 WIry/cPJH7ZTmeHISa3alVM0PUNO/H1k57d1cy17BOi+MsIH6BAQYJ2Kem8eyMY3re
	 l9n+5ZW7aGYCBxifHS+IXTbkaP0QoXTulO15Ekfr7BPpR20KoFT36c3FZQRbph2zXw
	 aUAQPyJv7BOUmN/jOUGBPT8LKKvFhmyYGN29cfvELlvHH7TL3LJRrQ6QyEk+LMXQP8
	 qslNMXkRo3NJwxDNcCVG9v2Jgant4ivzh1ttmK++08ImQcfeYcXWqa1BwIjJ8pzdYP
	 6TW++2tdokfjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA902C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171826070281.19421.15489657560570806090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2b353dda50e40b73415b0699ef68235d9a41422672ed5bf621d08179864685
Date: Thu, 13 Jun 2024 06:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718260702
