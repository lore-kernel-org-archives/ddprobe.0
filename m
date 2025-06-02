Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4D817A58F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748827194; cv=none; b=a9XpJHABiXgOgGOhHiUEbfN1slKNHnVB9kC3dBPblmLw6sUZsK/O+n5lny/fkdb/UTHLIh75hndScbAdTbgEizHp894Yl0Y1AKwhlqMHTQOSzeOx2AaHoKcsPwcVjthdCOjTh5WJPBXPAsjeIUvcUJ4PVuf6BqaKF7FYekW3yOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748827194; c=relaxed/simple;
	bh=+yHIFXFCBnSxg581WMtoaU2FFg6LT9sI/7aOR4TS0Fg=;
	h=To:Subject:From:Message-Id:Date; b=RWPeQtNgx+I5ESKZ5CLHvpEaip8vg0rmP4m2KgFbpJiIxu4ROrISXq0Nj876YGdkNzMKxGBTo8MJ366ZKrYkFAHndD9UT26Xx0eYxAAqgawl0RQLxzsuDIXHKhZb4A/r9ANM+/j3uxIVOj+czRTb4kaUhP3aeu10oQqN4Coh8G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jThIW2Y5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jThIW2Y5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1678C4CEF2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748827193;
	bh=+yHIFXFCBnSxg581WMtoaU2FFg6LT9sI/7aOR4TS0Fg=;
	h=To:Subject:From:Date:From;
	b=jThIW2Y52hdEqFxsa7dhKRiVyJYyJGs7w+yikjq1y0eBj6wJJ9OT/wojON7X8hPjr
	 IgyGoi/dIiDsqpBzPFcR+6jSKAeXp7bQ9b+4A9v0d7HObwOtGT/6Vkv5V71+e+rEWy
	 rAWO6zDyDqEtKIpdynyAIcDM0Rqj3SPDEzYoJ6SyzKNzK1EVZb1WyVe0fx8kwtNfHh
	 mPAU1mAKfIet/uThpjov9aUAEHow9NI3e5cmPFPE2uDT2LeiTtUEGPBEumBBVA6/t8
	 vOdxQkZmXYtX8lgnuKJA5Z47s0M3TqVh/AOIzD5+Mr9MuUngXT/bjf+kR3Wv38d/3k
	 B1ILdCu66bk9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B8C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882719357.19019.6752079881130879117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfd3478a9fc46c817d671cafb0d37e76cbff493d6e5bdb74dbd03428dcb4093
Date: Mon, 02 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748827193
