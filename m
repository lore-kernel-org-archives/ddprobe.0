Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DB31B7E4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720902623; cv=none; b=gnHYsGg/bjtiOFxQzbOGFfRJhcBAsj+GhC0ua/+rYDgNC1fYEcrIWnNAVs70LJ3OrHFeVbxfxt7YhMBAdtA4zTj0hD24Zx4bfpjRwFskcGU4DZHpu/OBubCa1haC94Al+7ggi4VH2E6qqkUHWVlm/GlJxBjBI/bku+X2vF9rvLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720902623; c=relaxed/simple;
	bh=EM7TsPldbAXYcV3YcKQruQ9vMmxIdKqfby4Lkfq4w80=;
	h=To:Subject:From:Message-Id:Date; b=l+Be8iIh7DNQuH2npMmNOTi9waIV9bOOIAzQ10h9wUWoF+v4QlP6+fiGlde+v5t8GIg2F4+7T8Eus0uJKluaZIvDF/479/7VGwFVpFiY+yX8bbMD1D2khZhktSfkxQzKk/UZCfI8xQrxCzd0xWNis1avVz3GgHG2FbFQrwTGapQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7LHQZxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7LHQZxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA886C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720902622;
	bh=EM7TsPldbAXYcV3YcKQruQ9vMmxIdKqfby4Lkfq4w80=;
	h=To:Subject:From:Date:From;
	b=U7LHQZxfhu8JBuXPSAq1CjU0UbJX0ihUCkE88oEZ+L/bMIeGow6nQd2FqEavRIEK+
	 8GqNfkrPR50jAH2i/oUstydUf380uUPeK6yNZJbOpswT9C9syE1S9Hbc42qPryKLmX
	 UFgYFC0yBX4Kd4Z+Tnb5/K7gwxSIssZV7sndPOWIM491mCfHcFDmCtLNDbaWZkTsK5
	 2bp6ai1IZsK8P9lihOT9kH2ReOLvTf6BcuOeYyVtXMoPZ0UsgZFwY9aqm851oi9eFY
	 +VOonZMDaQXF8BzPx7DgL1BE6WVdLtPq46CLskCoG9w1wv56zw/2OVRM9mIZcCg6Zo
	 Uli7AUvCdYHoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C351AC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090262277.25752.2047699932245631393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2b6fa4c9a7023b7cad13fd3b98cd160f71cd3f9f467857b9c48af6d1d0a340
Date: Sat, 13 Jul 2024 20:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720902622
