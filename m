Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A0EB64A
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 03:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740454134; cv=none; b=ORiVYM6NgepIWKHhKT3uvwANHAGseZnyv5vpeJKgK+XcZmByWlh7nLzv+xgS+Mqc01c/jzRHGOLli6s2A8wVCeD+XCkDridZD2Dya35kwDmtVLfwMsZlHaLyXVRpwJ6/dKB09nelHDlRF0uy9XC7FZDfXXcC8FW+i1paUuy+pIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740454134; c=relaxed/simple;
	bh=s25OcbQMeYmEheAS434qZvRkM383TeEuhF0PQpyHSEY=;
	h=To:Subject:From:Message-Id:Date; b=c/iI+xKtztfARZxDnzcDVAyAMwkvU7jU3lK9TEm9wWnzb+lsLKdEZAEnl0zllOs1UfoomzqNQsz8mq8o6Ccwn9nfCXEIvt5Ls/G+miapYzBp3Lv8XVBUoNAnr9Z6BerHO5xupzIr8UwI5Rktpq7+aApZwCiVg9VTOnXiPDnWz0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUtvvxm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUtvvxm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1584C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 03:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740454133;
	bh=s25OcbQMeYmEheAS434qZvRkM383TeEuhF0PQpyHSEY=;
	h=To:Subject:From:Date:From;
	b=JUtvvxm0/050VVe2tfNBxoTmFKF+8CJE8ZD1CkEPa/9EQokG6+5tiiHHeJ/jmGD/N
	 DPmq5WtIJoIqV10Ag/jRbzxSNRY/wpwuolC8UrcwnDvFN9LyUZDyZuayA1vl5zugkC
	 5iGBL+GnQvBdDBb8mRzXv4Fapo7GIiaz9FjS4OLEjFZlYnhufrKCs5C+qWKDms4ho1
	 qmrVOh1jLKGXV2sGC2wePbWA03ChOaNpq04iaFAW1gV8PKmMkm9QNxojLNA5hO17Zv
	 kLlnci8hATmfGaxaphtg/koBOKjkIv/SKzQA1pYjw3dAKhUqy6Ks4rQj1p9Ju9FzJl
	 BB+MY4Oqql1kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9050CC021A4
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 03:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174045413358.2816.14269659693679958671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7439706f12d675f5522e3e09cd81db6ab10f87d96532af4f370d8eb0522e70
Date: Tue, 25 Feb 2025 03:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740454133
