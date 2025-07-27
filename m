Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDCC262BE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753577994; cv=none; b=n+MT58H5kDBthrRebju4eRPKQIS592EvE8jMzsZD/KRVKXYetnQDNjOzqKkq6WD6eqJuj3O3yOoFh7Y36VsOsA4bdMVVezK2DV2y/viuV52p7pMMKXboHjU+mSAfSVEuQQ7/Wq+eQBl6kew4ABJO+TVlcw7PufNBDwDKx/Pj4v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753577994; c=relaxed/simple;
	bh=FpP0Ep62d13aOKSrrS+O8OkUkfG/MgCLyERIiv8/L/E=;
	h=To:Subject:From:Message-Id:Date; b=n1C/hSMjnTzr+mUfSxLpctVeyHhQJOb/l7rSCCwmQspf+AS3xVxO7liqWnjIln6oWWWio+DFToOltTikVO9jSmtPZlm/pnPXgzDAE0v7AgtmhLSe7a7718DU1PSGKdhGgf0hbD00zeGWYAUA13YZcvGqZA4mwKL0AXY7uvBcYbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIL0taCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIL0taCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2555C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753577993;
	bh=FpP0Ep62d13aOKSrrS+O8OkUkfG/MgCLyERIiv8/L/E=;
	h=To:Subject:From:Date:From;
	b=OIL0taCgt3Q/03JCVzRZhGtHvDPHg5lAmeLQXx5utwxyX1MRHQno3601qRkIJY/E5
	 tSyfHyjPRoUWw5xtW/5s36tFkd+XVt6OMF/9WR53VFpKOy+XCNbPnB8TpThlkhuG1X
	 zuI2sISsSd2aqvmdJIhgWTMDkWyE9/CxEYGV7XI5OCBc+BKko9JmyPWx19USll0d3K
	 76tIPL6nA5xsDhw55Om5cle4rMYBYbc+Ny0aZ5taJGQYcbWzpceLzR5FlscScu9ewi
	 KkKAfiuwt91aMqVUryVCeYuQuRuYgwwNjUEcyDxZdns//GXQWrhkC6iLJR4q60PSbb
	 SwKn9tQnyzwyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F36CC83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357799357.13443.16727801448751704149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72bfcb200cb3329237af731ad27948e0ea5f714b6a19041d084f8bb34387e45f
Date: Sun, 27 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753577993
