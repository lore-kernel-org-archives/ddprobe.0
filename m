Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269131CD1E4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752914994; cv=none; b=OJHFcFAnTEKDzNRt6wjhKXzy0gjwDtYHVNVkWmIcoWpaiyr/q7ncJuFgIhcFyWJnAnfJFEMawf4I5L/N0dyp4wX5o3aSj4HiOvjK1/TtJIha0GAqp0xC8pLs9duJhP24mu7wnwKZmGvMCrT9uBjIX3qO6EUdg/wlvfL3lB5usUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752914994; c=relaxed/simple;
	bh=3LoWGPqNOLO0CMWfSQ/vYace2jzQVxhmYXitHYbyas8=;
	h=To:Subject:From:Message-Id:Date; b=AED3XE11QMN1HJVibsaSaK/xB3lG2GilVkLE9Kg6oa3UL76tZzOcA3N1mmgeJJOuJ2CCW8oQYZ5a2BRM56x6rYgVHmLNk6QthSbaoIIsfDphIf3H3sJVfJKyNXosrBrescR1EXzCIbJ3CZe8x8xaapTNU2XbKx8WVJTkp3uMxDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlgBJl9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlgBJl9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B9EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752914993;
	bh=3LoWGPqNOLO0CMWfSQ/vYace2jzQVxhmYXitHYbyas8=;
	h=To:Subject:From:Date:From;
	b=YlgBJl9dHki8aPgUe8PmiXMASonfQbf/wXpOYRm+3thbPZcOVmSLXZFZDo9ULau8C
	 hjlEBFiqJf6ULpaT2eC4n0avcv82k7eYKhHYyTT/Zlk+JdNISGeBrR/oaFGBO/zmu0
	 sUZYF2msPuQff8ucKW17EGCEgc/pGnTFpR+LCzPGU+IX9jRuAkAzlHb9Ezwj70KK2j
	 1y3jKOud+amMz31ZHrOnN2cmuh/shF5HHF5PIE/aEy4fWb3xIbUzfNZ8KRjx2c4IH+
	 f+eSfAatKWqTzhXW0SqxFEoT5OpfJbrHUGPxWkZsIf7Qe/9K2wbGwlqOPkEqiVLvX4
	 4Yk8QJyf+myfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D60C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291499357.11798.13749711735502677716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95b10c2d97ad210bc34223a2ce3291e67506525e887ea18c1419d7849ca0b8c
Date: Sat, 19 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752914993
