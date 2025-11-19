Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9751932FA21
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763563914; cv=none; b=WsqbELHeQ07zkYyoQSdZF8nVn+Yc4oGA6Rsy9k+mzcutrdiiVAScLoUAT6EibJbyXW0Kdt1uRjOnM6RQLhw0hn130ogYJboiqqH55hxSlzNnLfgRGNYFeSnlv2jOnWoYvOQPUF86IOFEr2GK3co3kejy+sL5irmtUpJIwugycSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763563914; c=relaxed/simple;
	bh=c9HOycDzpx82oEefCjxyFEjtbRIgf4AsyFxT7bepntQ=;
	h=To:Subject:From:Message-Id:Date; b=XYwxkxoMWSgREDuZ1PWUvcMFW7uZw5pcSTtsb4GE/Dd4a4HVolmxN/aKy3axcttZ2Xz+KgzXYiUlqiiEdDY6YHqbY1s2upM3E5Vv8qPksBiFHj9UHbQA4EpolW3vz7prAEJNcyoF/nIpkH7dsS3OewJmSjtnhOpYewZwrXLiO8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ff8zuFlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ff8zuFlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9559C2BCB1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763563914;
	bh=c9HOycDzpx82oEefCjxyFEjtbRIgf4AsyFxT7bepntQ=;
	h=To:Subject:From:Date:From;
	b=Ff8zuFlRdDOtSlXDJLjFn29Xjq92L6CtnCz9QLiNVu5igQ40CVlcVZ671LVb8+5XX
	 YeVqzEAVlftOQ7pAQt3Se43JJ7qBJnNDs2oCiBeTUhKoyPIf/VWB/BUwXK83KBNRTW
	 U50VuHNaKMQS59i5BbF+e62LDmELxBYc1oMGdYzgjy6E3Rmop0S3By1nwnCH2Yxa4A
	 W/2F/aB6bvaAuvTXPz0SEQSvbJTfWYrc1XkT1EV40lfDgFTIytM4Mh1oQ1rxiitTQD
	 ehmLGT9DWUZPvVGF9I0/LP9uZKQ7EgulpWMPXNEQ3DEY4Q2IolE8iejxm8ORZ4/MjK
	 6KzFovUW2oIwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C7ACF34B7
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356391360.9638.17401190631879292753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e4a12132eed215aa46a53d59d6da56ac40c3f4a25e4f3313c04720bfaee5c0
Date: Wed, 19 Nov 2025 14:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763563913
