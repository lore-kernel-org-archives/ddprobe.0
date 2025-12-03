Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141062EFDBB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764760974; cv=none; b=XiVeIRXRfFVgGRE8VJCAAybdxfrO3lP9bIuqlofsvIOfkc33+pFnoyjjLKaiA9wo2HHGzU5lR/2nlIfWBOAfZwisOOpsHxjV0Ki8nhVCEDvTEMLxmaV+U1InALXoYyLpjArKqZU6OSjxZcpFd6HJIHlfSd8Hyu9E5reM2Udnk1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764760974; c=relaxed/simple;
	bh=EO4F4NImdhs+KgM66QpHPz0Zabmk2kzQYXKkX0MvER0=;
	h=To:Subject:From:Message-Id:Date; b=Ghg07UC+59WyOP9eDCQ9m94I3K1Tvjn2+0jQTo4+F9qBiFlvIrA1E5c4ee/kARqb5q+DmYElo+8ZSBXmpBQN5Vs2PxIF/gFPrroRJ8ipqQVlWobr0VYUhXX5gR/KyuaQKWuNdXRlQuDaG7TQLF4mqr0qNxhPkBozaZViW6WOSkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2qHzmXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2qHzmXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27D9C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764760973;
	bh=EO4F4NImdhs+KgM66QpHPz0Zabmk2kzQYXKkX0MvER0=;
	h=To:Subject:From:Date:From;
	b=G2qHzmXQ3Mlkg6ke9U7IkzpNfvFZ1hio1CMM5MMDJca5+Exlm6tJvFjkjH6Y6lhj7
	 70aX7j78isVNOAQ7Ve0HTD0iL9xBdolv/aoBy0cY8Bsma0Zv5aPbM1PEUmMe0E+r/X
	 Jf1cE7GwFX2oP1oV3+INgCQQGojO1sX2nKambgZyctGYB4C0309rlUHpWuvQWt3gKL
	 1RYkYkMbQfB3xgjg13k3UaI4xn80JpVd5MIT1uUSsTqlP709DAz0y3XVZNvLERLxv0
	 qeLq+5OzmBwQ1vAh2G3l/w6qLL+VtvoBresNAyZlN+OLrEz96favtcxRaqEBXdbCzT
	 WzpUQM2qQiL8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FAD12694
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476097358.29850.12232610870212407670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ffa662f9bd92b5901e9016dc1c48833097576538cb7e6998f426c26cf4b2fe
Date: Wed, 03 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764760973
