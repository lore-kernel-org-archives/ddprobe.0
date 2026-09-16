Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD4B4963CF
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789595436; cv=none; b=fMSZfid6dxb6o/jsLJgeenE/fKP9bsDKga3t7ouVlvWk7ghgBpYhf3bRO6cxTYuaAn+bMkVOUUeyV5gIhsGGpB/p1CfkK1M481Kovy8lBYY5n9cfNn9AO89lIEy4RDe9CxcPi13skWXCoq0mHkFNY45R7kdqyNNvqNmen2Y4fk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789595436; c=relaxed/simple;
	bh=ZR+EPU3c89RoS2FbUMtcA06z4i4+R8o/u+URTyPOdqo=;
	h=To:Subject:From:Message-Id:Date; b=hhyOteJKzPaZVUggqHH28oi4Um7jrCLfh7unDQPKgjFslE6AoGyI+jJkv+Zla4VXY+mLnyVjbI1QEmQqtzdisyALSTM14lZqPJOFUE39iWqF2qust7Tvi0kfiIVyOm6SPb9h58fuywWI/zTDBWoAmz0aP3XA9KeHbt3J7THwj18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGB58kN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGB58kN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C780EC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789595433;
	bh=ZR+EPU3c89RoS2FbUMtcA06z4i4+R8o/u+URTyPOdqo=;
	h=To:Subject:From:Date:From;
	b=CGB58kN+UMml8gWdcl62XKaS29msz+dLx3ejNYIilT6W6PqnFcrK8SiZoHw1l+jre
	 TXNI1SjSWPllIHBwtxWExgMnHxmJIWFe7tLXw2dw2IdTba4sLEb0EPWqEJWSGjzZKG
	 63W54kCJrBfOwre9e5h+werN6VnF+9eqdgZdNFxiLV/N5iHYqAF/k3HetFYpCWeB72
	 l5P5BhfQ89ntR98NGBBHCxVtGUBtru9j0xnkyHciLbUGdfFFndjn4i3VaFjUF5/vBN
	 +M9dvSKBNir5A/CVhd9JYPmFLpmdRBbJUwz87FWdhFX/BzqV0ZL+vvrBvkvyqcvPc8
	 ZpeUCV7i7xLbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE83C982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959543369.2116.14244045596448308162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf649ba692115377b7e4253e0aee056dfc968e382385cbf3a4387c3361347a0
Date: Wed, 16 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789595433
