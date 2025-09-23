Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1787B26E6F7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758599994; cv=none; b=ZAQg+sstNskrS9YT+jY4zZcY/jHIdXhvkR0cI1Hpc1bWqUlEZ8D4Z3akYkxDpdnuw/Q+FyihHohRJYREiINg6xhApb4Cuu/zsyOc4cJlvKH5CHvrd3ag5hzNzheJIjsyMou96BqOAqA86vVhqkn8jLA3zxCMqUNmcoHPLRzJuF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758599994; c=relaxed/simple;
	bh=7jztze83TKdzPKaxNHEHv2HRonsJyIYOSLFqMBInepk=;
	h=To:Subject:From:Message-Id:Date; b=MnE7TYd49TBMHEMQW7czKhqmCILlx1ps/v7XU4KLpJyTQbqcKxkcQdfEfaSsx5nH4a/GiRxTLAoaiRbRL9GYcLcMYCqLNuCES1JLSA1ay1RJ2APRETSkPcRUeHilxEUA7yEUHx2v+QsnpTtCk3T72J3s0kU9ri+jgtgpFNbx+iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=um5z5yoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="um5z5yoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3470C113CF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758599993;
	bh=7jztze83TKdzPKaxNHEHv2HRonsJyIYOSLFqMBInepk=;
	h=To:Subject:From:Date:From;
	b=um5z5yozFUOQnlDJ4z3vzjCvIDrX19Hz2r+6Ldf+z4hE81qB4cRajfCkKVKuoXnw/
	 Fw2YVQGZ/EFvNGh5CfzImCXJWmenCV45kmo1hAXvKLqyxeb5tc8wLtDlje4fzuhISJ
	 i1zH0JcU+u45nuoWkwClLZXe0Z1ikZEZ3HzRzIN4hWS/0bUzqHVDU0VAwjnk+FgFTj
	 wmxLk5WsItqJ0Hc5pdJZj3V9CluD8DxHQMKntyFtqn4qE5/FCQsDAoBjkEVyW0k4a2
	 nVJ6Z5e9X1GB2QvONx00O4Fm9qZDQCsXujdnPQaduZTI+0BUqToPg2WP1VDWPKp1Bz
	 46K43bR0wdV3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A2DCAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859999358.19674.6383184148549305266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f777d5fbea8d498abe25dd9cc867665f346ba408ce4063a792fd5c4a30727823
Date: Tue, 23 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758599993
