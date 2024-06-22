Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B1F14B947
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719051143; cv=none; b=t6RS1NZBfRBo2Epvs0pPGxlv8j3WmaLdFl6+Uo42vEkPTZ9gJyYy/KEJrimWiDf6jQJSglp8UuIBC9wYr8nlApdCj2cHRRNKo2ryYYkUQ2rVW6focs14nLqODfqhJjHT9L6Qda+Lz4uX2BCVUcRcf4cA1fcWLEfmOOVii1X5Mcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719051143; c=relaxed/simple;
	bh=m8mgDj0Ft0wS3PYntRLIIfO+5dAvre+LTt6WsMLrBQk=;
	h=To:Subject:From:Message-Id:Date; b=bTMolIyHjpUAbHSN3JeNNV8R5sk0ONgXz1z4EBDM6vwSh/lFSl9O2zNS9ACICZbCkLsywi4NG1C6NSsxWkj/PbNqgndoYV6Nv3rwejkHasT1Sy5gYKVPYe8aPjiDWsq42Pm97gUxWMbmyryBmrQ69XXWZCzLLdrrJMVoUVrUYg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InRB9w7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InRB9w7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48B5C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719051142;
	bh=m8mgDj0Ft0wS3PYntRLIIfO+5dAvre+LTt6WsMLrBQk=;
	h=To:Subject:From:Date:From;
	b=InRB9w7Y4qkX26ct9p2Ud0l1KbJtmHLBVz0jNUSTBSp8RK+z/Y0WPNycl7XgosIHD
	 ufbEeUOa9Z9ANRFdjqAdBHm48PmYOPbFTEmJ5BQx+o6K3Nl/IrJXk3fxrbecJ/xqqt
	 gjLaj+uc5/4AxJX980bQ6NdymNXl30X2CyY7GL1Ti4f47JHIjtrQ8S+Xc1QzZgdHUt
	 EquCAtoKmbY2qcn3WiS4BAmM+wuC0GjFhhQiPSiZIB9ENk9h1rlGFThqiaolRPpWCS
	 1gitcsscxWNv8e8b4H1LnWcYfk6r0iA0AT08JBt2oFPH7FvT1EBO3KmLUzuuK7vwr9
	 x8DmaMdFSGyuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC78C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171905114277.32311.15210504894411974157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e4c62d7a450d19f6f753b3e2c5269ecd3f81ded0cee444a4703e862a25f441
Date: Sat, 22 Jun 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719051142
