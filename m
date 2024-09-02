Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23341714D3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725261953; cv=none; b=OJKZgEyKow0DxHuxJJBAEqcmSgCWz2p6angIHxcWnna5rkkeQP4dCdPQnBKG5E4x9iddjWD0O+r5V6GwQVtNn3BcSm//xIWmTyJRARxICWvLb4rAvNDalRvxRObk2ueuf11WHa9GN42BkRfK2ln1kKHVZ9TbYKNQEtP9YJTrw1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725261953; c=relaxed/simple;
	bh=spuonwM0sJvpTBDcxDiltZGmvA4Onwjgo8BcwCC1OJA=;
	h=To:Subject:From:Message-Id:Date; b=a5ZKa2rXJ+SR3Qn03553jQwLjIxhPiKs+gU6LUSgLy7GTLMetnCFkX6CGoxUH0MjUagobj+gKXyZ5l5N+i5WItmd4AaTaekFZi2JB3kCkqRkxIQ2Aa/IiWgT5RNJLBBfkqfOzqwf7suYsSrO2vJq8b477Qz8atsUMh+m+mYUeDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQQskC/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQQskC/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B108C4CEC4
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725261953;
	bh=spuonwM0sJvpTBDcxDiltZGmvA4Onwjgo8BcwCC1OJA=;
	h=To:Subject:From:Date:From;
	b=GQQskC/RDG9y/2MQOaya7Y7QUiCMyTCHXOZERKY2nOiYFI4Q/8S4BYlxiQfBTjaGs
	 XKM1diX1DgWhOduIA5K7zNLFLioZGMLmbbQ1woHEaE+99HIbHLjmQCR9X9y218WgNZ
	 NymR46GGckm2c3UxDkh/T1lWgSIb334aIjddR71gnuzkiySq36W5t2FbOYiy5yJkc5
	 NBMnOT7f62jPjyZrSpxmyKiP/Z6L8MvK4q/1P0qvIFrBDcua5mC30JEw9blu9fPcDA
	 +KVJypkVvlLch48ff/APcsq73ox9zEvO20wmQ/HTiADEMb7u0ok0wsfQxXtLIGZv3W
	 XzJn4zZXgp4fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F506CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172526195357.11220.16276588650233038906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e92635fd463239274d79369da05a7e8aa1d76b3d7743f3c527f21f2316f8f3
Date: Mon, 02 Sep 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725261953
