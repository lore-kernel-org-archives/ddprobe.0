Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1191770830
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767316434; cv=none; b=kfbm4bOWfH/oCNQ0C5dncIkeFl74e8YYwhANmpEG/dxGPVlTOwZwOkq4O8PG2Wbfl5IG0zggv7Mc5sz9w1BlkDe4d+JUjv1/bTfSJfCHEJrHBxtyOTHRAm/JOZQNLIX29lWkahtz0lmRrGWCEdfrCuJZZQ6vkrj/KjhaN8plQ0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767316434; c=relaxed/simple;
	bh=1lXdoEf3uuUL+4XNvPw/KU5VFjiNmjCEIIut7QxDcO0=;
	h=To:Subject:From:Message-Id:Date; b=Yz2bte2Q5oRk8iHFurxuV7asjHCEJDnEK73dG0g6+u4EPzBJhJYAdnVoADL13VzKZMtJTkopzBQlFO+T5nS2z9xs5jZLv8zjj0I8H7k4D6JNihsjHyCeo/anccB/LOckr3n7zQgbcQetl7Fl/Ibi8d0e5lVEwresPYz5P1vuj7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixi7JS22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixi7JS22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0412C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767316433;
	bh=1lXdoEf3uuUL+4XNvPw/KU5VFjiNmjCEIIut7QxDcO0=;
	h=To:Subject:From:Date:From;
	b=ixi7JS22ZP9xSkIv9mdIOCf3saQgEaVQHes4779JXkEo30lZGxZiTmpZKajUpdYYi
	 l4y9Bhj2VStj3gxF5Q6lgmoarxfNU4oqqVamXdWT7LWN4g0NlZqJ/kbY3DiuZMsHeB
	 c4pe2eXkLtvhcA5fddyUFE0Mq4zVwXVERxEAiJBekVvGlxqDR27fgXbU8+FB0ldRe6
	 lVNNlatTCDkBYK28nPtDck8bgV2PfxV46X1P1b7zOc7UQxDR7VcQg3fPQ/fxhlD5Lz
	 WKmwc/sG70VNkgx7zNQkY5PkeJQiNUctZdYKj72anJsPMLcKIYxY9j2/Ru9GeYhQ2C
	 kEAXmQBMI3vDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BCFA3725
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731643357.30759.16096286338011059217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a25bf85d1c92d8f0d2129361c2bc9d396768dda416f07ba2a978a9fe04bad07
Date: Fri, 02 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767316433
