Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D583C33B966
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772768093; cv=none; b=sYyRkNo05CYx2f3/OGt8+V+YKTKWngbjjTNabg1zYStm77qY2pza2IjDki4nylW46vF8DJ0izOKv+8M9khPFm9rGZpDO83y3uL7hzuUWdtXz1yrDGHlaaISVh4jYNx2MhFjnMerDKVV7buN1IXjDsLU/f4uUpivfezvMsuFQeCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772768093; c=relaxed/simple;
	bh=jzpNi37+cpXVp7HyskxOO7z5YrKC/fxYI2opWJlab3M=;
	h=To:Subject:From:Message-Id:Date; b=ZNHlKdVKglUfbxBXrxxMvRpvYfDxTAPMF11y/qPR1TZu8cLfLV8Sjo0+0qstZmrZE0XABava3XfyDkPA+lOzk1sW2d6IMJmIHNO7SoSo+dgQdXEUb9ABIG6V3GfFDt73V2Do9OdZles4nlYs9lDjb2jHQVxOrmPDiGhhqk5S+Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yql5cXez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yql5cXez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF51FC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772768093;
	bh=jzpNi37+cpXVp7HyskxOO7z5YrKC/fxYI2opWJlab3M=;
	h=To:Subject:From:Date:From;
	b=Yql5cXez1vGkuOEwXCmGxJ5xstZGf4GtMcEY/gXkeuUdukyff6/yLXEihpj4Ynl+x
	 NkvOoLX3KgevSTeMGPjrHvB4/uDvqXRUrX86ku144zmme8/vLLMLb8KdHU1nO8CneH
	 WO3fJY8JRHqQLVDk+3E7h7ZyGc+T6M/3wwJUpMED4gKrgLPz4s1QnM+dduXpqglj4S
	 seXBhwQ2zleOGmyCnlrdqj7K+aAjWcRq6is9bD+Tn8h+GRiZWKEJCdcWHYn1/Csa6W
	 /BwmxeteCezAUaIGWemYe0bn3MAcZSCMP53lyhY/mCCEhxcNQKovdX/xVvO5LvtjqW
	 bIULUPQRxdoAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08E0F513EE
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276809358.1648.2168204013886173118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dce2b031f98013b676fafe90410c0212b59f7990f0032f6f7e24f0a9d804f7c
Date: Fri, 06 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772768093
