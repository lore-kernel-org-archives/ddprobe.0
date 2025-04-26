Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3243D17A2F2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745643594; cv=none; b=lAnfCebc+D1Ms5OB0etTTAWyrzWM0q7avmExmKmDDa9GTePRj0jaM64lWSX6FPMB3b1VgqdmQ3/fnSd2JzhggrUU7eWIUZsUMm+k1IINltMe1ny1m1ORTwEJM4nzL0dR58M0reUSv+4nNR0XY6bhhvQgeHLXi7y/q+ZdfhUllM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745643594; c=relaxed/simple;
	bh=eBuPAedcVZo9vdVtYcNztw7M1ntpTBJCTcadG4D4m7w=;
	h=To:Subject:From:Message-Id:Date; b=YnQmMenpZOfI30sML/joM+T6IQM7A1g/E7BQedqAoXdTqjMZz3/Pn9HuWuU9AYW384hdla6s8tNeQaepIiBF2JLCVqyeCLvTekjKjKXjhhimyagZkCA/nC4PzWSPyNYa5dwRJQwEkBcWQ8h/K2Qd/4/IccqwcWit1TE+2vv9BFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSjwtJAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSjwtJAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33EAC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745643593;
	bh=eBuPAedcVZo9vdVtYcNztw7M1ntpTBJCTcadG4D4m7w=;
	h=To:Subject:From:Date:From;
	b=cSjwtJAMUaEoaPfBuGXf96Hj27MieG5Z5hcGxzOXmErROa5L4N8ze5dYMoecwkskx
	 YiISuTVxKTMhDXf2SmOwjF0rc8pyuvis5nA5tBmGej533GcUKGfU4jY6yhAWeHsjz9
	 xB4TW1msiNlQjFNjy6/ZLlJdQSB7Uyoc5pFPT9GyL5sL0xCuv8WHArK5LsWQyGdJY5
	 ujKNad6oTNmGUQvXdzpQ+R5XCgsSLOTi0q3hIgpMqokY04chusc6KKOCJVgd7uK4Cq
	 D7mPBv6+QWofv8LEV3cn6t5ASy8e9CamJ4SI6n8RVTjYR9tmcOyX3GJC7H766mwO/k
	 oD2G05gVz695A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EFAC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564359357.32281.10052196426684097844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65540e5e6b540fe2ae31f4379846410b512eb42641a7d297b9f2b7378bc41923
Date: Sat, 26 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745643593
