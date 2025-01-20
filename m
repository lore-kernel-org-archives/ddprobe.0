Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3706E137E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737402354; cv=none; b=XDUJhYrDL1FzpRe+Z2UgLmo4Y9SQMwVT+A2eXoeBbjV1U6Wl1MRTItW9C6Fv0Cgym2d1Yfi+lgoBYLsEtxf1iMiICKaJNkix4pGt7PhpNShQVmlh9S5EWvifqX8lx1NXC2PYROpcLRrtEoO5TNpXCxd+2xBCyuQOzBgkeH98h3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737402354; c=relaxed/simple;
	bh=ePXesTHzQidZo973qaQ6QAcnz6znO1p5Hu6KokjrVvY=;
	h=To:Subject:From:Message-Id:Date; b=OpomJ/M7creaxjX5xf+8DHcI61oajxWV0+0+6xDbTRw/Wi9+9apUCpiu/A21tqlJDmGSZIclw4hwqp6G6wV2OkIZKbGfJJ+2jRNJBMz+m65szYrj9KZPO3fWqFJamHpOCraHegEVRoqlNSvwpoYmbg+exUae47Uryb5FE4v4jrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1qGZdJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1qGZdJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDB8C4CEE0
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737402353;
	bh=ePXesTHzQidZo973qaQ6QAcnz6znO1p5Hu6KokjrVvY=;
	h=To:Subject:From:Date:From;
	b=Y1qGZdJaRfkuC0pSERoALn1cn1MNqgApoXFDvCKhaDdY00akBm84B6s93ddDQi8a2
	 IKH8tiVDZ5irddOHXXbx7RKa/biLapJ6wlnnTbtraiOqolaecWehwVWtDorVhaUNQA
	 1IcK4/6aPtdnO8VCbvPEs88FGB6J3yOQb0HIpA9iGnC6eo/M/C6SAV9TbXGT1Hrb8B
	 SYYZGWRM7OvF5aO4zeqUPX8tCOKTizYCRgZSOqvsYu1wvvAe3pSKX6xfYAWI6d6Rjx
	 OgRB3VTKRY0VCnqyfz2GgD2qPnplAQMkjS8GeVBVL0SpOaduX9wYxt+kx+/M5MgOEA
	 L0VgyU+8iQvQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94270C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173740235359.32745.14627650080421179077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1bac274cc6cdba6889783665480e2cbabd8e4907eb6aee7d8d98d610ade063f
Date: Mon, 20 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737402353
