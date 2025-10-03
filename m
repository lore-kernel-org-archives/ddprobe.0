Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE611E515
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759505995; cv=none; b=MPUNsLhXjSBVfievLD0jxTzm48z/UUxnHXG6wEkHjbySwDF58yuJup652BqWa2Ckv/FkqiacF6QkNl/8sp3/hZgLfSxoykcx8jr4eUGj8phS7zZhrhEEbmNgwDWOdXQcggCEx8STkrWwzr0tmLS7IkFXv6Tcl07QUQx/li6FkiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759505995; c=relaxed/simple;
	bh=yl++K4Q3QFpaDUKu5TweBx3ZKKgJlQrHkQ4F1Xlm2dw=;
	h=To:Subject:From:Message-Id:Date; b=Xir1ouey6rgkQLvUm7dyt8zUMszoEsni5sQO6BV3bP1gK0BhRarVTklSUlCZJKq/DGmYjF+eTelAtP1tHWgVpV7tKkuKFt6CY9YQR2cmZ+57/bPOU6hC34UupV1ce3qnEybdk7jDWpYZAPBv1Wn8qSuQm1Oq3YZmgBnpfHjnSNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9MtPdRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9MtPdRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A1AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759505993;
	bh=yl++K4Q3QFpaDUKu5TweBx3ZKKgJlQrHkQ4F1Xlm2dw=;
	h=To:Subject:From:Date:From;
	b=d9MtPdRB9pmXzfyouEffPCkUliO1Xtnz1T9aM+ZK3zYAz93GgZiQnqH2BU3woYgtc
	 xYOFcpra6cONVHFfUpW1rkZ8WnKQIl4QWhvxoicO3iWR0ihWnaSiFHqAMuvkWuOG3I
	 Vs9SK2sE5aLU5QMhHxa7B/93jhBK0K9b7b4dz4qfMQKyV0nYNeVah040OJBqVV8ZV6
	 gbjYPA19sL04Y3vPrfmIjoDkO8Vlu7WKQFvwiV8JJkqk8TIagE4eUGswsiexCgKa7d
	 Ky6fnurTnVTdO8HzHQm5VIlk+INj+y7yolu8/xmwIv/rezuL9G8xXmx7ofBO4Xs8XK
	 hQAnWwCmfRjOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC2CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950599357.8585.17118047237678948802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48b3b9465cd2ce40792d9190a5bce74045d2053bc68b4453236648c9f68eb1c
Date: Fri, 03 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759505993
