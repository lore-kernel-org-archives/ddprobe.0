Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CD0481B1
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772739294; cv=none; b=B/NtetfoIIQYgbOuR68L4ELEWKvUIgOO/ujrmrIVrdXA8ajMDcXBfi7O6WYajqWz36F9uvPDhlTgzbGfqJu9k2ceZLvLqluLX/aWRUUy9y0bBlnSyzh+MjJ8aMt//RpontlGmL9F8b3Pm82KgqfBBfQO1jBNLJyruGZUh8LIidE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772739294; c=relaxed/simple;
	bh=tIlBTOvywH9cdUXldgNr694jDUnjEGpnYJexAUdwEvo=;
	h=To:Subject:From:Message-Id:Date; b=YVAf6BEBftuz98DcxE2QGhSSdnAYVrgYtbnT50icS0fjNogQsiwz6wYlUb5rdoDfx7ziKekUJG3cxIyXsOiynHrhqOEbzu4Kz01toIRlfhkcpNdnJVMbRNpdgKjvBuzR2JoPL1fTVjXHzgbDkoiEDXTMdzqpImdi+sKHigVYdRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bthpilPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bthpilPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18CFC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772739293;
	bh=tIlBTOvywH9cdUXldgNr694jDUnjEGpnYJexAUdwEvo=;
	h=To:Subject:From:Date:From;
	b=bthpilPrlF3nuznkdRcCgpEQlO5VHBUZwVwKHz/Lk/7oR8ZDmd+vSuG2QwI5DwFmg
	 HK+tyxu9RCB+oN+0bR1dqZxxj/pvDGe9S3E9pf/JYTw/4TQVJ2eErTv1kHMCI4Pf9Z
	 dM8euoHaMfdMcLOixOQNfJSL19tdTHeCvCnpUK41QqcDwoO1vpSGEPeZDNEuDPiFkW
	 F8mhKRwJCDufN4c47wSA0AazV3+HX8rmcOYg2qruDd1WGTTopqShGQtBIM7AYZ2Jer
	 2VxX6sjPZnTE9UcVq9s24pQQwlFZNH6pJEFo+qEjYcW3hFlIATa90UfkCFAxJm5pTm
	 27B12XVk/yPzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90936F47CC1
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273929358.9239.1679897861119991087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3cfc6b54567d78471d84a4d9df156616927768801ee1779f71d0e0580db29d
Date: Thu, 05 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772739293
