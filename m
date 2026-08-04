Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5300035966
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785810634; cv=none; b=k2bstovd3SaWDrQS7OFRWf0O0aLpT+tIoOrwMdKoNXPR3BubUNnywueiPwVn75B8S/XDjqPrrNY/6g3sKG7A6yavaN8KEjnO90RsPnxJIHKRpCeEHz9fhamkz4+0tKEJfWn8MKp6oSQUWGOG0kD7e1/XJ6Sh+bjUrog/vUAMKNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785810634; c=relaxed/simple;
	bh=rJkjvKcijeIB0v7m60O5LNtmYIlu2FRabEJ76BI6W/g=;
	h=To:Subject:From:Message-Id:Date; b=it3BbuWv6c6RaHKiKkOVP1Gzcn59+yXiBBifvK1lOMuIS4NuzYtQi9NAMY2gEi52w3rtPKbICQCsodYuLwyj6MlnjyTWbXlHT88r3SxoP87UMo86IxGhZ3GlmgybKGisKFX0W9epMdX/HZaMDtSdglQt8tiE/lTPtVjCbINtKN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oi0G3X7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oi0G3X7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70F5C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785810633;
	bh=rJkjvKcijeIB0v7m60O5LNtmYIlu2FRabEJ76BI6W/g=;
	h=To:Subject:From:Date:From;
	b=oi0G3X7K8Tuz6yY3VXVSgYc60gXqjpY1WzS2/s3PRlGptknY9fGyS2f0E+UlIWfEQ
	 xMSkUrj3bLV8kvMY99neopmk+FpR0unQbihSBO9Ca/umICIUBntq8riyH7WekCzZaV
	 7Jc0lbg/zyA2pjPE9B3Hwz1bRGWOvPzDN4NgorWTAmu765ciGFGEr6MQCSDmc5ZERh
	 rHJTkG64SR0gSxhnkOkasC7McnzOll+IefAWTIPUTbFH1aKHbu6CBanQEPNOuypCpG
	 /uLy6cVDOqMKsItm8NQRXBdEGC8vl41MeaWSVoaxV8n3t4iSbyyT7xpq3BCWrea41j
	 CmpA3GbfNH6bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE09AC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581063369.31314.18200772773242218449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5905bb786906d60c40e8b2d19d50d5ab642b2df8df4acc13c19104a8925b9071
Date: Tue, 04 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785810633
