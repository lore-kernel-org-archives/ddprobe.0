Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2198F6B
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748122194; cv=none; b=h7PHtCz1AWBev8S1XT9aXrv/6r2hZPSx08ucJXOpF38emtzNBENbvDlOKAvIZ4Pe8lXIW3shzCESwq501/x5unZmo3okorTik2yaDogi6dc4I+EZ3S+7w9R2wX3fpUGit5CRYj7k1YhGtK5hN2OFPygpzsQ1hGZvYlMeesOLbSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748122194; c=relaxed/simple;
	bh=hBi1OFWeMNR+3JlXECEX9lV9DU67VdanhCkQe1BQxs0=;
	h=To:Subject:From:Message-Id:Date; b=YvlyvzG3XopmILnM110491QnJf5uOAJIJi/l0QjBS4i39XbyFR7F0jSsij+PdLc5C3Xu4jUQWvzGfXbaMBZNHHC8jp5l9f4gss3BrNxq8/G8+XVmDrDl0fhNQt050nbnDkC0c4xZ7aZBHN0/IXN+C1J/3QJZEvFQ6KUUbjjkwb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOdpjbrP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOdpjbrP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DA5C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748122193;
	bh=hBi1OFWeMNR+3JlXECEX9lV9DU67VdanhCkQe1BQxs0=;
	h=To:Subject:From:Date:From;
	b=nOdpjbrPZ9xMRjtHeziaGMaXYeSAzc+7oBGmmL3QbDoAVm3deZ9CTiydWHUShZkpj
	 /KqO5KPrlTLgNY14hLE19Y2tf/oNJbRDmbM6KMY4mb9GxyKZ2+Vk5MD/N6O9YBD3of
	 Pvw3fspSDJkUrwsdQcHitkigozes+z3jQsSL96J0luYFZEjFvQ819VIijljIoU4uHF
	 9qKCCL3UZbOI0THvVJZ5cM7JEFUmbuPmP125Tbq26oG3B5kjso0QxFD47JMsLPVz37
	 847n1o+H0LM0bEPSPEX72YuLY+Uy8lz5g/SoTFHPsiikzgWViUfkhnZyG5HaGtQRfO
	 dE9JkJYnt9AmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9473FC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812219357.11864.11971263898572742009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc2fdbe8233abeb1d68ef598593383f472aff314c5a43ef928b563a9c4458a2
Date: Sat, 24 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748122193
