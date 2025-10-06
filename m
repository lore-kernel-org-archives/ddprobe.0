Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D64DA932
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759782595; cv=none; b=b0aQbSS+RwTY9gBNBhbLtTSz4DiDJJEgW0h3XDqCEJ/OUuR/3dka3E0Dr3wcYA/ZgVMuSncOleL1mEyuOL5RfAed/gRORlKGYslchAt91x0OzL7HgxM17n81KcGqxnPzi9A/eQidS6Q6vpn6UHbUQHCyPfru61/rbm799NsL3Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759782595; c=relaxed/simple;
	bh=Rr494yzNFKJnwRS2HHvjfDc9fWyGwuUBAs6DD5YmwHM=;
	h=To:Subject:From:Message-Id:Date; b=b8XhCfGEXGvCCPaBeoR3J/08vfiFq38STRkJ5tS3bXNm35U12Z78MwYWimXABoen0UlNMjXEx47ade5LvVjfbHnNAv7roH4UnV6Em+OAGq9s3GsdWPL6YXJYClB/Qic+Hq4AgOCkXJ3edRyaYb9JlZpvealJc8GkDNLI9JwRbzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfUFS5J/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfUFS5J/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0831C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759782594;
	bh=Rr494yzNFKJnwRS2HHvjfDc9fWyGwuUBAs6DD5YmwHM=;
	h=To:Subject:From:Date:From;
	b=CfUFS5J/xZB8k9oIa96DAnCcpx12I/HRr3cP5StARu0S198P/FPC5Q2ZSCR9gAoz7
	 bCbjyC5+xZ6sqX8ExQ4DR3CZPREYvT7IJ/mfQhQSYDpzQbogrzgCRkkS/g+ppb4RxD
	 0vSa1Jzk/fhI3/otfX7FcGFKw/B1Ard4TL4fAtejMxQAPczqRq0CcWPcpJDevo/t0j
	 VNJgZlMTlhGolV+QlfqKh3HKrukXd93Kicd5OOWaLb/fn2BOCpRBWhzk15guj3znOG
	 7O0Vb8CEU+HrIJn5Oq3O7O3WO/ofJZsrOfSJlDHoKd56vDcKUvk3IZoToP//rhdOdi
	 WZ1N0BLXwgi3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90437CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978259358.23540.1474517564227690221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3074b91a34246baa9390563b83ee6bc5e494d1e49aee5d598c7c4c0b09d9294
Date: Mon, 06 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759782593
