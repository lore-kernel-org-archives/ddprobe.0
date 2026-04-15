Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23316384254
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776281254; cv=none; b=qAbK66g2CxMGLCTR/qnH2SbeT2GqE1R7jyil8an34Gqy7MHl19P0+FssIXqrym+3rimvsdPMjvX8/MeAFT5lYuarXbVOP1A6wnpvyKxswWPSpf1DHbZEPs9TQb+pgk1gnQzDIIKVGngJf2HrNDKGizgwulhXUrwD8AyXr3CJXPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776281254; c=relaxed/simple;
	bh=9xO8YIwZkQ65c9kE/jT22Yvf3NyN4LzgtzZtP7O8fGw=;
	h=To:Subject:From:Message-Id:Date; b=lbE92uHgMx+PqjVjU9bf/zrsn459yS64a0dqf6U5x2OoUn1rBUb5Iu5JERBAfm8V+u5eP1nx+B5bE1jNDJWOtwlFQO545JcouPZQmOnnbab4npHmOPuhrCj8H8aGPKsfeAB+uaQm8LEk3Whm6ExEhJ7l4Ko7G3I57d+pDFX13C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmjBU5B0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmjBU5B0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E7BC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776281253;
	bh=9xO8YIwZkQ65c9kE/jT22Yvf3NyN4LzgtzZtP7O8fGw=;
	h=To:Subject:From:Date:From;
	b=PmjBU5B0NU9yrmIc3+YKhEvcXPx+1o4+f9UuMZT3dd8z0WW+5IMieWVymBmmsJT+D
	 yF49pdETqZhQw02lcQS7FyebmG7JfwA40d0AIIkvGULcRJTl4P3zvS+EKIc3Z0My2E
	 LH3YQNzFtBKIL50TquBquDjlXwhC+WB59GWA0uEtjms1tVXKNmxmZFdrv9KJ4Nlzii
	 kFriy8eMUXmp8TD94nu1zVZLDjQZa/oL3DksS+5C+bpleK5Wy2ihvuKrCUQclO8GX8
	 v/VECb4ScQPaEWcbP3UneVCVUxguP8b0DTTbRQZf738++NqDXRyks626WET+oHOmCC
	 McFZaMxSpAmrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4E8F428CA
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628125368.23304.2963160918260080404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23aa4a1e3a256996f02aebdd0623f84c4177b92cdafaf77ad93635f55c658264
Date: Wed, 15 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776281253
