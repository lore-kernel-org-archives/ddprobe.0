Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F0B2F25E5
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760389194; cv=none; b=pSgk2/mkIWcsm+6X7y8Aez1xo49PKMqSzIYZS/bblkDHVgMF2GsMpkfF0OCNNMZLUJNBXeioQfqa+j/TwvJvsUE4pdUelPf4C6qN3zr2wch7LInNYuH6hUy45AnlZ2pbRtLIJrTIMQYCQ4tvTDlXDPQih5JCX3/65jkcxv1fOho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760389194; c=relaxed/simple;
	bh=n2iaPVGTEOp8HMzryBgSm6snyUbGVdvX2cWUepQMzYU=;
	h=To:Subject:From:Message-Id:Date; b=tArtz3l5RPDnFYaPs+L2cf9LFZCiUkJ+fjPAmmGLgnr6J4oA1QT4gu7z601DFxeAA9jQYjzx1pysxklFLPB1QRq3Be4kXlnEJlvSIF8BLTRggJj2C8d57sjdXhhE5hxoDQy+5ZqdqQE6d0wBxNmuV/JFwrWaZhywlKZPCABZguI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTXia9ET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTXia9ET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17FBC4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760389193;
	bh=n2iaPVGTEOp8HMzryBgSm6snyUbGVdvX2cWUepQMzYU=;
	h=To:Subject:From:Date:From;
	b=aTXia9ETwlXp6rXAFbNn564sjyCQ/tRZPMJ2KXoxlT0U76myR55lI3zvsNm+71V9p
	 7g4aBCQ4kTrh/CjGmCksF7V37sobBPQuzmtCqBxhhuiqRRIEGGfkmH3lGutjlgE/JP
	 +Dd5xNy9Wn0WG7Go/JXR2j6E2rcpMc7flFmspMzfgu+AS3lI74G6hAmjEgQ6HtkBMP
	 D9jqfidWXtXMuOpBrc3rSvuSw4ZCpkfgBkatLtR1MguR6qfgnwNQEjPVzmg5Rdtno2
	 LsVDrcDk/TjJtR66EjjmEMSGtDVCRNpOjKyHU4QPfCAg8EOMK9taYbaT3LIAd6qgdV
	 6+82ICbcx6EQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F7CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038919357.32539.11659064001737893809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05b8936c884b1e45a3b0c0d36ddc56855a4b648a19bdfc21bb9988f229cfa37
Date: Mon, 13 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760389193
