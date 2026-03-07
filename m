Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1211917F1
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772909094; cv=none; b=TCsnZXFBEBkRSNwyCaOlyOK0eHiE51lvQ1DtmNYM0tYMKWvu6FYRbw+fAYep/iUOhJSzuoTloEzEw22V00YTetP+ADyFNirv8JmKONmDSKDS/sSx8xyVBzul5c4mjSz2giIdyQe1ZoojCxWnib4cq5oKefeyuHyponbqlR19BPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772909094; c=relaxed/simple;
	bh=g8tiPJPkE3bn1JeKc3NscKjiI/xiQ7arQvzKojkNNkA=;
	h=To:Subject:From:Message-Id:Date; b=C3lSmGrSlboGpErEMVXhDWiTiI10V5oW4l2IBwPaK6NSYjbCpdp/pT0ODKc75Cay2L6BRF0UhyviK6Y1MklgZwSIkExe1LTd/DTEEu4pugNYY6pfQYFklGvXQVAJ7kDIFy9/w0UWbmQLIlKFDhYdwx4hiM6v0Y0h+zHKJH8rO4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oW8ByEH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oW8ByEH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DDBC19423
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772909093;
	bh=g8tiPJPkE3bn1JeKc3NscKjiI/xiQ7arQvzKojkNNkA=;
	h=To:Subject:From:Date:From;
	b=oW8ByEH4VDLyiN3rjIraySq9gSvbcEVswipWYavrAKdMEMUSmiIuK0IBfCsgPWPHA
	 vAMbVc/WX1fvMJIS9qhXwqyjUhdZAjUeFHiQm5JF41uNo4/D9UO6Y5ciXUc5MRDn7p
	 y17yWYwExf9W/ytLAJiZIdGbCQw/aM93YcTUH/NVLIle7biBB/ojBYjJ6rR9aT3D6h
	 2W85+Hhyzqgx4DgCE7Upe/+b3MGrSoyijUj/YdZrx5N5JkByuwHz8snG1S3ckwCpa5
	 bowaQSVh7xUpX/BFA2QL35vbtQCCWCVXLZ4Nv6I0J56LPD5xz3AGUG8tCB4YZZuH40
	 QJMaHvP9fkFtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95028F55105
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290909357.31396.8179351723084299415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c390246d0ad0e8c7f2de6b49bb95e6877faa7530fc7728159bd56ba8a5b86e6e
Date: Sat, 07 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772909093
