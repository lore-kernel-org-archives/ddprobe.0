Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657F414AD29
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742417394; cv=none; b=CeQ6Nn0vFb87Hc6UV4iFvO1cJXoJcI7upWFHx/OLjh+gKRd1hbnnPQmggo5PxyMPL7UIxy41LKjRBAs/mleiwFk16cw8sDCefIn84c3NWqadl59oLiN37tpSzYdEv0RPRjl6Mc3SR0xZfjQ8zaFw0vRM38UDpBYj4Qs2gRRUO9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742417394; c=relaxed/simple;
	bh=JpvO5uQZpWQ0kwAImUCzq0qG0Pg2DcNid9gG2YukUYU=;
	h=To:Subject:From:Message-Id:Date; b=e3C3fJu3Uo2kSD/K725mIj3QGiovL4YYGeuzmmKnrz6yoz3hBvBL9nIE2MpTmKDrhl+0mrUuVZmfOBY40Q/uuGI5vZaEhAFSSSQw9k5wb2C+l2r1AfuKVBErSm9Wte709Ygr6+ILp+tfxRVdCluioi4URHnMEBvtin/t53PLz1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUF44DyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUF44DyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF16C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742417393;
	bh=JpvO5uQZpWQ0kwAImUCzq0qG0Pg2DcNid9gG2YukUYU=;
	h=To:Subject:From:Date:From;
	b=eUF44DyEEYSfY/M5pa0q/P+fcd0UzmPwr3vxfbs71aIaqlXjru4XlqRXidtBF5jwu
	 4CawYUuFzqGjuMr1vYb7oSEGyMnkbYj76D3OJseT2UddAE68I9GAdxfqjo4rhtkVsh
	 mQaE0zaaNZWFEKuirZRVEGNu/63XCt+1dXNkiqZFCL5p5V6xN1MSbtw/opl1ZGCH5y
	 nkLRAGkFAOmmIf7pCpylQV+cTTiavGSYNRzibcdlfPRRaqWVz01y/s6sNCrWXh1feA
	 qozfrJ8BOO1wAVRWpOojyfCRwWzvE+TOGNKBJfKjabZp0GrTJ1EMyAVSZiEyc4BeWx
	 Ak63mki5UPhtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CB6C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174241739365.27860.3671675498746696586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 488bae192b636e92885e331db75176e38441743c6e8c7e89353483313634b379
Date: Wed, 19 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742417393
