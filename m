Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4058427F010
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761882594; cv=none; b=qmtQajiBR5jKEjgoPWHk8V5qbuW1YdgB8Dx3UPJmXBElPt+UYIWHXXq+gsuy0vbaHSpPTC+Wd6EIYa8ZdJAN/UmLED+Hj8jg5Vfk+EKCUZCYM6XhCR+ECY5TNJsIl94Aq/544A3Hxd+4DmkiTpvflHah8/mD2IG+0EMJqL2LkrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761882594; c=relaxed/simple;
	bh=Dh/aRLSLrnR8SbWTXxIt/Ho+FIcTWrtgMOPnNeAeBFU=;
	h=To:Subject:From:Message-Id:Date; b=AwSuhXuf5nviyqF1+zuQJzMEXryJPVFzPf2iw51bet37/+uw/89emtIMlr+OmTO013uFEmU5BEhZE0m+Rj4jr50AMi+j0BnUuyYA9MXd6lwDaVW5313wwD3rcuDqRENTZ41jnIVuVI7lgOOw7VBhh1hOKFAtNLAySiXWWj7sRt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zg7Ilg/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zg7Ilg/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBACC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761882593;
	bh=Dh/aRLSLrnR8SbWTXxIt/Ho+FIcTWrtgMOPnNeAeBFU=;
	h=To:Subject:From:Date:From;
	b=Zg7Ilg/FPEfmRyVPUFj1BS0F/lwoVQQCsmBVB8xnAIk1CjllpTagTD0DtRSYAP/KP
	 3LLzXbHp6Q8hT+92EvHCOJkoL2kNvGkCHy3K6nUfsq9bMeYtlYlDUlNe+IktiEOXDk
	 MX9nHXrMJZ7X81jhCOnkS39wbkVTQUMG9x+8BZlXwxrCM3syfhdFxuOq2gXBoe4JWL
	 QfKe6PBGvWcCsLRvNVdejD8cgunuiwsSduWzB7oWdNVs+VpC1ZpQoT4u+YlaXOJaTO
	 FVE/iG6nuXYTtbd1CepMt6lEAeXKNUeFju7RROhIJ1ywS4e5Bu8M1jdo27jSvP7isv
	 mKnu04BfQtYMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D876CCF9F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188259360.5728.5387496402229134099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb2e3e8ac5cf3f71a2477f52969cf3bf0b92e3221d711969ee2837660affc4d
Date: Fri, 31 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761882593
