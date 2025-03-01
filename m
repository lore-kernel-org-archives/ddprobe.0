Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33907BE6C
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 00:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740788934; cv=none; b=nE3Dzs38a0+IU9+wqIoL1gppmd8g3Rx2q3KqTpQuiUlulxh1UtFZAUbKwU6RoBqkd/S+Hl5akyYUQt4DL5YY8zaB43LexnQLK/tH+Bg7mNyklMA/nYnJ21esJc/V/rzkHJDzBlywmDc4wvARXiNBAOe8bZIiXogsAZpnIa3wJJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740788934; c=relaxed/simple;
	bh=FJgX/YXogVYFDbg3MjutVYua4LsJPlI/doLMZBx4N+g=;
	h=To:Subject:From:Message-Id:Date; b=B5eqCTGWN9jRT1L2SE1RpEh3symm9NujpEUKe7d4KztVTSxxwjgfCiIpDcSmqteXj6PDfaZnICcP4BFWd9BDoQ29usA0Sz5JUEf31Zce/MVy702vzdULsods8CeAYDuJR7p2fcrbRB7o80vACqpdKjbjnofr1j7+3gzFYREGXtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRGZOWQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRGZOWQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4837C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 00:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740788933;
	bh=FJgX/YXogVYFDbg3MjutVYua4LsJPlI/doLMZBx4N+g=;
	h=To:Subject:From:Date:From;
	b=nRGZOWQnTyalNSAGTNFc8RMY7huQoFzdblkhs93fNOxVzUneeWZ82ctGTXTV8EP7I
	 fpk2POfuYQ+FsADz/0P3L1TOyFFoPV8BgKzvEPQ7j38mUexVzeaJa2leQmCXRZOvk5
	 98393vh+fQbqhulWpEMSl/ZZJCf1G/cjNRqWbFO5n3f8JvTcgpziOAZoFOLV15GQPy
	 Naov8STVvMaa2WPg8VMNr/wuLlEd4LzuVGYQS/PS4GuoTWFfsSpzg/tYSOoASXmo7O
	 gYE3zQIPqRXgUTTeaFwfTHP5juqv6OZpwH8kufCu/bah5PKTzebrqT6pI2Q6/vTlxN
	 JO1avaL7hb6cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95775C282C5
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 00:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174078893360.19759.817424176595413911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e035eca1f06dec0e494a553274532ab45e2908b335763fb05466e11c03a0c9
Date: Sat, 01 Mar 2025 00:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740788933
