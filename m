Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121D67492
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708259297; cv=none; b=NQejiIwWNVeZDnif/cF0iuBJ3FJxAew4tD5N+85eyeFVM/ijZSzNo84Aozc8ViiUbdskL92Pmbzp91qfy+LGtxAnw2RZJhFZQBRlTUdqSj+kjOKW6RfZWgiOwnKvQtDK9dSLpIxUn+eksh2GBYezXUQRsfg7nHl+AW9e6ANzclI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708259297; c=relaxed/simple;
	bh=C8katyeejsKqo5kswNObRCWWYy6HO6Yp4hoOU2JsybU=;
	h=To:Subject:From:Message-Id:Date; b=qYXmklayAIki1IN+nI5IhWCKMkra52xV7X2M6cQgrKe22cuuJpBBMk9KFATLU6jBpw3yXh7xbOIakbFMCB6Bnh2fkfdXmEvd9QOlnh003/E0/u89bmCN/2Ido6eS0/EIy/I5qxmqllv4+pyB1jRT82uLlIQydmQMMDv7ZHXWtkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AspZW5cx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AspZW5cx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F01EC433F1
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708259296;
	bh=C8katyeejsKqo5kswNObRCWWYy6HO6Yp4hoOU2JsybU=;
	h=To:Subject:From:Date:From;
	b=AspZW5cxnMa/vERgqud9EOn5eEzQRapLaU0d6+xigk8mulRKYCI300zD6OwFkstjA
	 tPU0uosP++5Rpk/TDwjTeaAa0XEIC5iMgRu8AEYK1IXVViORNq9VTuSHbshppxoK6i
	 M7A2pbk6p65BAcjt84lJVBlz5p/nj0QFFO9zl5h1WnElg0oMhkdEk+IphVJJx7yWFb
	 5EyyOn1us7dSEVMN7aSxDo1BwKxaeTD0SDvHV0EksR9ftRjyQfaVmJ23XIWQDTgoFW
	 qprtPLvnw0ZtGz7vfHGDRJORMaAHc3IAqpJMl0z7lCitpYzUZIZVdycsdEByXfLIr7
	 Ub7QkafmIf66A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BFCC48BF6
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170825929637.11637.6671868358930229640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e7639bd5988fc9c93b70030752b8f417426a13ea7a88ac8e5fe118f524607a
Date: Sun, 18 Feb 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708259296
