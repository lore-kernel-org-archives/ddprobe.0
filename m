Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64720BA34
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718141303; cv=none; b=fxXHKW5AlqhBVyFMAnB+NgtCcyGvCzZKxO1RWFfghgV5Z/V7hmUvXtNJSLZzoOlz6Ty8fRM9Mu64JjeSgidKCxl20dhsOwdThTKMfyOyzI7lwRj2YfWdB3JLKx3p3OYrKm1R1XavrfiYOQxnQHBTwTIf0d3SEp4AxvcAwn+G8LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718141303; c=relaxed/simple;
	bh=wj+Gr5wWnqa/U3JNIMNwEV/QOkK9Aw1m7VIrbJFotRw=;
	h=To:Subject:From:Message-Id:Date; b=mDJZqZO0vxNj3fIvrNFv9vl5RW15rXsDHBjYaJOYQWX/jgiD5zM44p5MizpOjRfxrOccvWkbwqoH1ur8CSq8TWddzag/1kTuRP0+p02w1doEHyPINMN5aVUsA0dykDZNLeQYz1osEJKo0DDUohwj+i+qLEzSzy9BTV8a/yvwt+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXpbY5eE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXpbY5eE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B21C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718141302;
	bh=wj+Gr5wWnqa/U3JNIMNwEV/QOkK9Aw1m7VIrbJFotRw=;
	h=To:Subject:From:Date:From;
	b=OXpbY5eET5E5jkBa0pIbvfj2AC3zAN+jql0dKOPrdw+UEG1sD9OWc3keZVHHHVFJv
	 RKUNyWr/Lusxk4JeYGPhonpKPO1fY9v3vqKO8Wz2sa/Rwk8bmOjaL7JMIvMD4LE6qB
	 TnvRD0NkdcuEmUTYfTuAAHeP+g7rA3GnlfHBQo9KfSBSpyvIXKOOXppMkPRqFfHaKk
	 jCZq5fPpN/9xZQ/fPrbsyweJtUfANnPJt8r7pZMCcGBnpOy4ENSbBWZfqfUVW/4cca
	 ZU4zXB27rw/Qii3kWOk4HePEUa9MsA0MI9VNfaGDHLE54EPciw5N99qy9qJ9skYjrI
	 Ct4qFvI7i2oVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2863C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814130276.32394.3430231538739635358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255c157a5812da86e8903cb0d50850a94f1c8015de8bcea65140371268751c10
Date: Tue, 11 Jun 2024 21:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718141302
