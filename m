Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DF625A624
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738644954; cv=none; b=RgrwgwHP35x2EwXnh97nI2fWGdfA5J6fzFQhLuZGBVA1w2BB+Kgr44PeAd3HxBcqHxZA/a64Rh+qCt1T7Mbk76Br1ZLNsnlYe4O+v3KUgfbwXdchGXl9ibxmGwck9RVtts48DCAy510ky+5Cm4EG7Rvy8L+x+UKfrc4FyDLeTpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738644954; c=relaxed/simple;
	bh=IVI4AzlbGjF9p6bcUy3kSMNGS6ua8lSUzHw9v4O8NTc=;
	h=To:Subject:From:Message-Id:Date; b=jrh3bdUTN44FeP9Pea+ARj4M9OuNEzLLXS7PKNFusWqBjRBlVactaWlrR206hmQI/zOpJdAJTzCZ0wTHj9I1/aEAgdWs+BiXrgXT5pIr14JEldZFOYybkU/Jx2nyCMzKS7b8DlkYG87lLEFSseYhPXM0fbFU43c3H1H11iKvYn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FipCTNH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FipCTNH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BF6C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738644953;
	bh=IVI4AzlbGjF9p6bcUy3kSMNGS6ua8lSUzHw9v4O8NTc=;
	h=To:Subject:From:Date:From;
	b=FipCTNH9aAl64C5TO6bmQ7njlkq+H310YtbuzGRKiByfltGiebCu37T+sIYBAk6yi
	 HzHZErJ9eLdarmfPf6CpyXXl8b7ICPHxHlaEkFUre01nGEiXhrGdiUwAxxavF4SODQ
	 3LPlZrtIn1nqcAJlK3bJjYTDIdyPfGJijW4V8vaME3mq4ZROAscsl5qG3luPEFtKEs
	 4DBs0JbCMPJe/bp1NtFOKu+7WTklydqxREVEOxh15viZRXhfDHtSXiRVc+WNgvGJPf
	 QmgE4VrCnK2MRzaQ/TSgWAbwu+IWz4DuDdEovr//hC8huBiCn41JJ/ph2P+P9W52EH
	 8Xj2z5/2hI2xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A186C0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173864495361.32353.9021848910253108730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980ed0eb1a1a3c5121356afe7062af27f2bc8eda3c0e0a823653a6ac2044d56c
Date: Tue, 04 Feb 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738644953
