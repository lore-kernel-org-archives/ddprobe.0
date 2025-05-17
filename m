Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484058248C
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747498795; cv=none; b=OFp8Z5fwGeOaSM0mTD6z4KTleylMpoLmH+Eq6W1m+MMrQ0fg72NlSycyDAyOZeOGa3jz1j5AWOJhmbBTg1AGqkp8qWqD6bez3zTg7pNhLTNcCWUtapYTrXdqrusufwhTMnhxvU39Mjs1bbS3jA9JqNMJeuJ19ctzROUoYRppq3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747498795; c=relaxed/simple;
	bh=gz1lF43+xplBF0IC48iSgp91w05FpzW3C8Z883rXIJQ=;
	h=To:Subject:From:Message-Id:Date; b=mxgn2kR68rcK1egz4iKtDHxK4xMYWPwpuYvE63Ou2r5kb126UFE+RB1isfPHglmhYy5lhVB+aCrYZFywIcU3wHy3pjdUeu2Dykd2jzqR+pxle8uqW+zW7k9quaKvNcq1As9tTyLujGe04fsAhbl7j98JimWPub/6S8YlKSj+sKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4ckcXbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4ckcXbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBFAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747498793;
	bh=gz1lF43+xplBF0IC48iSgp91w05FpzW3C8Z883rXIJQ=;
	h=To:Subject:From:Date:From;
	b=P4ckcXbhTE1NnrmOTLuOdaaIe/ZIAgJBCIuJ/1qgCzfBJUH1ZoZwXGYXleOTzFk4R
	 JQqUrUG39Omv8GJtSslZMh3ndPTjIUOs7FzOB+xxzuL73M6h1J/xOvAwcLFnMmDQMU
	 /2a2EWUFyDPEOjQ9nxjDIKKGSS9psxXMEWDmbQKQ0SZ08hAmqSiovllRMnZqagEZzK
	 I8inyCCqB1ySnyaHNi5mqPbOV8L9VyN8F9Ce+rsc638+mCsTyh36tx6O2p2rKKPLPh
	 IEVE8DzZAF30CvvFgF0sESpS/pCnaScHGvjahK+IekiaO2ZyoecfRNA3dKNYplJC+W
	 BB8V2zGInX+uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902DCC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749879358.11577.11184273902091194611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acdd359e0609ad039d946642631700b08b61021af4d17f790e987e098fe5af1c
Date: Sat, 17 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747498793
