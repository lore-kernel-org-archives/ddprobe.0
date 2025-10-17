Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA6C2701C4
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760735994; cv=none; b=m0eqRUFyq5b9rBOtJ5Fy9iCtUrc+tGCm36rYznD265rrnhOo7w+Y+Af7ltHbSS2vBikmCmPDz9AFJwhIEejqBbJAi8fZ/kDBMC42btTuV4WXIjIBImExQhhY3qL/Vb/8IDxk3OpTemQEcSi3AVeDOzWsB0G/yVzU1ernxmtszto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760735994; c=relaxed/simple;
	bh=pdRMcF+etG8dT+Icv0ohkLFk3sjAB1Oq00+od0sexps=;
	h=To:Subject:From:Message-Id:Date; b=ADIH6gKWbvQIRYJaJY0S0jId8/wkv4qP+45RKq9RarXtgHcAhjzAPoM9XGV/y4cBn9B0DxjScJAC5hKu3bI6Z0reokmX6FSw1+7TGCPF5OxhO2ltz5WhW23LafvqFwEjWuyXtk+26VCD9J6fMYf/9KJt0i7xdAp92P+73yEJARE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCxvt4sr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCxvt4sr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BA1C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760735993;
	bh=pdRMcF+etG8dT+Icv0ohkLFk3sjAB1Oq00+od0sexps=;
	h=To:Subject:From:Date:From;
	b=FCxvt4sr+9MXOxH/bheNu64BK+SnZyKuyaEa9uE1TFozNzeTqMmQUPnfkHAQs2Mrz
	 D1QLPL/MC0dPP3Wv6hCbHiBE1RRrDuZNThIEkAVTk0pA9rQ085VGcTta8+ZzeEIHFA
	 lqEG5I7gIPvrjKV8gVks7MAN10uXUgL1Ml4bGZWQUnvFtOuugnS7WJyI5NGpnECIGa
	 O0BdXYWPI9i4EUVhbXldoh3Yw04cVbvrN4mUjgaCWWxUzDOYnVWmyRyQL+sPHimtiY
	 RNMF5D6aLsxV07E6c5VD6G1Nv7yk3bUO5RvvcJ3Vku0JpYqhOpKwv4e9CAJ4R73HnG
	 aIF8AUdo/71dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C54ECCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073599360.20704.8734195428232201900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be8f58a8b4c707632c7ea7fc3aebd15a8161725ccc9b8097ccb0f8a47e10960
Date: Fri, 17 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760735993
