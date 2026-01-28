Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EAE309DDC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769615033; cv=none; b=CJZI1+77u0hQ83h2ez6E+LVo9Lw6wJxwvmN94O+a6zpB3lYgqOtmukpx8HsIfhm35YgkSWEAtAZtwrPb4r9XPw7pH9RUaYragF6cXGYDBJEmnZfaK2GNFeqiJXB7Dqh30IjFFoLh4IPwxdHFbI5400EnFbgj8csDzZYDrln+cJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769615033; c=relaxed/simple;
	bh=IsxEcUy1n1kcprrifZlhLBawi1nU47BNi81l6wrPwnY=;
	h=To:Subject:From:Message-Id:Date; b=qbcMZ9OVUh1xuwOxca5cWbzz0UbkWC1XeLFZ4xrCZGmorKCB4RZmRd65jRmJG/kjDerty9iNjKtSuLdE4bGc2Z07Lu07rzUMMiBEqOrp2dAwF+DSMEmWJMuE5fYweWFIgVpPEAu8DZ7ASCg+/fvGSMY427U4NAjFkJxyOtjL3X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxZ64ZOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxZ64ZOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8F1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769615033;
	bh=IsxEcUy1n1kcprrifZlhLBawi1nU47BNi81l6wrPwnY=;
	h=To:Subject:From:Date:From;
	b=GxZ64ZOWXL/ZXlCwqqCIchuZm3lSUvYJQLyF7kOG1ulftEO5RGQP+KLofkWCwigcy
	 glQ72tEQtXIiTBL74YOun6J2QrEis8KgeGRap+cIV7p3gwi9UiSCBtZvpUhC5MDIcB
	 IX4CWFM0ErFZ3egrbeF2rHmSYzWfwTGdSuIO+k4E1VjHXtzx/DvGqOYZ9lfAyQqXJW
	 fKow7MJ31jehC5cJb4sgY+aLVfME89kaUEhebvOP/DA854/5WxDFuLrLVb9yY4EcUx
	 kn+zTWC8yPW7DzyyTpreNnKteFfaC1mhuQxjeV01cNilJzjNs4fzJTlVVfbM1mwc5E
	 +QtrnyBZ/3yuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD04D3F082
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961503358.382.14821892689737028757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7167d7f82ffba893385f36ce070a0620b6afb582cdd904fb5ca43fcdb93ae3ab
Date: Wed, 28 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769615033
