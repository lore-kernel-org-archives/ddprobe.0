Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBE94EFFD7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790615434; cv=none; b=McaBt8AdfGk/xsSTUDg/0VSdcLN9FZlzO4G7m+hN5BPA/Xn3Yey+bqylJDB3M1nDVNNIfrK7lvBgZrXgFGLBSNHZQOhCBHNZnaxBWTv65itcRAzcTEDoWAp3pbkJdy0RqM8uGT0GHLFhSV6nFjPYXIyXGG4qav8KRGA7bjtflsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790615434; c=relaxed/simple;
	bh=+f4jyVyP5lljMT3TsYQCX/XKjQbHqPbvI+l/V/rY2J4=;
	h=To:Subject:From:Message-Id:Date; b=FaEru9aS0TRXhUVk1IQLP9dS7BpX9pEQ8S5Za/xP/J2URvENZvr4tv1atwO791hMK5Jz2fPCTTYlUjGqgyetWRBxHUtOYK99ZJMO54MkzH7F+vGtY/cdWSJLLn+hVVuUmK6FVx7ALW7YLuatEgqpkYvude0wa4Ne1B4lLs0vLu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iE3CY5ET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iE3CY5ET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21E5C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790615433;
	bh=+f4jyVyP5lljMT3TsYQCX/XKjQbHqPbvI+l/V/rY2J4=;
	h=To:Subject:From:Date:From;
	b=iE3CY5ETMDQWhn4P6ZPwkboTuwqjETRjhx+sxOSvjiEdkJa/PVnniYjw3l8Mfrch1
	 nU0gnuYiP7lZKA6IhWFUpnhFk3ulmzDHckMA1SwWk5SxM7olaN4pme5CLpH77WRAM5
	 h6JPhA2RZkc7U3RtVZYlrbcpELksTCPyLYbMkf11+Sy4uyt6loThzmmFIAJ5FKojMr
	 Bjo6rdekHXf4XjmUgD2zXYZwHl5R+ZB+y7kYXCwnV5pmsT3o1MbTwMOjxp0ZFkwN6V
	 s5Ne7DOJ/babrr7JwapFW2oq7Tc1XZs82e/nSjXiduSehncCDRhOf4mEGMXQSi5KKM
	 5gI3DLX4zixOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE7ECA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061543369.25647.8592409522957384348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7e9e8efb45d415fb22a1d64ffae4be75d848376caebc8e66da00db280619e9
Date: Mon, 28 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790615433
