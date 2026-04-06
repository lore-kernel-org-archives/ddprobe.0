Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CFF30BB8D
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775455534; cv=none; b=u8rSMUhX0A/KKr3x1aYvHVUdHtE7lOue8kY5+QACkGLANo6km6uw8aHLKVUVJ9bCWQeJs2MAZRQvLtvG3fQ1g2JRaZHFK+v/oBwUR3oFyK8hqn3KiZojkSqMEY2QB0yXFsWfrgMab8eAEwZ7Sf7jsfL8joYPozFB7RX+JD6v5is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775455534; c=relaxed/simple;
	bh=cPpHc/cpoIn70COe40cX3Dev3w3ajZnmJhPLR/QrqEI=;
	h=To:Subject:From:Message-Id:Date; b=rFsEJjEjJFafIj/pepheVJiNGgjHTlJ8DcYf4tlFRCzE1zD+oozmfam9BIEDTwHbRCxGNL+nAkVqzc7ZnQ6mCYrad40Eoe2lQU2c8/qg0wb/bN8u66fd3Y7u4XVAfKz0ggnGw4ykJWlYOpDzVKNBt2QVQxhC3qZYaFnU5QD6WMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCQTLBri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCQTLBri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A65C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775455533;
	bh=cPpHc/cpoIn70COe40cX3Dev3w3ajZnmJhPLR/QrqEI=;
	h=To:Subject:From:Date:From;
	b=oCQTLBriGRBZEMmpcspjw8iNZ2IirLmQar/mQDuANsA4C8kXZDQxoIcWlzXJ1UBVl
	 Oyn+6bE1B15yR9rgOiR91EDNi6YSaujRlMdc4GB8xBJcO7inFVZWTm4sYIBeftJoxQ
	 kIxxw6brMrAfWoxCtnC/+eQtcih3W0j6HyGcHvzxBHAvSeeDH+FWDNzhaokX9HEokh
	 MU6ed3x3BVmiDvr0ACj2ildodhbtN1W0GWIKVXAnr9RPE2xKnCVz4qmCIF+VoXQ+Gz
	 VsBYljZao3uUm6qzyptOKiJRyBR/18e0GgIH6iBytw61e6ysUqORgQFFuBl56N9tjv
	 3dBgKlG9coJvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50FFE6400D
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545553371.6794.16760286759850696710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e16ed46d416efa18c271534a931e30d03fe985abad040a88a360b7c06db17be
Date: Mon, 06 Apr 2026 06:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775455533
