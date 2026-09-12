Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AEC26299
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789253434; cv=none; b=DwYQp5vC8RZge/XIKrsANmSujVCBG2a4abG1kONKKUbqdW0gUipDqjzJoXO+F6z7zz5LNzynCDtsXVb7RPwBZknBA7Gv7Lq9mXTzxmEkb9LGMah8Myh49GRTs2JJay8UvvTBbqsqIwIcb9Tr/bjRHLaCrn5m//nV5zWk+lqbK0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789253434; c=relaxed/simple;
	bh=T8MJNZJxfeggCp1fLfzr7JvNE7qZJ+ES7PS6MjqV+X4=;
	h=To:Subject:From:Message-Id:Date; b=JkRswBxIx77Fv2n71oDZynlwcpJkR7u3P2SqbgoLP70LiD+SvIMHreVJg+RBoEkyRtuG+LE58MvT+4GRvb4/1Yjsi420596ZLQQBPnLZsVMI5l5Cfny6IHYRXvVgigOW3qMpLkF5KS6WmtxrlVbS0YyLI9SSxxzcfNJU6e812hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7+awFFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7+awFFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE5DC2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789253433;
	bh=T8MJNZJxfeggCp1fLfzr7JvNE7qZJ+ES7PS6MjqV+X4=;
	h=To:Subject:From:Date:From;
	b=j7+awFFN+n5UmMB2US/Vb4ZD0BtmTLVrnu4WPF1cWFFCYSwHq+zo9Adku4RlAxo2S
	 ER7ZhGMV9V8KgHbAF/eSHaMR6csEKnNR/aM9mRJg1elPRsDG0kQeedB7eXMldFiJ3c
	 F894P3XD371horFxYioebW5gKrNfntXhBtqrZ5hzqTggPel85VryNZMOT1gD86vQDC
	 WEpULdL0C96cW/OTYHjlw1A9ozBbT7XZ8M+BueswC7CeP+R8tn0yMEHQCE6oCvRPg7
	 3TriawVeL5Z6wRGDbYpOFGXaDWvjocJS0tT4adx1gDfz9pnw8hY3fIhvcvKcivKXGL
	 NT5aJ3udGGOLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95D3C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925343368.26314.1197467751880777993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645a81a3f46ff70ca480fb40aa6af8905f914fe98ca4b456646b6e904fab2b35
Date: Sat, 12 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789253433
