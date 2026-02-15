Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7151E1A17
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771180494; cv=none; b=QHup+YAn13W1ZOuCYuJJ00kVTYFvRIHRr/59NacGbMJxNVRHu9QTAPpiAZJ8NLVNQjrLqyXnB4iljG9DnPU2KgCJ0YPLWnYr16d6+slFjqAG8CH8qwhocc68Yk80T158cm7eDaXgFr625IRVnsK4GvWRSuJ3+UjsT0oGgEW4oUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771180494; c=relaxed/simple;
	bh=VF3oOeNCN5jTEmsd8gArvhmnAvGehXG5nRidjGVpyBI=;
	h=To:Subject:From:Message-Id:Date; b=sKd0d265ZwP4AJh+hnoxhOsAnLhomKFoA74hCfORQ9MYkEcOEXrp/3Q7xkE4Zpd/vQyhse+Tro8GVa0tdMeW+uQFZSe0H7I6uH1qXb0qeHC/WdAsuicaCZCOeWHE2zkzf8IHlw509vnRHPxF8mQVhTl7e2GcDDNtSMlJygWGx7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8u6xTzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8u6xTzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B203BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771180493;
	bh=VF3oOeNCN5jTEmsd8gArvhmnAvGehXG5nRidjGVpyBI=;
	h=To:Subject:From:Date:From;
	b=W8u6xTzo4n5yRpKv+Bw0q7+Q+cvVGY11M8yErdzpgr6CVXyXufeIZ0je5sIvx4ei4
	 x5IMjeoG+Lfe7mw8gRFlCCwbWfyvtgbzX/eYbREveUu7YT3H+xXf6oRryif9B6c4+9
	 rhU+Ts28NabuN0VwTzYJlmUZFToOxqMLhD+aMvK+yqWeQRzNyN5Ytkr9rkts03Kg4Z
	 YBEa6XCpVOCZOzvuO6AF49pqeodAzDXmQs+MLNpYXh0Gn5rA4BB4/JJ3Eo+HdihRl1
	 z1ouLNA4vJ0JgHxiOM2YBiqa3Et4+RD+wYVMjQsmJvJ7jfx3qOPv7EjUS523f+vVvi
	 tngeQAbPEphDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D823E63F06
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118049360.22538.14282687934204423065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d49edb30ef339c4b3f25d35da736ed30dc992bf5989dde2c2862054698ff95
Date: Sun, 15 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771180493
