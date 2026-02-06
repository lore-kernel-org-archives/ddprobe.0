Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163E2136349
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770345234; cv=none; b=aP78OplGbUs1LXn58c16xokCMHDzlT5YvnoHRjDwxhVFmDgbaKrIuIz2E3s0/60VdazzBQUqBO3OAUwpDBP6TJ2ZNAHY9XwvjSlj5cCuuOrdsapxOw/Fr1HCLzAT+yDkQKQMdNLl/C3IdtDA2Xmuk5WmRRX7R+HehNXidgHfYdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770345234; c=relaxed/simple;
	bh=9hcwMkJy2PvG+fxbt0OKTxSC2B4lwvq3DEchQHDIFUQ=;
	h=To:Subject:From:Message-Id:Date; b=jZieKXqpfK4CcPu3oCCL6COCcuMncuHT6CBdk1i9N2no/F1xZ71leAxbQWRotvcP8UaV8n1lYi2m/Ew9pzj7HLwYSYSPTkbI1W5KKEwPZqauUopC0wjpJ6B9/RmQcUVsCjeORnZGcU28DQw05cI9dvGJFbk9+1pc416kxqNCmEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dP5jup+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dP5jup+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD12C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770345233;
	bh=9hcwMkJy2PvG+fxbt0OKTxSC2B4lwvq3DEchQHDIFUQ=;
	h=To:Subject:From:Date:From;
	b=dP5jup+XujyoPeIEVtpEposKhSxPbE2z3+Qrx7WpdpLfXqD9cZu7iLsEpw1SIZuBt
	 AvzRWVuC58qw94S+GwIlSOM0gvAfNk0TO4pixSNxMtXlFWSayIY1qGk9jquuVcL6TJ
	 KzPoc3BP1fq7Sh9Pm97E0SZLXeyGB7E5U+7vMaislPPrE8oKuZRgcLdaedjyNbXUub
	 Cr/TUosUMe21/qJCLRnyypcqpiqa70Zt/OtnL7u2xtAXnx7Uw4A6GdHeeKIEfcRucw
	 3aVoYUOB2y0n00HCjdCdY91deOPRfcc8uGnEYgQO/lc/ZcoTsVJ6iFgqkbOdy2SiJ7
	 Ai7EiboJBALbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C72ECD9B9
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034523361.18121.17160528442143605900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6a3b6c3e16dfefdbd211eae91c04860f9aed1e95cad71a940414e2e08dba7b
Date: Fri, 06 Feb 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770345233
