Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350E91A26B
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748286594; cv=none; b=OrWSro/6dLhIwYRQ+Luv4LQKyKdvubmc1ODe6ia6khRVMJm+1IP39jpYI6vJYlFP/RcNrQL5wDTAIyeMp/m274P2sFuRpf43US8OrBKA1QH04Fu8ncyyDulVj3HVlaizK2sMDcMhzgbTHwQFj21TjgWQ2u6LA7kBgxJnOYX5CQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748286594; c=relaxed/simple;
	bh=zABfJEv6hNYJt2CXNKqIk6QSNpezWnxVD3ToygXaNR0=;
	h=To:Subject:From:Message-Id:Date; b=OXAUQpca3T8olyK2fG1g9y7oUkNc57X0o6bwJLHjSUy/0r5yIM0sR5nhCskBQdehx3PYctoKrHBBZwM+1wSrPVU3nU8qlipd1HKIkp+XFMZ2vIo2t2oyXf52hAV4r2jWlEK0TW5Y/jXMEoebWgXmaZbo9yGeO2jqFlCFHOsaha4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh3ImHZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh3ImHZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34D2C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748286593;
	bh=zABfJEv6hNYJt2CXNKqIk6QSNpezWnxVD3ToygXaNR0=;
	h=To:Subject:From:Date:From;
	b=Oh3ImHZy6l9Bgtph0Qh6VCV660p8bH7Vm39BsNx2IlzZOofo+TqRFu3M2h/PMBxRc
	 t9Regcc5IJ5QUC+ev08FEIkcP3Iz3wqL1BtH2ca4NSaNhseBBJB9cgoWl2LpQx8kzy
	 Lk26jVRk0JBxLpekvl+vfdd+BY2Q+85Etg6L5oaNW499Cs3KFlRL9o49Au9mg1I2+s
	 PHEbhFDGCZ/AkAmdc55cS3ArfopJFFeoxVx2YGLsfLNP2WqQWy+mEzg5ehqa9YWqWO
	 6W1usS8Ue/5Fy/RdgAPTUIAhPPvfMlXm1M+zka/A/9L+xw5dakmPOt9/4KS6Aglmzp
	 RzwNMYjqX0lJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F817C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828659357.17473.4595593290222902054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61818eeab4fc43c4a65506fa73c63d55aae073b08aa0afbef0cb938c4e6099e7
Date: Mon, 26 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748286593
