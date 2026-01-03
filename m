Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAAC1E1DEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767444234; cv=none; b=lH8JEoO8JFnJ27rvluUBx2ZJFQ+FVA0LXxgu2mJobf3fg03UCL5kLmHUn/6bSJHS4VLv7TIfAFT0lCbmPiOcQMFpE0cZy3CTbhc+l7m2ITj4O1JE9LSJ2echm9EJGMnuHDRkGyUtxgnYCa7BNsDwbZNGK/FycwMNnV2tGHrIWlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767444234; c=relaxed/simple;
	bh=i8B162sDf078QOmbjom+XST3/e42o59vL7YTgdCuuLI=;
	h=To:Subject:From:Message-Id:Date; b=Ws2ou5eVIr0TuGA3TAzK/tzqBHSKUY4MqtVZY+NkhOm/OsM3CZ29YVtV2y7F+9YKEWECaHk0JUZQ4Hll+C0JvodFc6Xm/cfWfLEvYlJQSwCGrOWUMnLnoLZLoSVQhBGnyFxwaRpuux3ye5qfYjzk1ioLHw4SMp8aWiCwU3uEomY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMtH7Yok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMtH7Yok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D763C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767444233;
	bh=i8B162sDf078QOmbjom+XST3/e42o59vL7YTgdCuuLI=;
	h=To:Subject:From:Date:From;
	b=iMtH7YokEjuXbs5iKCB1aDwQuWUCnzO+LfqCfNGAUpKmiqxl7LBXFxTm81HD0bbls
	 Oe6x/7DqNf765+yIBAr/QU3Hrdmt2ApIP/cvIkobLs4qlzGTQL57Av2jwdYYxWk+zh
	 s8yP0zGLDG0LSOWIK37MSFQU9OgUOukjNpi+KR3AT9PGZZlpF+VldntkbfFnntjrA2
	 cWgO85Q1gMQC8IFcF4La0PQKQnFpYczIGylfioOq1L/ZE1VuXd65Cv+bgtsa6Viubu
	 kKYf3SuSrQIoIFBl8K7pnB1cJAjrtmh+CN0ZVJLIoKe/yLNq+UPCachsXsHaNb2MRG
	 afU8VUq5NJACQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F89BFA3750
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744423357.21072.15442593276459882424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb22df822bcb24f8fe06eb2637e832a2fa21182e28af2477eef76a4f151d7d9
Date: Sat, 03 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767444233
