Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD3A23C4FA
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773882294; cv=none; b=jgc184zkLlW2/PGlb/Unvgf42T4xpcKFRhBfgIJhnXbHYq1N52oaXIT8Z5CWE07DA7DXRm36sqqL7FhtCrvBJFwIWaF7hAMAzyTMBWuvaPyehOYdnFvV/JR8esr38w6bsiVICJvoXotFfxcjC/Cao0M+F9BZWmC+0MXxJjdfpLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773882294; c=relaxed/simple;
	bh=TlziIWBj/+SDOeyaxGgpkbOlZB2Bi3sXC6xZWlhU6uA=;
	h=To:Subject:From:Message-Id:Date; b=XmTPgbvMDG0O0m8sECzwFUiT99X2rJSEtSEi1ZpXJ6KhF+/11J1S+H1k4g8KqQl8boqAU4xKQENmJ2t4CxrEH3zi4V9DOHq9eUa5VTtXvI4dC3VCJ5sKw5uELW8eC2MON+c9Qtq+2UhnrRXYsQYrjHVBmEbAggNKAAOQqSeYSlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcXmeqIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcXmeqIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41FEC19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773882293;
	bh=TlziIWBj/+SDOeyaxGgpkbOlZB2Bi3sXC6xZWlhU6uA=;
	h=To:Subject:From:Date:From;
	b=WcXmeqIBkxA/MaEroc0FJGqRJlfaoNvA19H9qZsXoKLLG/0wjflnnh39QjaSl0oeh
	 cynWwaQJM7tQ2umqKp0uWS1JxNmXWYhmyyciUfoCJ6oz/fhdHI7f0uEml7EZleqNj+
	 0ZiJ8fevToMEU4lXf+HMuLfhbJ4pH2qiFfu02FL26i0+tUkaSL6uIF7NHnXV1kY6ek
	 c2NW7UJKt0t1OCEj+xS3Gr2Ofoo1F+pAL+cubT1eONqpEzJ846IKd0J/gnAki7+fCc
	 kAw2VM5TmYAx5lIw+TFUPV/tyTJ/Op3iscC/h+L7jlt8Gtj4pED8tFpKvJFZUYMZBg
	 PppzjR8JCqBTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9205D1088E5C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388229357.11117.5951056456287345233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1afb9475f91f13b9987897ca9b2b0de13f6ea140640c40f263813fd8df02ae01
Date: Thu, 19 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773882293
