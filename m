Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A44E320E
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729446954; cv=none; b=aE7vOVxSbf0a8AUxdO3Do6YhxJpDk3BMXYGulJHqzg+ENM76aE2FWioaR1Ntuxd69UXPoSc0RMt38jwix+fY73cz+c2o5nPBjSWqlBCcSAXnkAG7z1VSTH2AOwtrSNZg/X8mdJozcZukHXu3D/8flHC+gmF24zoKe0JDtVhZH1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729446954; c=relaxed/simple;
	bh=KfTN5qmhssf/zfNkL7fFzZQDoXYzX8EGXlQjMUBnGS0=;
	h=To:Subject:From:Message-Id:Date; b=IJ/a3/mU+ASEIxxZA6zGa14p1Am0/6TZGjsUOx4/FKCXbPTo+n5TqZR3ESblfgQpYzlFWnmdqKAdT+TM60z9VVImSBjJcxOtiaYmU4BCdo1h2S5KZNN5pWplXL7OvujJtn/G76rpt+W5AO2Wr4lkk0s+qKuKzEQiO1NYtDwIiiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfAjUo9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfAjUo9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CC4C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729446953;
	bh=KfTN5qmhssf/zfNkL7fFzZQDoXYzX8EGXlQjMUBnGS0=;
	h=To:Subject:From:Date:From;
	b=kfAjUo9CMOBseNQNOCQ/Jxr/cXhD5H8+yH05d6Sk/aPUhXNGFdD6Pdi6FjOHWG1ou
	 umgv3yg7+G2KQgn28C71CHdM3ktw6637LqVzg1UyXE06bZ/bj+FyXXfeda9UVszCGY
	 q40dgMlB68QJNN+7nN1f8UkGBo82/orE+ypz0kKcknheGndvyUpWtPDspOP9UwEZ2k
	 v6rhCVN22Dd/GLB+WJs3GoI5iXblpSFKj2Zw/o5O+OBPcSQJwQfuUsHXEaLbAYFeoL
	 oAhZ0A6exdzHdtODIhK+E8QUY+COsrgOQmugSoBDAqemKPmVvLm08Y3XbSRIKNbddn
	 VuC1DtXQ/kt5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93777D3C92D
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172944695359.22594.17563476807813183152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1eea7dbeb933a5013c2d1f8be3871f54194ebcbb8c874192478237f747c642
Date: Sun, 20 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729446953
