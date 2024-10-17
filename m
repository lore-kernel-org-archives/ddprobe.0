Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A88B1DD540
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729175154; cv=none; b=aVJE3kNnS56NI+kucr7sIVY3wWMKgFaTutTaD3+Bh6qu5xxlA6gOkoGxubmq9V95FqjwMbuYMKm75vSdc/9/W3NZFtphP9Q4GRDB07hUVC0y3acxi/TFuHk8IDYjsB0EGtaixPzOIxTSn2N24tLrAe7cwVZ5fzuKqxuAU4SaKsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729175154; c=relaxed/simple;
	bh=DZg2S0xGUsIfEQkCU/Qa0pqMiFJgM2enCDt4q6nF77k=;
	h=To:Subject:From:Message-Id:Date; b=rEjaNGK52x10YdLhNWw6cGiQl97Doe6cFbPyNLy6J+TL863c2A7md5hY7XZM5QkGcmYp/2sGDh51HSzqkYK+DhTY8vDTOoZMPQiz9fDcbTE8F/X0wJ1zcJYq1KMmVJk6qQHGW7cd1VxjHUtRZdN5lIdqBzCesGCbwusgjHAp0xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYHDIWdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYHDIWdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEC9C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729175153;
	bh=DZg2S0xGUsIfEQkCU/Qa0pqMiFJgM2enCDt4q6nF77k=;
	h=To:Subject:From:Date:From;
	b=HYHDIWdYOiZ5scqgkK/yIOFvi2xNOxGU6gnZwiu5XUPfoeQiB+bFzgkMnoSUSZs88
	 Oup5AZtIbzBRWEHBm48v2lYHGiMiFOsOkDJ9hzuT88W71ljLvMM2JPv5BfyCHImS8D
	 IuBsWBhhodPORLN5n3ybfXynuvQSY+ugkCup6fMlLLBLezJCFkieQckJQgjRvjMlI0
	 axrnA2iDRYTP4ruKaVcfgFqAVOBk49oqTIiSqlSNHZdOufPX9iwVWTBmT2bpR4he3z
	 PcdzSq8sky/19jL8UwWU0nwyl4vjQzuY0YXOpia8cK7LREX5ga6+gfDfvJCNzJBQwc
	 04p5Z8VwCDK6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFD9D374A1
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172917515362.984.2569848676949702837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5854a7802a87286ba8ab607840a886126bade7fb90842963a9f69d209d595c8d
Date: Thu, 17 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729175153
