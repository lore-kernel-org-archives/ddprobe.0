Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AE2275AFD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784342314; cv=none; b=XrOFsSkBG4M0nhdip1G3AzTTCLhAbDcI7/eZVOcOrTVgOmiO0l1RPwgHuPnYcbd3tzuFucYQF0iVvnHAipTXpzLviYMcNa1jY2oJVSEHBsLKqbuWgOsFaZCKXIhAJf+XiI5CfhxYQqxGKVazPAZTDW6R/G2QeewJI+4eBVAt+Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784342314; c=relaxed/simple;
	bh=FpJqqFlIMSPej8xgHl0w+EStKSOfUBk/Hy2MCbyq8iM=;
	h=To:Subject:From:Message-Id:Date; b=Kl3AXiXDX7LDfBhHH9BTm4x4MuVkdy5eOWOdIPqWhV3YwVUNrIsSEKJNh2pI+no1wa34jsKR4evybYVXIPvAt27Z97oQpD7mg6ceOdyAjZ5/vXCrL6mSUqrBiUH+O0aUhhEk2coJDEHUBV9lorpjeEZKDZOhrqcBYenVBeUw5bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQbBkAkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQbBkAkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF46C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784342313;
	bh=FpJqqFlIMSPej8xgHl0w+EStKSOfUBk/Hy2MCbyq8iM=;
	h=To:Subject:From:Date:From;
	b=NQbBkAklarBxVKFSi2EbirIhc1xwAjOURwhJcLp6fE5sXyW5WkP5/nTEr4jINfnEJ
	 BGkYn0YQblA24WgB1mTz5/6IKqqCe4lR9m7q6EOTD0ENGONy8ZQ7MXhCcnVZoom4e+
	 M4Z3UJj8UFMSRbT0sIgeU57UBYxSF7/SqtMLPZ3Q9lUSRvoxmgnkFkmQY6Xkr3xQyk
	 w5PLSuPn6I1Q8jz5E7+RLEk1WDKMSjtOqAfAnZP4STjw2+1a1AcUPH62/Go6uVTpcX
	 II4HCKMnwTyc2ms2/V/C9WIg6qQk9Y1bhSCGpjRQSrEd2tzVWMw9lCvp92pyqEE2TD
	 9Cu1TNw1Bf23g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A949EC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434231368.10691.6837383244606207160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa94e7d1812b443b7da3ecc9b4cde6926d1c2fa04de2a6df0e9bb2f108e77ad0
Date: Sat, 18 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784342313
