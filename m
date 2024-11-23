Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA2D19B3ED
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732402554; cv=none; b=rfJ7bF7rp1xtOrk8J+o5HWk+KSJv1nx6yrWhpwKLnk2ACi3biGOE0dwPKUEwIQnmixB7hG0q/rcjEQ7z0bUo5eV6TFB6xk56iLmdFTk6xGLd+V33pnECrBI0iHbiqjSi8d88rb7rcW5xaOcHpyGm2K81OZXCGR/uI6DE0z/u8Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732402554; c=relaxed/simple;
	bh=QyKzMPjpr7dUC77RJCV86zYN9Y7KLkEf6f5niy1eUaY=;
	h=To:Subject:From:Message-Id:Date; b=s6/jXPKOR9BM/pIWcSRwgCVrnZtifc4V8yw+5oWjS7UuP3vMFZXlJ5xBD5hn84FtHgZ7w8vrrJGrH0tb2rqsLQLG8nLY7f0BnubO0KYuzcet0r+FK8M/neCEprafGJbrR5aKsac0Sz9vZT1BQ+VoZYHu1s79TdD5KAbW55DCfdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxnBesn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxnBesn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7137C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732402553;
	bh=QyKzMPjpr7dUC77RJCV86zYN9Y7KLkEf6f5niy1eUaY=;
	h=To:Subject:From:Date:From;
	b=oxnBesn2lPh4q8LM+zm2ylG0a5cOKMUbwT3zqz/KkG1laSHoccI5CFsOu3OyXQNrb
	 sxb20Z7rS2CmjPEC7ZF+WBYhg+vlMxk+gQIFF5x98s3eZrQd9pz+vhpdmqbjVpGFSd
	 oTwdkMsB9ba2x1Zw46ZK7lY/Nu2FqwXJ4L+bE5NM6GwR3KZlzZxSbhZuvlxS1yRyYo
	 N+IZf6WTU3j1kiv57lmw1FTnnt5U+yFGDY5idjSG7q0MqjV3LGvuOSI0yExAXnUTNG
	 CxXC7vxn/4DWMmJK/cROA4TTul7O42yhwnpicpkbFCJvLi9s22ku8umZnTrjrNxs8B
	 T8bNMfcp9aedw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF73E6688F
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173240255364.30796.12398923715164497098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5cd9c07db51933a752f50d382bc46472bc69de3fcdbbb87407d424f42475cfd
Date: Sat, 23 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732402553
