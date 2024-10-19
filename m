Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D558A1DE4D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729338953; cv=none; b=iJqPSfMvqSiDWZDSbgQhCBar2yccR1efimYDMfyGJuJqNq2lTiuqY6JXNT5E3PlXXfh9B6sL/FlrYJj1sl0zYNn23iITJ8vRspGqJioO0VBFU8zWKqfhS2JykG8QLUcMA0tIMgzhTxttGZ4EpKWl9v2Yc+y0ZUi/RVa1ZxkwJeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729338953; c=relaxed/simple;
	bh=REcpS7/6MF9N0ynbubH8yQKj/mchTzEu9dgkiTb9rCM=;
	h=To:Subject:From:Message-Id:Date; b=IdFSnIUGSKvLML0+GgGD+0V0NdtsTfS539EEmOGxZYqgcA4QTjxrhheZTQAPO4/SvSYOR7oMA018p1pRC8sAExzqV57+bYHDUvPzabYZFVhUS50qJAmFVlj/ZurgJ+uEfUtJ0d65V5XJwPaWBYTdaHCV2qmIkDDTF1kLlVXRHa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aN3p8BK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aN3p8BK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B9EC4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729338953;
	bh=REcpS7/6MF9N0ynbubH8yQKj/mchTzEu9dgkiTb9rCM=;
	h=To:Subject:From:Date:From;
	b=aN3p8BK5hmFophqoeYqP900QsY1vvjVccSFmZK3CgyMUEU4hb7DC2hxNTX0fUypWi
	 y3bRg0d0sa7OwvHQsSZMtfRyaUvM7PD48GvHzvzhA7WidiF7NnuQS3wCs1eTk99fL7
	 PpJ3x989ir7/8xkDMJIssPat5yqxOY5XbmFN6iShxbQBF4VBm9xZUFt4OdUFmK5P53
	 ewHSTXQZHCJUXAzZJgL1UAIow3jO7jDPsk9cwJDAWNmypiE/IZS1JcdZCy7SEC8S3Q
	 AMR2McxW0ZDmF9dM9cb1U7jqRl7ubD42CEa5BcqgS437K4pxeMbdWrSkYb1Xjo9yPf
	 bciLiWhhG9p+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E7FD3C906
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172933895359.10296.15884234729870157227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf6e1ee7efc9fc24ecf3ef76c3021e3ef041e195ffad8966dc786c4e015517d
Date: Sat, 19 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729338953
