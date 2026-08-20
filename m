Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E84B248F4B
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787218234; cv=none; b=UatamOq68USh5aE9ThL6SDXxADW+I6rVyL6aFP1hQgwNgytD8Gjl+dXzfnvs29v/ldU5+rA50DFX9hGn6sZM0aB9UCcYScC783n8i82vLtFpxZR8kfkiZMlza+/iDO4meHHFu7md6znwap1tb2dMcOHD++O+6rIse19iS4Trsu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787218234; c=relaxed/simple;
	bh=1BmxS+KdbLidP1yu4XTZyYE+z/MuN38Zml2u10ELyzo=;
	h=To:Subject:From:Message-Id:Date; b=RgCp9PJMpvFho5Dt3wmYEaaTBBkhww7+IqyjzmsXwvzq8DOKc/nyIivoSNzyWBb0olRRnRJAiqtSytTnIXcjEDCMGX45YCR2PcbPgfGZqwOzxu/AGwqJ+VFOgIipppXeWzX2NqhCP57P/TGPMHjIM8ZqRkvuuI7UekXIXxNipiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeZWuJkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeZWuJkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DADC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787218233;
	bh=1BmxS+KdbLidP1yu4XTZyYE+z/MuN38Zml2u10ELyzo=;
	h=To:Subject:From:Date:From;
	b=DeZWuJkVmHtEkTOk0R0ZTmZoMhyJnYtLU0rG/cPFcdmV04t0JhQOGpDktfU7Ap5cx
	 7nVnaNeMMa7XtwCXcxLiRawENRszE9GsU8PxlX+3y0YlqpI9ta3dQJKlRccJ5e9VCN
	 80rxwHS/fYY1OdOzLujL5cu1P/eBkmi71jSiH+rVgaysyF92ZEgsAtTqE4/yU+LrEm
	 WIYizfXQtM+K9IanP64GPR3u6SDCpqUx/eF1P58bSJGHs1pbs6Cyen4eH9lNunEoK7
	 iASCMGLCBIe6E8+Ya0l5qkQY+d9dM0DqHmi9yFUTQfKyQhmLWL/ce3YBnyiOGYfHCo
	 +03LN1slKQUyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD253C5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721823370.8811.4537832990305113818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed9047ffac9be15503c7d4ab668ef388d958bdd3c0940a4ceb07f2289b282a2
Date: Thu, 20 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787218233
