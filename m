Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DCF1D1724
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731576354; cv=none; b=getM/QZXOvgvC5Quq1Zv0IZrNkAttyLE77u62b/7xgyJ7om4rmm5PWjgiHMwQ9M0GLx7yAYgrYM4i1V5xS+nsmJewqizNoI4nC8bAAdM0vaj7HEGUp3is2k0/j9vZwky9cT2bgSiR+6jKbbPNC8C917be/HkheF3kQ94N+2wVno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731576354; c=relaxed/simple;
	bh=hMd1fEHu/INdTWSyP6IH/gbOdRnIXDiDHO26gt/PwWU=;
	h=To:Subject:From:Message-Id:Date; b=HbvdwREmefAoK6EW7W7fDeBV/NHZvq0j/JtV69k+ph1cnl9K9xwl//DO5uz6MQG6QrJzMFp43SPeRlNuJ6806JpLzkzTAFjMrkvGCCV1VfOPlWmptZeekcokjTNPGS5k+g8oduoLuyEHjzIYaJfS0MT33z/DekFmko2f3ePvPT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIAdxp8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIAdxp8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE422C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731576353;
	bh=hMd1fEHu/INdTWSyP6IH/gbOdRnIXDiDHO26gt/PwWU=;
	h=To:Subject:From:Date:From;
	b=XIAdxp8ZBJ0QDqunGvjrxIoPVWRWxiW3G3NIYwYq6X9w6vgtOQlyd7F6ycOVvZu4x
	 hUzHaROLgV+oz2I3PKBLQ6UuPCqZu12h8e4BjfcT88GmsCOFLvqbKWtfCekgfbYuJR
	 xfX0YkFj37mqaMcQF5dcKCvea4hcT/D3Pymn32DIEko7kVqgtL6l9ZJ5FLNqU8RQo/
	 2XQSuKiVD/jK8f07UNlg4ca8DlTGKYitpCEcSNih4HXtVWrHWGHPHtdQhxoNaKYLUI
	 XNB/fzLkE0l9Q0g3Nho0B7nbWmlDpsmj27wj2Jj5SvjNH3KILcUnKlnxJPk3iL/mhz
	 4cvgH/XOEtrQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E428D65C63
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173157635362.5280.3068360003224371679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aded62869e594005d98aeb72442161c658ac054c46fc1481d2bdafe136a2cf0
Date: Thu, 14 Nov 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731576353
