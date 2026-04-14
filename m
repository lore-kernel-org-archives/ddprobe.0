Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DF435B633
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776169054; cv=none; b=EEETi85y1z9gu7OKXB48op3eANu6OuDN1obVeAJIcizDQwb/OKrulxtli+1pHt2wQfMoWqMp8PiH4/CunpiRZS+O0ulD3Zy7uBehzw7ivl/zfZJ/657GwzzQJrNHgn2ZBebx7O0zLrqKsvWnwIDqrKaxcJ2KdlzgVVeeRvizaZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776169054; c=relaxed/simple;
	bh=LFBV4CrPAX+foa02CWvV5q6VBWhxoqu703UqZtrk1cI=;
	h=To:Subject:From:Message-Id:Date; b=KqVzXYqDt39yDEw+9M7kjO1wMqzmZDzduix6aF7t7YePFLWCcq2lEBccY/B5Mn6TIskHWMyF7LqyZ/ub+HI00jfJB+e4oDT3NeKj3VcEgtNHdxsWWHgFMpTHKtGaq/F28LbAdIF3lXYzKoj1tJAO3oZn7leM8LN9HBZxfOMDAUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIB8Tocy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIB8Tocy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8FDC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776169053;
	bh=LFBV4CrPAX+foa02CWvV5q6VBWhxoqu703UqZtrk1cI=;
	h=To:Subject:From:Date:From;
	b=UIB8TocyTU/rp2dV9lrqiLxSV2e2onbrlr9DwBTmQ0x8yCl2/ZLHdxj/1w44VB807
	 cCHeNy1GsnXJNBPM7Ha+CJTl8HylERTt+dZN/Hsbqj01ynOwLIInK/lIsPA39eHZmt
	 Q1AtZfbjZk1mQhuoYlz+q/kmpj2xCWO8flfcqMUVMl+Tce79zZGIBhTI/ymDlu4GI0
	 gs4yzGVo+7BRS+vrQKpz2+lNNHHN06tiNbYTGlRv3erI5DcByqeFls3uEtBE7nznA1
	 vfhdJLOoguJ8mV6PtlgASJmkYGxD3J5U9Mrbk9h2CnntdeDx3jm111io5dSbdCFPDt
	 AVj3XpULKgiwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A985EF9D0CA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616905368.25297.11347145384879181247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e760fe0d466b1d70fdf9cb8ed5a24dd8b93cca69913ad4fe28f318715d0e03d
Date: Tue, 14 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776169053
