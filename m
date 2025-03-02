Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528D31BCA07
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 21:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740950334; cv=none; b=uvbYrMKExJUaSb+Tay4MHtS0bqz96TgMqx8OLqu1ll8tdgRZkQ+0MnoSTCYeOa1awzKjjvR0WQFNdbdcvlhbvDkT3Jh/S5rpa3CDQY7LQraRxGBP2igIX4+Zbi8yShicdepaCT3dm5JkCFOSnUTY6iEm7Anj2VjgcBUPz7X6sf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740950334; c=relaxed/simple;
	bh=PjyaMk4bocpbsB+n0BDtsrwUmeHVhxgtoeiGXcKUYhc=;
	h=To:Subject:From:Message-Id:Date; b=FeSvznozxv8U/MWDlq5LEX40IZ8OOEPUVA+WEpheAQzOpuaDGEegynAgLTm9HUTyykds51c0Q+DnNFrzkBrIsvGA4GkNSRG20FYTmg+75TWiK7QUkSR8mFyKtwO0WMD6dLXFtQy/phMYEFH25F1m/9VyqcZZaFPNdqq3/UZe4xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moTkO4Jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moTkO4Jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE434C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740950333;
	bh=PjyaMk4bocpbsB+n0BDtsrwUmeHVhxgtoeiGXcKUYhc=;
	h=To:Subject:From:Date:From;
	b=moTkO4JnJos5TZ6FLAwxfFt0BrZCeCsYNmMuXrs/QKa8RIaUk6Skq0uINrvlXRHuf
	 ZZqcrfu+dR3v9JVO404LzSYHSjQIt4lXz8/UCmfJ9YVR5OnkkeFLE/pyjCnIYsYhc7
	 UnKP/+7eUsBvq62ThYRdfXoqtj5q59OM0DzKD1IZmMxxZM2ruihnPNYUZC4cjnqMke
	 kzEeQPOBSjQitxetjn5NaZ2VrrolNBFg16Q0HFRS7ecfVguFPCVp3yTbTOHTi+jlIa
	 Ex4Xo80Ax4otXyqfkqz3vlOocLN7fSWQhiY+lrC2zx664AtvjXqsHhLFPn/87Xfq22
	 x6IsqdbyY1DrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA718C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 21:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174095033366.28354.16983801316308143150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82cd125a44a37d19c4043923b83d98539a2c0f4fb977c2d7fc9c5dc6dd397013
Date: Sun, 02 Mar 2025 21:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740950333
