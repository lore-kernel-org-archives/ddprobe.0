Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638B71C2D
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 05:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716615263; cv=none; b=caQ8UgRnnoWuy9q0FqTVbZ0D48G0J3fyE4cMEPDEkTRg+qBoUlYa1yaDuvuwR1jldohzKaZ0rGpqQQF3pu5q8IVTLqvU7zVAnG9dOq3VeyDROYeAir/mMzVqVJWRZYbWpxC9quqHhAusfFI3XTdxSB/dXrDot04wgTMD+aJzsNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716615263; c=relaxed/simple;
	bh=2d3Qmi/bAAw9jtq0hxm1ywT0CT0lyF6LSEKB4L8rILA=;
	h=To:Subject:From:Message-Id:Date; b=bG9uxgfxaWr3JRLlToz3LCDx1mQZl89kgk8Fk7rbks0MwpIwvUz23YmFvEcfehlRsH4oG0eqt6PbyfcJkNuIik+ydNlJlwMUi6/RvGr8MKPPz6E+Lj+JgZnxfykjTA5uAk7mSrbeWt2VUdmZLm2yFokZmG02PzUYRF3mv79ikOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8xgIFsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8xgIFsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAACC3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 05:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716615262;
	bh=2d3Qmi/bAAw9jtq0hxm1ywT0CT0lyF6LSEKB4L8rILA=;
	h=To:Subject:From:Date:From;
	b=F8xgIFsAMVSq62B6BLoQCWrZRvvQQE1lg+OqZlBerV4HmjZxFuaP/7X6ufrPwa6OM
	 h6K3I/bw0ZL/s+d/bnjIRMXFV0W5owEw5LphQVMSQc0OYBdaaKjYdLdIV/RGhBc7IH
	 GTgU+3hSFV2g42R2nUK0Ab7fkjuJz5yd/WGSZcnk51+tn0dLkYYqHHkEUFWy/N4Rcl
	 73ji+ld3HsFC1jcuYPoZW+8tfc83KtXCuw2q0xILsKsquiqO/f4pFJ2fvsBqChUgvq
	 WCKgmaZmo/Uukfj8q7z1gUexWr1BArkY/Wv57q2leuiK8ypEKVZh71kZM24G3sqp6N
	 nWwA5SMRNYtAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C222DC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 05:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171661526276.12217.14008468841257248032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa902ac56f876e0208b0532a15ebab413f56257cc475f816bd95f819ea3eb88
Date: Sat, 25 May 2024 05:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716615262
