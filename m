Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156A42820A5
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759355994; cv=none; b=meM+fK8TMky60nZ123p5duiH62KpCUCgPpZO8HW1RreWBECIM1U0GnFBRMVjqKOlm/wLkpEqRtTBUx3IaF/vUcO2sHZDnlzl92rs6Qmldiu8xITzSjUprHgWOSG66lZhCa/czRAn2PivV0yQv4zHHlkgQklrzUgWFtq7FEBatvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759355994; c=relaxed/simple;
	bh=/yQb065+iECGolLoP8W6T79aCWCuxN84WSzlb/t3J84=;
	h=To:Subject:From:Message-Id:Date; b=E2g6VaGlJY18zBU6TSUv8mEN5Q0vf8cbjO5v8o/lyzufFX44lWiKw1RXobjygd5ckEYDPyg1nN4PJQMw2GMpmYFcsSDbg7FFCsD5pam6hJxrA+cxmYxZNcvPy6TTFub4PN47mH6+9AiyD9gGXSgTSZzWSTefugOMXNW78dviaqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SS26NXS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SS26NXS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2509C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759355993;
	bh=/yQb065+iECGolLoP8W6T79aCWCuxN84WSzlb/t3J84=;
	h=To:Subject:From:Date:From;
	b=SS26NXS8KZQse7VZZWaiLRnuq33/aFbbsIR6uAYOFFq/gSXVbu5waiOXmWKErpyKb
	 PI0Y9ZL+njombDHIjZgajjunOAwzKnxCo+2f3Jyc2m7woapXtgfu6ACKlOVzPkbiOJ
	 HethAP0uugFswzNJ4jNA7CUqw/Kw1/YE5eu6+pV6wQo0fAArWilgdu3ZVXGTTtUsZS
	 4+guolUVChD3kUtwDOKBz/zd9PrZjPEVYMlSIkzY+CHGay2iKhUDiosrFDaeuvAEBd
	 CojhbTd/D0T5N5vRc+sSmUyRYp/xMDPGA9vrlel0O/dPgKgWJVvrZS/1gYsDgOdfwj
	 G0nBVRuI4bRCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F110CCA472
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935599357.26977.14498936454000814937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8337f158d12dec8089a189a8735224bd2b83c52eb5a9b9cc7c20970a3c9cd0a2
Date: Wed, 01 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759355993
