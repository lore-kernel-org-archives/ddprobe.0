Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180B12C15B5
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767788034; cv=none; b=r+U8ND2q4wMk37ExS2LKROls5EBkTtxUXGP/HhHMOzMH5IlNMSqgP5ZQyOa7EIdBC4QF7K8MqlY+JxFT/6SAdcf7/RZ7Gh6zMgU1oquiAjOEBTzfKMVOTwF4Sq0KHd4rvsCefyocD2G0AV7w6hcmdqIYwKFihvLeCKyBp1P1MOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767788034; c=relaxed/simple;
	bh=ibhe4oocp8B2xhbTllkVpwlfly1lFwQ0N8+ioIMuUDg=;
	h=To:Subject:From:Message-Id:Date; b=ir4YtFzyYSBurQtDmFw0lZdeBeO/SEDqvz9PnB4jD6EbBYakBWcWqktCEwVXw8DPziJl0qivXWr8tg4vsPlHE3EXs3BOK1VVho6SYsMEC6XhhexyskcYdIIGdBESeFfZ2JQGwD0qbNUa6VJ7Jz51d7yw9AtavjITVcL0yACpeYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gffe80MA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gffe80MA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB7AC16AAE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767788033;
	bh=ibhe4oocp8B2xhbTllkVpwlfly1lFwQ0N8+ioIMuUDg=;
	h=To:Subject:From:Date:From;
	b=Gffe80MAMlQuTj+GByxCnZy6ZJsIH1d7M8Jpkr559AlH0R4a6WPAAvJMcOlHkQ50d
	 HYhIrlg6NyfMFGX33MD2AbUGZH6WhfsfrB/ok9TgnfbStbyzXYRMDUW3zS1J4AMOTs
	 n6HQNKuhrOZaaxV/BcbTTIuZK/vpL4riR8EB9VK2moUSuxG7a6eGILZeClOP6m3Vmi
	 oJfkPspkY/GPDkiAvjqs9lsSgpYEXDDSrT6jNq0txHjRMQK33c/awlIPmZyEnM0PYj
	 BgMNHsmjWPg1LQdcjdGyGzI6bfXUldbAuNbJzZhfEhi0gc85QWtrj6FfwoAjzWIVS4
	 azarznBh+1z/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC4CD585E
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778803357.11154.9018529247875749360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8020b67d71e1f214d5ca2e2953fad47c8ddcb1ca3dd34b611640d0e5e4d33b
Date: Wed, 07 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767788033
