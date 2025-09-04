Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16641308F1D
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756996194; cv=none; b=MIOjxsN8pmo2J88SjHSbP0yKjQbQAJzjg4aVDNvSxVXg29GbfkOut/fgngBpd/OI27EMRXaH/Ky8c7rqT7Dyg9cs7O8xyK1273Tj8epreLi/huPEOpIGxuuGsx9kuR/60gxZxf6VpswrCgEp+fnnR3iFANiKLWgmFSs/zu7DtJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756996194; c=relaxed/simple;
	bh=I4zT0bzAG3CZy+qo4pG7+wjZCx2BxfL2wr6r4Pz2HOA=;
	h=To:Subject:From:Message-Id:Date; b=C6dDfGdIvf3v6hLRX3ioWCebKEEGleey7JRfUthSxNgn1cKRY80jHHelWFvT5uDdlbkVx7enCp4iC6O+Y70hMENE8H3zxAiyHx2dEua43be3ITnYp90F/yukVYH25e60lEeGwMFygwx+zbxpVLn+Ye2P2vIPk7swGEgTI0Ic3u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2gk7OOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2gk7OOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADECBC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756996193;
	bh=I4zT0bzAG3CZy+qo4pG7+wjZCx2BxfL2wr6r4Pz2HOA=;
	h=To:Subject:From:Date:From;
	b=G2gk7OOARYM5UMIGE21P9rYVOis91PZWBz6tHKzeaOb3FKOIaQN7m7WwCJzPlE67U
	 gz4tRbqs6o7aaTekvAWI7YgO+3NIXMpK7W2ITn2EIimE/6xTDgpRSXQA3AWqjhgZib
	 fVsjzn+erfccz0quQbNZx2mJTfU4yxCXtWsylb8Yh3NiP356In56LTuk+oRc1Q8ZkU
	 tqzGHLlJmwAgBPMjRoraoXjy+Nmq2kiyqOipsqd6ZFosZAGyXannigkZEwMV70Lk0C
	 9fLBLEWDcoIxg2kBfkJ8kgMEtCcIT9Z4UwevUf5v91DWwoihCyQeqMFL++QeBEQ9FO
	 WXiwPWF9Bn3yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0CDCA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699619358.7154.13783029512742810125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b922dea9868cbd3b34d9396cf4f95841993d36c02049b75e821c0d7fba3af7
Date: Thu, 04 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756996193
