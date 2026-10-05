Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D0284DD3D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791221434; cv=none; b=pGIIi1FWW55RQ9X3O2eVbHzdCNHnkmMwyx03bC20z+112oaW8Z3X0dJciLFX7TuzafAXNFEo8Rm91BDmLb5lniLPLjrlUP4TKXSxmyZG8hHp6dMqd/C7T0N84hE/L8w5LBkdPHSeb8g/i4ce4NC891ZwcSxzvp0lCgPPg2Bouws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791221434; c=relaxed/simple;
	bh=fc84PXepb08ywye4lgP+6llFwYNYTP3e+GAPxLHbJuE=;
	h=To:Subject:From:Message-Id:Date; b=kVVJTSKnd5KZaqQEeO9sYoaJC4/kLD+9oRYLoeOKhftlAE3mZGvdcNfEfud9c+v/P3cI3w7l9i0xOdbB2cYgGNenjn7ZO8i7xazDlXZ+nFaaWzmOUkBUqRd0Yqv9HBBlkvwNwyMgAIxAgFIroKisp/5zVn1xqPprPastIa3MMPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTjEQvXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTjEQvXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF730C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791221433;
	bh=fc84PXepb08ywye4lgP+6llFwYNYTP3e+GAPxLHbJuE=;
	h=To:Subject:From:Date:From;
	b=mTjEQvXB29X4WPsZ7lZWtDkI/bLPys2ClkiqbQwhU0II08fJtfzApyaHWoriJuxGo
	 tlIKBsz7rrDAiajdRP1aTkF8YQSt7X4dzx+BLvsY5iuMH/EfYPSRreFXwSs4W1o/vc
	 ob4SFpW7fViXsiOzifEprl+wh+YgjrsdYBAPO5kfurSn59eFzjOwwqPR3RKyXyVFgc
	 KyoYS7Iw+h7qcGKRkKH8S6douIOHZZ/hp1d0DQ88izJg21hArKYyf1dNyGUWIk3K9y
	 JjuF0AtvB3SZWOUApwm9Jm4Qm6R9xaqn/g2Yxp/tgy8AavCyeezYPqd4SvSx6yo+Jd
	 gXKckZsb/ScuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD60CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122143370.16121.16625213557641247649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d229cb8d72745370ead9b4a462bb08a0201364b1a474eb4ebf3aecdc34b51b3
Date: Mon, 05 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791221433
