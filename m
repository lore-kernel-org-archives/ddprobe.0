Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF4E20ED
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781049934; cv=none; b=H2ITzDQ5yHIs94c9WlCZmPwZ79gpdRG7yPXU86iJMXXEwwMepwbDjKvTt8RzMospYFYQE6lxOUrR/lVR2tv720c1ikz/oWHSNlUmeUkmr+/ocpCni/mtfwXjvDAr+vT7xjh5BvtW14yMU7W0AHo7h8IUcFXw5v63bGYxP2AeQUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781049934; c=relaxed/simple;
	bh=/2NUOc92Tu6pFAvTwH3bjGj/C56q6RnnAFZ9WjXb8QQ=;
	h=To:Subject:From:Message-Id:Date; b=XSsEKsdlLm/E1qDcCMb8HUakk335lMmgJCdqI6R+5NxJZycnNuDDkGe9ZELYDHxTwOIYQ2SiWqmBv0N4OFrBh4b4Lh7Oeg0oAvC4SKvHXKbN4bjl2XkVCnJJCBfiDG0iKAX6Fi16YRHtFHSoGxAwCwYkuIzcjBeAZeyU6LnnZKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggGLsAF3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggGLsAF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB28EC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781049933;
	bh=/2NUOc92Tu6pFAvTwH3bjGj/C56q6RnnAFZ9WjXb8QQ=;
	h=To:Subject:From:Date:From;
	b=ggGLsAF3+v2xnuaMHeyLIhOb0MBraNwjeQzQ5aO2Y7lZTP4sILpxPsufTVsFJKgWu
	 lcrPqOSciTsw9o3pQ5EUfg9x9gcE/w2RxhOaiflqT2lsd9rLsI8Q1c2WvLvhPibs1m
	 nCsvnRKos8EdIaLXuvNERnkfrfn+bUxahqr9z76hYOYN1Jv1uHmEl3dW2v2KxLjlBJ
	 pOEhy7aMSMJ8FYUuy6lIZnrKGsXrkACEpejpeQu7tT55CFPXHbnGg2oZaJMhooHhRA
	 /HUHjj0hMxnDZb3u3AHRAAPnNiGhDZJhrtc5I7Zgzy/5ueJRdvFOB7E05BVNasTDg9
	 MbthBqYTJOZaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9A5CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104993368.5017.11215574933815109077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4e60f65a1519a94400eab283ad41160c1bc6dc3265e54fb2355495e40f8944
Date: Wed, 10 Jun 2026 00:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781049933
