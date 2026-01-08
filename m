Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFEB4DB95A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767881034; cv=none; b=q/eWAx1QCu8FCFutL7Ks2aUKSfN5yyMroRJezqS0c/y8/VevQGKZPS+hzVFtECTZFUHT423YDtH7H2QAbWy2NbTVU/vyyU5hFRJHxMY547LpqHTDQaNAY3wIv0Vb6H1jGvPPvxtIUo+hsZE20ue2+bLSHe4TATHx86+A0VIVYPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767881034; c=relaxed/simple;
	bh=yOVSW9vh84+ooLQy+ztK7YzPN0N6rRIwBthdwbYVgaA=;
	h=To:Subject:From:Message-Id:Date; b=lgQ1LUOmS8Kk1TRKmi0MUq71YUCHR8+9WD6zvKGUqaKkmD2HmF9m98oN/W8/4Pd0M9UZjpXLFu7yJhoL1FANCd2IgGu5+X002yoOm4XyHva23+y6KfCnx9rd73eKEmc/TIo1FJCA/o1r+F+RSba+Kfj6tewKV9Lxy32VhKK7prA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWeZvMF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWeZvMF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC86C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767881033;
	bh=yOVSW9vh84+ooLQy+ztK7YzPN0N6rRIwBthdwbYVgaA=;
	h=To:Subject:From:Date:From;
	b=eWeZvMF+EZklHDzqzaDfG14Kped6LFUGWGsYSAv3MDeQKAILjbCOZfqWH4qkeDc0Z
	 9d2EpghgYLDTeNQoENeaNEA0wkcV3qmIiyfOgJKOKpH2TE9sF5qL4cHegxXjL3wFsT
	 R0S+vxdyuuCiKevSzPpJVBulDDWOWaw1+ZOewkAx4zeTtMoMuriaNqzAbNbxdv2p+z
	 GMZlrggusaYj8JZ5/NfvnLFkJuJlJrGAcVCfaZ5Yq7TMbG6qK0Ju1wgTl7gG7lYsG7
	 5z32cD7rcvtyJ2MDlBXTXQFE87MCboT3gX6/iBlaINuBFkMS1AJelM5w2kj1wNTKQB
	 aJ9uUIQbMeEOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926A4D185F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788103358.14981.18178716929002853283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6594d05753d7801a3fba1a942da1fd37a37c62b37f55a96327fb2335665aae70
Date: Thu, 08 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767881033
