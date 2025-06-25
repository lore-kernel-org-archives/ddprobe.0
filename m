Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2655F1BD9C9
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750820994; cv=none; b=EhKuVCcZu1OqrjqOYscMQd6U/87ZWVzJmIQuYY4BB5Y63EENLdhKit13NIk6fAOWkk8OAaAtHvWc1NbAPgnVQDLPI8E81Xl07OTzQbJdFm2KAfhfd8Hu0UiHlDeXF+ae0CouyQOB4I2bnEDtrXrobu72Y5lxScwhdgb3MRPsGI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750820994; c=relaxed/simple;
	bh=FZtiSviAXQjmA8D5P9Y739kK3UBMYxb/wLZB6WSbsMU=;
	h=To:Subject:From:Message-Id:Date; b=NeyYy0IJ+AewsuTUEnR0theDpNw7K7wSmd/x3uTt5rqqIvypMkQIeu3wc16UDQM2SE8KwiOb2+izVXDNyMKSPomC2f7IOy1sXt/qcUZi8vrPb6RbKuYlwKqygERsSWmH9bbZbu9l6G3YRgIh6JFTzNMDX7Nzu0ApflitKGUn2fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h++guYfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h++guYfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25DFC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750820993;
	bh=FZtiSviAXQjmA8D5P9Y739kK3UBMYxb/wLZB6WSbsMU=;
	h=To:Subject:From:Date:From;
	b=h++guYfKNhsmUAgQ6Iu8juEgyUmJhKVY9N8KZzpLQQ+tUrtkhSQ8SxGYWYhx7dq3I
	 qWwwqdkFLoXAyT0aYtH1wYD+qnTSiaUVma6ES/xPOIqteso8aE8S9uU6BewOGW5jv+
	 NpxjxWep7QWcNgLJUMsz/yUHMeWx6Z+2XjfQJfUaQ68WYxcRcsTVimW8+FPbclQITM
	 AncI/mSGr2afN5l10656MqPubmoIzrHKAi+fNlDaMIVYq0Lwx0hlmE+/a+lUCSKxyj
	 gj9wx31O+Qk2eGXTm6g6zZBMQn2Ot6MqZ6ar8En2Yq402CtlJodUqeIp1kMsRpm3A+
	 0yBs8CBeG/8XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDD2C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082099358.11222.14966801267339129123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58cee64ff701538a9153dd36ad2667b8f3817c76ddd1b28409ecf9f02f5646b3
Date: Wed, 25 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750820993
