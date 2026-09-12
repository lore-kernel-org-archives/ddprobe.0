Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A24361DA6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789238434; cv=none; b=Cl9XPKLzWE+DynvXKss/aatNUHhzgleXOjpKLcrjCfR/3EYnfCB+EZ125nRDp6wHFlzR96ztl2MuXxWUp3H2rv/rX0maJS9Igbd7R79NxHpxf+g1S4eclEj5oY1MTRxZTQ4B68Ujo+xJWENEvxN8cn212thm08nfy+VrI+tWIAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789238434; c=relaxed/simple;
	bh=EGoSqiKVLegqha8xo1+Gu91sWSwQkDIMZBn3ZBaSHWI=;
	h=To:Subject:From:Message-Id:Date; b=pNr52SPEQNTwIsqz+QtqJL5jp3yqmrptUbLaiSwUjZLYJXxd0T8VEWgGUoJVawhmVOWOQIzTeCiV075G2cQ9e5vZm88m5DnxB946ipMIW4rJiMyXy/oWEv5NyCeGMY4ZlrrLoi5Qjaqn1Nbr/EIMicwLsSNnKLDKun9oFYtNWgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdcN+IFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdcN+IFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47F6C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789238433;
	bh=EGoSqiKVLegqha8xo1+Gu91sWSwQkDIMZBn3ZBaSHWI=;
	h=To:Subject:From:Date:From;
	b=fdcN+IFA0ZW2b6QlrnzCPXeIGtDGtD29bJMGQ6h/XBYlBN88Re/8ufEcgaDgDACSm
	 W2U7BHk4rmY3/St0VAqKKWwFwXEC57OKcRuux8fL1hhkHvdWIC4z4fgiUF1os/hRJW
	 /4o+5wv4Koy0L/adGnZgq5mZz7A5ys8K/yjtL30dYaeKuhgqKTFDp9ouEDXjQWDkd9
	 SoR6P8NNbJfcv1YJwocaoOVvQ5yP/roQPu7qMjtm/huZtEoUXsxdy0hH1EvLHWH9zO
	 qwhjRrqYZBpAo48bBkHIvwfgZj8XIvNH53J99j+3zpFQz83jwNSZ5la2KyPj/v74eW
	 1gqjcP6N27SGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD367C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923843368.28061.741663918635993122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450b5d6897a097d894b661857f8107586c516ed6739ed1975e391d6ddb695e01
Date: Sat, 12 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789238433
