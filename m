Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D44E194AE1
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718624303; cv=none; b=pbXqyLC0IzRCQ5lColLGbOM1RRUt3gl5bPjfX7i1Q43UoPBbxUMR6SAVdsMC0WEPpQGIe0y1IlSUo3yjyi6iScHC1DOyS0CbMdpTwl5n7Qt2YTZqiqwR334PDInolwcyArgdbPJ2Q8eY2WjGM8vvS2IQcG8FIOp4fJ1M0c9fMI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718624303; c=relaxed/simple;
	bh=8v72FDLbG6M7HYBMNooIlF0QDm3s9DQhWyQWuKv+SPI=;
	h=To:Subject:From:Message-Id:Date; b=VvUrxk12rrHOsMu+1BotMiETVZBcsda1pY+l17XhXjbkhw3h3/w1k1/AUI6gC0l4tahDZ99ePvJ6FG0Qup2Fo6MOPsnknDbDJhUp8nFojOiM57A/MkmBeXydKpwhiWCLUuiPDbH5xcBIWuNnV5pq9bcE1kNtE8YgnLgQzBuITGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deIfYIJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deIfYIJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7D16C4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718624302;
	bh=8v72FDLbG6M7HYBMNooIlF0QDm3s9DQhWyQWuKv+SPI=;
	h=To:Subject:From:Date:From;
	b=deIfYIJ8ezestlSDUGkmKOewZSiFlkdX7Y0wF5G3MWhA6HEblNF7R8bVq2wvwigqm
	 kc1EUXMR22BAuGlsHeLXgx2ga/kVJZJVLhnHHGL5muczJD15ygsHnxkFmf9eEchd3g
	 jSLzb8JF8kZOW9eTapqUNN/3eP309V/2I1wHpJ0snrmTRt91YebySvXbAJn7nQPYfs
	 LWIQScOxeEpUN9fT8QZZQrb6ieEyrNuvzCXTG0QuUk3btU1KlXECMP3Y+eHxqp7X2s
	 v++b5pQdA8CJO0CM9zIZYZ5nsf542x7vuPjQAuwyaqhiWKvo7lakIfvZFbKeYXb1ra
	 VWcf9K8JhKoqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3B17C2BA18
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171862430284.18271.12548932724654734054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb7142828b779654fc6ad59d9bfc75b68fab4e7cf3e6daaf1f9a1c12ce06fb7
Date: Mon, 17 Jun 2024 11:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718624302
