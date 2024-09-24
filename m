Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD8F1AB6F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727202354; cv=none; b=PyA3H9TOTY/unt7uh/rjk9H/kUrRAnyqD+Xl9MZlC3d+W9csTXWHhlHzsZaz5sX9F8bp6GMyWhG6IYSR3LOTR1xkxhhPlf5MCIWuBjfWDwxZJh0m9CnV/kle5dXUHsYpEPHN+hYW4R5ISqhvZtm8qHT1i03V1ElI5bLmuBEyFhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727202354; c=relaxed/simple;
	bh=IYvc37N7bVKJcTwdwIFbZfY+TDs2nexaJUv5UHtkmE0=;
	h=To:Subject:From:Message-Id:Date; b=iUWNJFSy/8A2pKlwItmpo8ZhVtNnPOpVidkXXX/+Qd8AnMrohfPn4418vtW+OmuujOpo8oQRr+quvqSUQGVu0KgUrC7IlLgT+p5qevWbZpPmgzWHnPRXXz1Is6wcxbuA7XNhOgRGDRyAaJsdbmgEYggzm2kwGPYaptTTlwhxFaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSktyTxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSktyTxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35DBC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727202353;
	bh=IYvc37N7bVKJcTwdwIFbZfY+TDs2nexaJUv5UHtkmE0=;
	h=To:Subject:From:Date:From;
	b=TSktyTxuzBT9Z8o+FnLC1oxgYcdFMBZbsPe/sezdvXb1E55w5REmw0JDjUnTJdvye
	 OAOiY1iptWdvyKjTunUJIGrMxMUi95Eo4NLR8E29qrCNCmdH7cvvLPUopbxduVO5KY
	 9L0//1RlqApMqCdqIEjorJ4GN9kfl8MCBgLo2HaJHNRd4EtrHBZYqlOOcqoI1Hq+Eb
	 UMzkyWIQUyVF3YQ+Qhcu6IG7i0ANFeGM0sUXuN6E2lS5WfQhQ+ZO3fJZIQxwIYWlFp
	 Qj6dqCo/THNvLa1Gj+C5GcjD+9I+bsGAtZ4v975tHmWlZzo/goP1xecufHW8Ze+9ru
	 /WdI9WQnDgvKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CA7CF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172720235357.17502.16433706017904922615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b467eebdf2099be0eed8bae96a0ebb38c0b6b4518782e488ac9a0b7858078f
Date: Tue, 24 Sep 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727202353
