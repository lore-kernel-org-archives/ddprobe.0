Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8CB28FFF6
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775848054; cv=none; b=cFS0R/6eYNWQmk5uFSB4QcR+sW4CWmket2UfFcZhDNv1ubXTzIex5XJRPeD2PwjSVFb0e4FsVxFlTwb6KN4eSV7KzYLcmmAf/S9Umcnrb/d3GcMLuR4/LoOdwBNq/VYrA+s6H96zwofJ73IjiCM1Yti00KlOZMhKJQbsuYa3ieo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775848054; c=relaxed/simple;
	bh=/yCk2ywX1qa/35BAYqo5vu09NOsgsHmW6LOkr1sSbzs=;
	h=To:Subject:From:Message-Id:Date; b=Rq08+MLp9UMLBRdDc90sivaCeuEFNCsmKKbxQIKVskstRoDJ3dZWRqyrPpZBQWfYynorfDBa8qJR+qbeEh8blKH9kDi5RVsrqev9U6QYVUtg0vD6tH+2MiE60nQKp4SK3iYDOJ0/qmCRtPD5WCWm+4/MCkHINetf6v29u4uZE2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMXP2iR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMXP2iR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6832C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775848053;
	bh=/yCk2ywX1qa/35BAYqo5vu09NOsgsHmW6LOkr1sSbzs=;
	h=To:Subject:From:Date:From;
	b=gMXP2iR785u6sRvE6hbyVONOvQqF8D4QMbn4smkoJbQRHF3cXZMwuwB1XviQJ4xfT
	 WjmdgTsnk+QYSQ1HeRPZ2hBkBi32HPDZcmj8yoAx5qyoPAf0tolmnX9orZBc3zMmOn
	 0WtHP+1Qy45AFlgvydrKU+MBdUNrks/gmYam6rzAR/ibt+uyHrj5JDznEX9BnF/Lkc
	 XlbUs1Q+TonkUAiHLX95wTJriuBiXINuxIm5UpvPoWRQIUwi4UWdsJFB0y4lBmLOD+
	 unTjs2NZWNj6Ej9utxThyhxIyvqK3wWkAP9qV6t24meXuABktoRVQ2zTaQ8oYTAcU3
	 aO+omE6FhwU0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18CDF459FC
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584805371.4364.15312101358938462867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0e45e15619a7327773c8b36a1866af5ed4765d4dc7851cf328c9ccf21b6cad
Date: Fri, 10 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775848053
