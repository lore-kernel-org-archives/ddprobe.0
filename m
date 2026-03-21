Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C4733D6D3
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774118694; cv=none; b=nAHvnL6ggMUXJO2WPkzU//SbyHvgHKqe4zb/vETSONma2LtMAMjQU9jjL8J3qz+VKLYt/Ovm3UTzZHMmrFdrhN7jVgSOBRfKoQDgsnShnLsw9RNr960PSlZDyV33CirXJZ6MSKnsZ3qlJRZnXPSU5HYSf2wVGBDI8jFrygTJYew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774118694; c=relaxed/simple;
	bh=N0T43tpIZ7xt1hC5cA7oCvMGTYSTVvbVBwmkOJprKT0=;
	h=To:Subject:From:Message-Id:Date; b=u4lPKXY50pwEYrQGGzzURbhHs6mntoK1suKOgKW3FcjGa6dvKlXqRNTFivzD1M/0iGwQryUzlsRnKuqIWclXwoP9dQDPiNFys4tgHSaX99vTVTDiKKWwOW+n23XcDmA2hwWzmjQhqLhHrML2OCXxMeoLEoLuf+W0kZdDSV/HXi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLjM+D1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLjM+D1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A196EC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774118693;
	bh=N0T43tpIZ7xt1hC5cA7oCvMGTYSTVvbVBwmkOJprKT0=;
	h=To:Subject:From:Date:From;
	b=CLjM+D1o7bP5EhBK4YW/6J61UuSQ+u2GcMirx2EfmlvlxQFrFD7e28h4LcawXiIH0
	 WZo3MQemwu27HeObUFWD37QROJLlAacN5znLkjGWE6NA0/CT2YX/yp9kcw9niIUquY
	 Pb5JKOJViDiyb9k1IIjTQ7fGOalwUe9GbUBHwA3XM0nlrvs0Gsw/z4hNVwq+H7hAPV
	 k1uiv7+T7+5UIcJkKV1FHxNfveRPvSpCchPS9/98p6tOPpXKgIcj0t/1CpU6kDeIF+
	 nk94Kk00e0eaqsH6rG0h3mgNCEmIZ0A5GjMZDbSbsj9n3J4Lz1vq0KrYZxQF6LtcHn
	 +MeFpZ6z6pRdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FD1094489
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411869357.16934.18297079812327157145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9527ee5c9d2b0e86cbb74a4d46b131c38d194d94ba0884a5cb6ba930c44224aa
Date: Sat, 21 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774118693
