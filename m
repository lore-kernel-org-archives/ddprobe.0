Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C1450097D
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768352634; cv=none; b=T2OkxvI0/jsEERiiZBXLb6WPUV6wajehbjF5p1F0oNSOD8eA/L182L6Pb7HjzW1XZ1BdS26zgANQjUhpAn1nK0SY+RMu/r0HpK/uI74VVurHscNI0t5jUEKYu2nv09102p8H2wz2lO2oK8+06c6+WCVgxMoiE1Zw+w3nci2dfVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768352634; c=relaxed/simple;
	bh=bHMcdcvk/x6se3SgIfBG+EyKkgoIfw17rySeusaaPTc=;
	h=To:Subject:From:Message-Id:Date; b=cFOgbmIXJJ42pMoqXNe/5/nkHxEVrPsUbCiX6G6a/b/L9B239Q79R5lB6HL74/eSoheMvWbnszR8RJts8nWcqZNiZdgVJbZ1KTr1MD3QTTBrKH7DKs7vWJRMSKh2rRrZxjCg/wjL/xU6UXq0QaVUAOwQHEPO3IGWFsxGwndzOkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCZX1sAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCZX1sAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11D4C116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768352633;
	bh=bHMcdcvk/x6se3SgIfBG+EyKkgoIfw17rySeusaaPTc=;
	h=To:Subject:From:Date:From;
	b=cCZX1sAfjdUQCqmHT1eFEhz9yyda96rDRPqcUspEQ/zuUUgVLSKKQb8f3guG7flTc
	 FAXzlXZl0qtq+MIV7BE2DLaSp9fXMvORW6/UWW/WIDLbNXNc4FWRRCJlVvUsnTg4V+
	 43PkFNSTzlQzS7oZ4ejS58zokF5roe2/zN93PvkAYOS6jVhladAqnY+C1EHJR5Sdo9
	 f3fWWPvWEPMnI6u3g7oADvYZjTP/xZAcjwAx8s1ui+hd5Xj/Qyjx08w4R8eoRP/qmV
	 UIxFctSO+aTVYcDAAink5yAzuFM69WCHICF2iJVtU2k+jk5P0I9jswA81SnM59Uakz
	 T++cGVU0VqVzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FAD30CF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835263357.15921.11973976000482655731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e1c4d33acf33fe6443474532a5f95779f7bc911a1e1d60101eb86aaee6422f8
Date: Wed, 14 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768352633
