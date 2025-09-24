Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA2DC2E0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758674394; cv=none; b=ZlpXKumT3uN8U4EqBNbWukZVPGYBBbT4LXnjwTB6213/6VrToSANfQE1s8dhmM5Gy+6kG3lnZbWqeiEYVk0ZFCoRoTZZej9WauveZVhTKvedAyVbEMg4ORtqzV823Mb7IoU2v1aV216DMSJjYClzvHrfyBRo9ZXNM5JHhAjHskg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758674394; c=relaxed/simple;
	bh=zpvt+SuIr6OvphO5s9M630Tm4uhcFPZJktT0aBgen0o=;
	h=To:Subject:From:Message-Id:Date; b=N4cFyBOAB8UJ0sqAx0SfhNJKsEnhiUKVG+UjhIh+bHQWnWaSytpDgdcva55Hssc/ly5ODxMdB+vswazvbdHbPq0jolse1PyhGDITS7dKGI+0OiZTVLiOeUCCweBAUBRmLIWhuLTL6lHxACKe1TuL6FSqtbX6NVDvnfN8Ln2FGE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3Uh8glJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3Uh8glJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AD7C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758674393;
	bh=zpvt+SuIr6OvphO5s9M630Tm4uhcFPZJktT0aBgen0o=;
	h=To:Subject:From:Date:From;
	b=f3Uh8glJUScf2lvgLDrE209iDmh27gHjKOs1wt1V+HEO3Oo2tvzLA+dlPJ94P/2+F
	 H3Q9NtfttiD6b7issJsBFcDFxuG1J98t0AuEbRWyZfwG+01WTZwH21N4p+cAF2jgt5
	 s9UO0GR2fKe7E/uD4BIx1HBQaMhtsEW1xFVllPWqofmS3zMDqQj1eE2KomZ869wP4W
	 0TWJ1CNlZTjCNQoPgjNpBUQARbl4q94P63UyfB6kqjlpKdNU5I4VP1iCPIYhcaAP9v
	 tORIxgtTL6Ac2MHe0FiGt98KUPWd3/bREVjU8PWcfoi5TvMShZJuPm4auYagZuum2r
	 w/msNB593wopA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936D1CAC5AC
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867439358.24297.4856886631486395340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b7f02e8dfef04cd77b642ba8832143fa94dcbb82dc72b79a6d70dbf088b957f
Date: Wed, 24 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758674393
