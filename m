Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C5F1E008E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736196354; cv=none; b=Oa4mPuO8QJgDTOzeyObXgzNWWh6ok5ObPQ/ipXboeCK0mOh8686YT6jG/5ikDiav4SCFVpLziVuZ677d6ISY/qDW57gzMrlcJ4n969VCfPpekzaO2HbW8orpNH4ovZ8oLAyJnw4iAjtTYWEMlDWK20omSd+NDN88rtFgJXYSWOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736196354; c=relaxed/simple;
	bh=3q5EmqDk8QO/KCjJKficBQaHFK6lPjqxB9WlVyei4Pk=;
	h=To:Subject:From:Message-Id:Date; b=XpCAHZCb5gfehbrps4GP0jEX6cIkKlAjtQb17yNdvTA7piDmwYBvyfSH65JtOJhrRtQs8PfYfW+8Tf6Hh9Qz8DAO8vMV8Ap+QlLcfSIYWfPcXAxLJFZMWg0E0ARrFbDQfZqU0d7niSF0qA6TqN/XHW3Pdrf6lgqZ9eBhD2skqRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPIDIwks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPIDIwks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FD8C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736196353;
	bh=3q5EmqDk8QO/KCjJKficBQaHFK6lPjqxB9WlVyei4Pk=;
	h=To:Subject:From:Date:From;
	b=gPIDIwksyyLhU9e2IitLPb3Lbr//nObv5Xy3FU7Pkv9sEcIwJcBn5y859J9phWpvS
	 QJhFRb0rpvWsV6bl7pltaEyuwIqCuDKGt0q+B5/yqBAOruKvisjXSTg56uGgmJp5XJ
	 BQYiC0wvxdFY/lWac+75BuATJzXlByXiQe1yBcaWstj5mgiaOlwUmH5NLfXfaSwaB4
	 C6+rHdqKwF9Xgs17AvNRB6Pm9pGvUMCpDHQib65rCXXaSBUNKE1ULKbHgjSssIWZ+S
	 34JBfSUis1flCa2qHbSoIXjUI4N1YFP2Pu7OG60Tko9uZBHxk9jc32gO9n9B9Oc+wk
	 JPRJlRQJkuqJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA4BE77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173619635362.31387.8552851977918668440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b542b22d0640a2b7c9d4eea21bcd655bb43afc2b86793e9124ac0486736db30
Date: Mon, 06 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736196353
