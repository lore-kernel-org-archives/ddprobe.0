Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC85377007
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780316674; cv=none; b=IKMNjlFICOH1e8vvB8tLKCxX0KG2wkXdrLjAEXG8sqod0QXuPNrzy8fgNWQAmF410SSJvlS1MdDYhF0FE6Nzod7R+ly9e8EWJFUhcl+8SZCockSmPF64cbdqFFJI4DCSBOeRP0CmtX58xjAP0h0xpKxS2zibfoP35U/Ajdj9iYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780316674; c=relaxed/simple;
	bh=lMWO1cvXETuSkr6SlmAvAJxMP/BRlInlzh8kQRJVwXU=;
	h=To:Subject:From:Message-Id:Date; b=SjyK2nrVtnpV0tVYQ8dJTJKZEA5XXUb0AlQjZihQyL7W04az5Wsdvc2cM5uI7nzDZBk4I5NebfB6oTEn8BN9XmsDUon44rCiF+TyhXtpUH5dmKdVW8+1B3+98lvIO4EaVTxS1SFGNT52qPouYREWe5uFuy9Z2jluZZcOhrUoquY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOIqsopk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOIqsopk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DA9C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780316673;
	bh=lMWO1cvXETuSkr6SlmAvAJxMP/BRlInlzh8kQRJVwXU=;
	h=To:Subject:From:Date:From;
	b=nOIqsopkhezcc+7Js4n3t3BMsZPjKwyri0PLlb10QrtI/bqVtV28TItgYsKsfm9Wz
	 vLnHipNyqGsasNiZrhrhnR0gP+oPkgkDECF6faZi+h3yC17L2+JrcZM+LzxBQaxh/H
	 LyuJwrnfmbB5tJ8RaIcILagrDlgDCYOfRZnyUhOaBb7x531ys7EwE8+IZwRidkvS3s
	 SzhfhX+o3M19H1r/KuDOdqN28jAm6VTjg/PX2gkZzn2e6CqGO8qJg9lrHuP1xaWH44
	 8BBMvU6t1C0ZzibK3Fr0KdgBg+t1hjvFMotls7wAyFv1cg/O+Q5NQ7AeuyHol7913P
	 G8/uKc2T71JfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D77CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031667368.13660.13324102752438527256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a67991505a211f4090c000207cbda14149eb3e268a3bfd83c9ac5f47aa71ae
Date: Mon, 01 Jun 2026 12:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780316673
