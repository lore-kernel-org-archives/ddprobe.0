Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213D541746
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722872754; cv=none; b=hLiAN1YJyVV4NBT1mifykV/IzjPE2KJ2mYongpu2+oKrfWGneV7YJ3w4u8XVyQd8eBJxQgvIIZkMTrr1Am+3mIF7QNQLOxnC2eZfvCvZ/lcUHgfkXuVmRdxbKLU4HSSLsDwxQEOr4MPCpaQ+4aQYP9iSFT3/Tf+8CnMDx2cApOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722872754; c=relaxed/simple;
	bh=ZCf98ASa84Hd1he60+zA0+iESuEe6pvawjl6LdhvGgA=;
	h=To:Subject:From:Message-Id:Date; b=l5ASmY5u9QHryrLGJe32ziCjCsrhK2mpbDpLA5JOa9E4Bbhsv/AXjQdN1NonNjBG5rCHTIVbpM12mOAOG5JSpMlx4uJQ6zY7sEMmCdjlwvesz0qBsjSyPl/6hgaeU42EUMx0vLuMgHgu+nyMNLscYDyboc/5NJXxayhRZIi0+uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNhb4W4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNhb4W4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AD6C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722872753;
	bh=ZCf98ASa84Hd1he60+zA0+iESuEe6pvawjl6LdhvGgA=;
	h=To:Subject:From:Date:From;
	b=CNhb4W4JbwQeFlfvCxMQmOtOs64cQby8Kc5+w9X5oGZC+6yk1AFhEStgZR+UyMYuh
	 YR87s3Ha00Vmd4qW8QiR9eRMLxtB2F4Fw4LgUD0q4Or4bUrfHA8J0uX2BFa2G9vHXj
	 OUE3ZQU7k+z/byPPmgTWpAAWpC/mKNmDWqcombIoI7i9asXKy5zc4jVglGV0XGuZPA
	 aFwqf3S0S7NspFhLQvRt2102SZdl1cYNUxw2FYYBzIlfrPFuOPpBD7Pj4BgRytD5In
	 CS0JA6fIL+bHO7Lb+F+VPLEOx1N7E1UnW5ve0sI9oRautCUp1T/abPbbNmnwJbfrei
	 gexFsx4XpjLEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9452CC3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172287275359.21010.9914446594799473081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca1908d1a3cdaecd759ed261df9df36c06bad072333db65450f563ebf7eb0118
Date: Mon, 05 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722872753
