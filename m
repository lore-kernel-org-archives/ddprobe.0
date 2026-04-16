Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A2A2ED846
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776375454; cv=none; b=MFESveVXt/1CfSeT69zHYzozPL2ZQakw1FMW799ScLoHuWtWrCjxBUg3kB9IOMwkxRSv/5ndx21B97pNDF48z6r/mawChQcx5MBWcxlnixMSbFCuK3Q3E7OE0q0WBTSDxgTlgwiQHdVokjcUqUoyT9+xMOJCaRByFB78CkJou4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776375454; c=relaxed/simple;
	bh=t+7QUDv88WXd2H6JMNiuQ977AohTYGS9OqhVfscBbIo=;
	h=To:Subject:From:Message-Id:Date; b=SteoORo6S9OqwfULhzbNv1Vh4OrmottMCw+37ujhzXFjDQytYUsP7KN+WnCPr9wz2rTd/SJjxa37fmZjAkkycBsvoEnANsj+ZkwjnFJUoluTTPyoF0O9NqWrQr/FoHFX5qTNS0sr+58oO1N4nsXQLEORZ/B9tvP1P+f1koQgMuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhmZWi4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhmZWi4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2761C2BCB5
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776375453;
	bh=t+7QUDv88WXd2H6JMNiuQ977AohTYGS9OqhVfscBbIo=;
	h=To:Subject:From:Date:From;
	b=LhmZWi4iFRQsG7hBdNQHwbY/DAqQUVu6ELOjcmM6YylRin5kYCkfYiSXsLG0R3A8u
	 h3OsasQ4BHo8KZomeU1w30+7ZggGmBb5pQr6UsarLqqWy+mdnfmkpbhrTxLoBsI1xV
	 2MEs/7WACmHmnBVXtWd9VZTvOAst26zdj1RTTq++bW7odkPE+s0J3JPHeUxLwo3HpR
	 hSIrLXrIp3TKBxoWe/wuxAON0ldI3CFOG1FZ4g/QWGIVevEbJEUrevoGxUxpt3fK/p
	 LsfvcVZGVlQ0GtzghUMN41Tt6ZjZAWl4ukv5vB1kD6DFp1RT5Vlis87tMaz7WPN3Dk
	 ZZDL7C40oxCfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5B4F8DFCD
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637545370.27988.18150978402073984967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5a68976af11b5ac6df89bf0737c26da4a2a4c0e294383b1c82b7901fab4e4d
Date: Thu, 16 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776375453
