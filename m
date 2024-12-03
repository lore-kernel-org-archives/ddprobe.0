Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B011E25E3
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733266554; cv=none; b=YWmM2ekcuuCkurN6WSqMWoHrudpoAShZ3yDTHxc12OjKWwDzgrZRak5vp0pZuz8btVjZ/vKnLwTvUtEENgcr3E+lyJl7GZu8KD3cfVATImErYopdcYvyT7ypYAtJQn3M7H3xiW4V6ywabAcsNhoFoSiJ5ZH3Kw/ESuTgQsJ1Gyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733266554; c=relaxed/simple;
	bh=7WpmarpPOf/s+HJzpQyU7JQ14iXkP1+UJRy3B6jT2Qw=;
	h=To:Subject:From:Message-Id:Date; b=tLYFkUmQ1TfmhpMVB3rQOqoT7vJGdS7tO5/Y1iU5kVLWcVd0U7/zd11VyOOLbtjwxiMPOnBEGNxQmqX6BizmunvSxSF7hHb6ujWj+koT5eGgEaI1Unt8LC6phorE7KKTahc7fbQoDjiZlXcN5Lxhy+6nG6aD2/V0dI67nk/2Npo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzX4YbTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzX4YbTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA567C4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733266553;
	bh=7WpmarpPOf/s+HJzpQyU7JQ14iXkP1+UJRy3B6jT2Qw=;
	h=To:Subject:From:Date:From;
	b=jzX4YbTcQsmYTg+91Oz6+nYoLy58xvzDSRGof+SkW0nAey54uabdvGz8LIIYp0pFy
	 gh7/J6s6XSzNoKS2iIl/Fgcc8fh7hlVFX2VPQkNygH416ZUftry3HtQaFVqGVl32sg
	 zkIIqhX7FFXuW+TPgElys4cTHdxp7PFCMWAj3RlbawCDaduvX/PJvTAX8QvSarKUeV
	 X2ob5bKtlOl+JnnJ/ft+X/a/wEm6ekMSWIGOOgivN6JMfDe/yTHukv53B183qtj3ga
	 LTOMlki1gxFlzyIb0jdwAjvtGg1h8xf94o04oeRPXe0tCNErTSZDO1x1kK1JY1YEAN
	 HC0VZPAt5DtiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B093E77166
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173326655361.13538.13875625568984746769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e539aeef0f2e3d85404c322b65045f8c6a1da3dff0981bca49cdb14168decfe7
Date: Tue, 03 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733266553
