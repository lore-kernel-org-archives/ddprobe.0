Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8B62DCBE2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748748594; cv=none; b=I75lDARWvjWdUUj62CT5UkhLEaNQGRdfWJl1XWvnBH3YqI0VhjhcYw6+Ztlx6ZngOhgb9nx/WWPqXZ8ANtH78Zv9PRIntqP0VVyaldmcw+2DsZfpJPJ3/uK327EhbqjT1rg/1PnYRtRJNITGzvZx6ktmZfPHc8ekV1FMP+IvsKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748748594; c=relaxed/simple;
	bh=AMAKV5d7WBQTpQmurmwosKypdu8Ti5jQMgb8/ns5TtU=;
	h=To:Subject:From:Message-Id:Date; b=DPlrh2bid6QBZXF+GSRTVn0LplrC+1y6Mu9omg4xrJ9Af+nnqMSJRakmEhZqZwhPCpoIzE1voagZmFwlVdelJy7eYiPJK3m6rRuIsQ+794B4lhZ1lXTWIITDnmDF2e1Z7BNoKmHGBgANqFcxdAGwi/rsv96vdfRJ/VbPmmk8ZZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrBdDlaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrBdDlaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FC4C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748748593;
	bh=AMAKV5d7WBQTpQmurmwosKypdu8Ti5jQMgb8/ns5TtU=;
	h=To:Subject:From:Date:From;
	b=HrBdDlaFk91S/80LT0FuQFTwa+E9Tfe+K1sR9aVzAo2OHBLeXXbq/RZcDUo56tngY
	 yheh8CB0oKo/YFKdYlBdnby+POsEqFINts6XpC3js6Hmz1qYibf6HJfvCq95YUIrHU
	 /itgsb/xhPmAeCqcIg3nHszSCKYc90KaFf/8bgyr++BMzvLWshp4uFs2UrQAepA82D
	 k7xZfqWwRB46O3W8O79jwr1cGtWgSPk9gOMov9RV8qzCphuTa8ws/RFzlTQAm/SwSo
	 qLrLuyJhKAUV8tD/5qTEbfvjaPpwB1uB6X1be/JtXCiYoAxcOAlyyUx/GwkG7oWsQw
	 d4+fY9dWuRH7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3FC5B543
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874859357.12478.16520546229698191992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a110d55f0cbb1a81535b28127134c39a97af69ca5dafbe42d8fbd20831cca1
Date: Sun, 01 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748748593
