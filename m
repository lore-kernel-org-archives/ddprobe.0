Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5022F5326
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750203595; cv=none; b=lpr7IHj2Gy8V9S0RSiRxu/3OWXCEZEP7PfpPPQHPzrAYxNigSP33a5GEj6Bbd6wJBcIYVXdr0fARZVXUAbNejgsQIpxWo7gEOhTiPBflAp0uuPUYIDJ8J81Zi2cKfbdO9RrPKrZkSgpgEDPV0bWWj2o9qGaJuqHdel7IHXnaAI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750203595; c=relaxed/simple;
	bh=guBqiRzCx9FM7HERr0RRvYjDgsJbAevEfF249n9yP8Q=;
	h=To:Subject:From:Message-Id:Date; b=ZIvDpvugCYO+RwPt0m6vAbd7Y5pD3By2Ws1RxkOm8AhqR4rIz1tqphK4YL3qAk4EAYcqoZ97B+4q+jVNYUzgegbbpuxUAqiwNQFgZV79X0d1Cv1hn4oEcoe9quiIvSJtWfWQBm4mSe5T/Zs2YXEAsLNR/kbETjPt5lVRQnQhOdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNgPphS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNgPphS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF5FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750203593;
	bh=guBqiRzCx9FM7HERr0RRvYjDgsJbAevEfF249n9yP8Q=;
	h=To:Subject:From:Date:From;
	b=dNgPphS4Jcqivr2iw75EGfjoEQKsHAmmtzt0wRKD9XNIO4YXb6HsOLt8cF0Xb7iwG
	 0dY0X+5nMgqUpCSS7f9EoDTq12VDHRehIP21XIOf80+nsQYBZ8ZDGjrFZhqOWMJDaV
	 eWnmHfDn73qq5cXNhCa/vPCNFOWAwENsz9nvL/2UYfagAA6KguGVfVSBG2O85qwS1i
	 wxfys5bJbWtnlzXWJISujaex5W9y8bZYyMOyp2VWwPO1WM2ZMsikFkWo8Zspo69aOb
	 1/YvQBPwAsEVG23TIU9hDf2WNGT0f7x+t2/juCg68CCrv2EDN2RsKu0XCD0/7om4nl
	 7eGqUWRyGTXvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE79C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020359357.20894.9113442787593320538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d52410d59e58c233357a626a37b53ff0cb9062e276791c01015e3dde4255be8
Date: Tue, 17 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750203593
