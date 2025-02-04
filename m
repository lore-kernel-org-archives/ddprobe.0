Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1852AF04
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738629954; cv=none; b=osASmOlXjZh9CngLOZdICCA4B/wHud7p4EeYr+VAYFSXkvHbtw8lC6mP1UpNhI65SmlSmUNaGjdRQcUVQb3e328ZafmCRDmkvFTgViJP1XFE+8jiApfoG7fpau52SpMUyQzmSNdL8zvzJXxiRctL4bVIVw1TUgxPSXy5u5wQYeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738629954; c=relaxed/simple;
	bh=deRucv9WmHgNmnMEsr6xsaKwCInNaFaandayyGGmFiU=;
	h=To:Subject:From:Message-Id:Date; b=ZPzrZpLWoAC0KFVmO89lFD5jdpg5ideONuojqvptn7gkwqS6XCmKh7Usekd1wJimwX8XrIV5Pxpgs/GJCWKoXmmZjJW1SrRaY0CpMp+NL6D1td/a7PFpBNmtrSaKyozj7x9PPnppu2JsCwT7nd0lkbW8/VHCsiJeDIvqXl8ye8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYVFU4/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYVFU4/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF35C4CEE0
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738629953;
	bh=deRucv9WmHgNmnMEsr6xsaKwCInNaFaandayyGGmFiU=;
	h=To:Subject:From:Date:From;
	b=uYVFU4/Lh/H7bLPsZxJUSDWekztDxNnndpPJDYKqgUnfDwrmSH3C46PSnN57cFE8w
	 WvEHhNOS1VWSMuL1WXIssOgNaMyNRfaFLr3PK9mS/ReynOy1B4JLQG+2sIqkFrzivf
	 pceUbzG+tbzUgLytm3rVPqub/h6egiuwe8e85T9jZo2k2koXtVz7KWJf/0uJe0l/hI
	 +u6oN6TSh62Wckew/MkUkJkrpBDfSXGe0623UIOZIZX7yqPbSix84BQD14joSsz8pS
	 pjAjBOc+uVTGFuwiX7BmzeWfgEjH1JzE95gxo4K8paOKGLHp5VkzbNaYt+oNICnS/R
	 luaE7SvgYUN+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DD3C02192
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173862995359.26763.8380350922387410394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b6a6d71466cc058ddb5d9552f86b955be224a11181dce9689d7f47287606e4
Date: Tue, 04 Feb 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738629953
