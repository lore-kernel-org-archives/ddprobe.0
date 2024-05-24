Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5744153AC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716512003; cv=none; b=V17TAG4RiXFfL54bzf/FtO/cs4bUHWNIfwEcCdD649ySIsGgzBmF7sEyKjCbMYIcS8E4LVH5KcifV9B7WIlJvMinJEynmPaoYVF6ggn791NLXoGIw4NkT/7QV9HGs/Gg9BtkAvECCtpcYiwalbNoDfJPopVRV7Atc9tdPLUxWCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716512003; c=relaxed/simple;
	bh=rALh0gTmjkdm4Zk+6x4FVo4rSRt2VCNRhY8qAqrFK0o=;
	h=To:Subject:From:Message-Id:Date; b=DuETkqPxGwpmb9xGwV2FPdN6AqJmNQWd389ea6bE/fNrJJaVHjxFxC1h662kGdZiphd6ejBDhLdz1BYMNFGS2z1y32x3atljSVbtmoChBwWodbGtoYXolTs1qQlWoGI9m8qF6YBADLyc5maT+WWYrLaoDQrHXWhSBZ+kR6jVjK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXhqSRYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXhqSRYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF58BC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716512002;
	bh=rALh0gTmjkdm4Zk+6x4FVo4rSRt2VCNRhY8qAqrFK0o=;
	h=To:Subject:From:Date:From;
	b=KXhqSRYbbYIoZvNh9yaSNNpEhB+nT88vvG+28mAcAidlNIdKF3ZuKJUkavrT3/QIC
	 OUC4Sfynnrcbb/OU26kLA2FbowVyN64hlfQRPcJ2bcVZaZU9Rm69vsKKsASmf+9hdG
	 myfTnIrb1F0jpxCmXPouKIVIq0MAhtvQLOANdXDHxpuszA3mkS7483qcZ74XFghKE9
	 5hza5r00Ok6qA0+TSuZJWuCtot/l9BUcF0SpesNvrtXhO/1+Se5cxo9lKMgp/ol8TN
	 Zh0KJ6nV23YDr7SPxAgRUCzOZBgiWfZKksgqAao5rewA6mat9opBIjWVNOSbfq4S41
	 X4XmkmnWgblvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BAFC25B75
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171651200279.19218.11247902458343148755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc71bff6e704b799925dfb6836d218c8c00d5634c474524593bdf0ba4f30330a
Date: Fri, 24 May 2024 00:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716512002
