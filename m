Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE89163
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750589994; cv=none; b=hAUggCtk3sYiYZvfDwhQ4jex40xU2QjkoAF8vkDVxsLNpW+npVCaWTzErOdWtml7Yk4gjxPHKp2nyfop8w91YTJnnqYbCPKmHkaRjoIpi8HRqgzJoG5T3QQv/8uaFpdVtvnfoYpgDi0rreWdH/MiA1EWt0MC1Wf9q+5sdRCKi4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750589994; c=relaxed/simple;
	bh=9CqaBfC3w5HezyY8ofKiNyNzaf6XVw8Kx+TMC9wn/IU=;
	h=To:Subject:From:Message-Id:Date; b=ZRE6KJ5yZJkkWqdwHT5OVkn/+tpYdVEAL+kTCTxXRNKFwEdipYIgqhDVy1g4OGk/X3PXz8GktDG/Rb2Phkrc/rNGVAmQKFRORlzs1zf5Gpxk6l59XPJ8+UonQq9QY3ezwpnCcOkegE5ZDpxl4eNTRSyc4S/rxUDUQSYla37Ujwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhFC6Tj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhFC6Tj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F804C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750589993;
	bh=9CqaBfC3w5HezyY8ofKiNyNzaf6XVw8Kx+TMC9wn/IU=;
	h=To:Subject:From:Date:From;
	b=lhFC6Tj8JwXPlciZmIwj22jXX0Y82AuRhxudBS/iViOMpYlLs67GhoeyhsLYd2lFb
	 rxd5f2DUo+Jj2vS41qXp1h73NltUPPxv5VtYCH7enAyffD9m2+GDNoZlRVkLzEhpd7
	 I95Al3zjPbtg14s2S20deN9uKeaYOwStHlidXnplwhfTuBuXP1BeskkaQPvlnmxpdi
	 PKmT0d7J6jweIrAlxD+o8nmhVILPPtyZsEDeJ4omP2OivS1Z0uBeEfmm8gtr44MqfB
	 CcHOZJhmXr9lF/UhYXEFkaH3OVAYrbMRjDZsZaPwCXJRMh0+PtzX9AB15ey6OBKFli
	 BSZS4EnAG70xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F367C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058999357.26838.2800068297003381929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7f01bacdb55c37d844c366f1f94c246b4011339d861598d8d3e094928de537
Date: Sun, 22 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750589993
