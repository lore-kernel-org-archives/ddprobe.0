Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2874318DF80
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751671194; cv=none; b=fogR/TQsPIke/XC8oPNcN4gEizyixajdxSDNAe092lZRF8eYxiW0r9nMBtBw2wdmKhKPWkzpTbZIgZAykUIThQ3OUZSQdxCBGbNnkwlTWGjxkWkrNVZ1oAe/YRe45vmXPazC0YYmBtSlAOjvjeaCJjSxxpMHtyO5TNIw0Uyr7a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751671194; c=relaxed/simple;
	bh=AoHbnPyKUz5SdZ+5P6gdevceq9NgSMQjQnLap5L68CE=;
	h=To:Subject:From:Message-Id:Date; b=BjnU4QVO83Z1hPlUQYiDymRA4v/5d/TVAf8ih9MPPH4j8DpNuZusadBKSayhB+i4tEthdYJUf5t8LWELHhElqWXxVhMYztF4pq+HpdPAVZVrjW2u/Tm4wJl2ww5ZDsa3jOYUyKo1vE4A0LNEnci0t1/re3RVREZsNKDMXX8HJzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnSkuCCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnSkuCCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B82C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751671193;
	bh=AoHbnPyKUz5SdZ+5P6gdevceq9NgSMQjQnLap5L68CE=;
	h=To:Subject:From:Date:From;
	b=LnSkuCCo7NZtmOWVsBBef1QEL4Rv9bEPPi+11V9UloRUsUQgfP9HSQdpjs4FXsFAC
	 +F4ctnSbAuwMIMLroNs7tw+v8vmF3BSyurVi7xTfmguoeBUyD+aNU/DAIqhcQLbIb+
	 VR1gzM0eoakW58FG918mYLnBYG6LuoqdkwBvbL5+HGwqvcORtys1ucboit7izKuw8O
	 j0PkvGLYmvVQ/SxL0hFCUrNfqx7Ic5NW48YlbCrbrt+c86vAZhr1LRMq5mw2/EyY/h
	 apeIg6+CLqGRrUy/y6nXVFldYefLRPB6FaQt2zQmkvVUMor1kWat3Y+Pt52IrG2A5N
	 fydNF6XfH1WGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D83C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167119357.24285.1524982565448567008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37dbe276ee07032662dacc88f8c3574453d2ef4c23ab0854973e3dac096f591
Date: Fri, 04 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751671193
