Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F1B208D0
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783127314; cv=none; b=j08tS+C4JAr/EpaVPPYtiB4x5kRhHuQlJMSmUuXlKXhELpC+BnJUjQqzwLHeecUVYOAQHRA8VPQt+sBVLN2NLSvGAIyGnhxtSkbAUHIt+3f3PYt1NC9FbMPg8MDaJe58EDhsjkepoDzyXd5/opRqhXSB58jZ9p+Cjq3kNYb94jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783127314; c=relaxed/simple;
	bh=uS/hsy9cLrikICtiMVVsaIfqfJpMbKDOcR1I5fv6XPM=;
	h=To:Subject:From:Message-Id:Date; b=UBQt/wssFmMd1dCYQz7NSFUPLoX1oY8O0SDYCYgCI07RbMfOwI7iQ/ADgpwKah064vvBjK884RtZSonTzEKTMgQ9zRSo/Z3A3E23ZDqzstfxxJXdd1vg7ee5e/eLsCFUB6A7dCqgkVCh1uEE8h6b5FqIE4CcrZo63cIkDlr2Cls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6u91mtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6u91mtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9D4C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783127313;
	bh=uS/hsy9cLrikICtiMVVsaIfqfJpMbKDOcR1I5fv6XPM=;
	h=To:Subject:From:Date:From;
	b=B6u91mtAMYastTQIcUBHiL9Q0D4iP8GndUpddU485oQiPFyymCJ73LJmLN86JvnNf
	 nJiJt+/zhBjAt8Ne4VJVZ9r7Jv8ODMHLEgMuQkzXZwTHRiWs+8tNgFwfbiDAUp53kL
	 JyUQG20yK1rxXbRphQGxoBm3mq+zRUUeYMK2n+iWSgtl+WGUETvJn+uMioM0AvVI9W
	 8W9I6kzWWM72R2yPVPapBDfggKpB4W68qfb+Wt+AfgiH38GtXXjfZP+qQEs4/nBw5g
	 L6T7brmIcjJbazo7nJRYx2eM7VEgdPlZPpYbhrLU7xXjeeM2scSTuGPtAmKWqQOmFk
	 bFupg9ubL0DDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EDBC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312731370.7496.10067995829875899847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd23a7343bc5771adedd821a664a6c5fab373768b2ec3e454fc09839bd26513
Date: Sat, 04 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783127313
