Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DE3231826
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756496995; cv=none; b=GiZxDXwS0BbunDmjql5uavVfTceYgNodiPDlcwCjKubjftbf2PFAQeoJGi5359ZVWuyeKHj991ses3jzyQZfEDdwdJ2U8WYi3xkYILCxtvTNR3DqZSksOlwEs21FFs4F18No73HB772AIozUxY18biL2EMqUUAi5Y/Eu1OCiSzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756496995; c=relaxed/simple;
	bh=lh4/hxmj838VAv8Fjbhy6j8Xyi0N/IoZ1OrVWgrz9FM=;
	h=To:Subject:From:Message-Id:Date; b=hxtSN8hdx3+EHKZ1zzUHM9NfCqIe10OWN/6Ig5pneWAu3F2j9Gtd7UvlTgJFtuKD+FOyx13kqUqYVN5DGf0RIjsa1HuNK/u2wkYU+9KtRHwFtl5Dkad+M4OjYjmwCS10VaraupD+eG4Wl1OQmQxpfMModhc0Osa3/PfgGqW1apI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kojhbnkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kojhbnkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CF8C4CEF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756496993;
	bh=lh4/hxmj838VAv8Fjbhy6j8Xyi0N/IoZ1OrVWgrz9FM=;
	h=To:Subject:From:Date:From;
	b=kojhbnkYCM15GwIVoCWOPwvcEp4KcnxrM6l0IC7shZ6uX+d+xkWN0aSXEOpcVtCaF
	 F4+oMos1dQgh33mdlQRuYdhwK0BsynOVTDtoZ4sxEca4jqzbetNaC0i6KWQPmJj7m1
	 bo+WDm8jfFp6n36iuvmbwMVLKkgG2+RChc5KqqBfUqI3FM93UZwLoPZjNkewVNkYgq
	 ZAR52fYfFA+P2Gm2hvqLyRURm0oxND4BKjOR/YguCz47eCj4ltsIrmfYBdnZAvEZeH
	 jugZvEZyObEDSjKlgcMXsnHCVbaQjfWJqIbktVz1Lox9Lm7IURsXHPxd777HChbQCs
	 uSLjCIdqNLIfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C993CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649699363.28173.2586049256549178633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc0eeb8eb6cfe372c0c59265308db742489655357db39cfa744d7329ee42acc
Date: Fri, 29 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756496993
