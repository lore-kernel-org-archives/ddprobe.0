Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550102F2B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717613843; cv=none; b=kmYzU7/fwi9htbTn5nsbK8dxXJcKEhSu2EV9zVVwP8VxLkOcepvDN9Ra2+zL4WvfrsTOo//0e/JCLwjZ4pilp+ROBGRXpqQdHcEvx6Rcr4kCFWvwJzOZrH9pznFmHnRZ6mhPyopf1zRcPdsIGsvFXqNScKgarQbLfsoBZIYLfSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717613843; c=relaxed/simple;
	bh=Ept2g7f9eGYM2dImzFcKTmRu/azCHiBmFap57GnvNEs=;
	h=To:Subject:From:Message-Id:Date; b=pvpvjQHUczWYdlbi2DX1CsTmJdD8idImq5QlvyIHf29GrXJxkQqOCsuWY/EuAui6ziXPfTcHaiOZOjo0KOz0VSJ1r1k+5wRpgMyHgMiC7g380stDremLT7TSNl78H0vuoc1+EegXy9mPo8pfTFyhd/qh7hgjwAJiqR4SM5e7Jz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOZzscE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOZzscE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6DAC2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717613842;
	bh=Ept2g7f9eGYM2dImzFcKTmRu/azCHiBmFap57GnvNEs=;
	h=To:Subject:From:Date:From;
	b=MOZzscE+m0zYwwXML0KA/ADtB9oS05k4/HAF10Vbwj8lbgYQ4LE830sGXYum59zjo
	 6pFr9vbSUlpT/4LmagbTqDN2jWQK+wpUnNt++FwELHVsCBuqH3oNpc6+ua5hQOElgE
	 ShLkWEZitRdfIWMqsXVthBRybsonN7kcp5qYmuyCbB6j/9iOvNxenpFxdb2TLqGUwz
	 sHUxp7uBzMz5HStmwmaCkTx0h5Fqtg5qp4LpPyUF/RoMIQO9OPm+CP3GV9WWRd9u0v
	 ZSRBEapsDWmB/ScxMhwf7+jh09pKKrRe2+AH3XefIV6EDgMrvs/hNey8FkEopdfW8k
	 IhBHsw2sak1yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F5EC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761384279.13351.10365957334963364059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f76e4ae3ab9dc37b12dd112d8176d54228bf474fdf334bae6af75e236b327e24
Date: Wed, 05 Jun 2024 18:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717613842
