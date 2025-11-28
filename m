Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EE1285C98
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764359574; cv=none; b=PmOiFWHzUlJ7lfHSzP8RClu6duFP1uFxDJW95ksDqmbNRkxPz2uW/Mm3qw+VRLiGDo3bts7RoQu+Kldvcr91QFcCAD73GThxS6dvei6iYX6vuuLQPMXPslrifrgiLOMbnfyXn8ULL7YzK0DTwzJuJnoGBUszJXYz/4xShaCx1ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764359574; c=relaxed/simple;
	bh=/cwYIq3rU7j5Jy4XM0/yuLMEb0r1kJGXHqg57NsFCYQ=;
	h=To:Subject:From:Message-Id:Date; b=t+vP91Sx1MEf94FSppZxP/+GTjoMXRvbxCKtsP3BU0tUJelFIBYLfcz6n0/497l4ijtIPDn8Bb4VWsYgZh1Eb30CInNv1DVgBwq2gF0F8rCKvwaU/iIDbuFbiQp28eZXprEjmlYcwF/FXJbhmBuMyp9pUcZDF4G2JFohJQqjtfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+u1r9mU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+u1r9mU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA19C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764359573;
	bh=/cwYIq3rU7j5Jy4XM0/yuLMEb0r1kJGXHqg57NsFCYQ=;
	h=To:Subject:From:Date:From;
	b=b+u1r9mUueunfLNA586Vmel1D9LsbFZOFYmR/9rcu+B0ctvPxYLtJr7jadrybTvkK
	 ElTs5ceo35z4kzrbLEGny70+wx/4AdDYNc80MMCFocPM2paqzIOBM4TnteCZgSiIHM
	 eIlFXO1BHeq+smitqmJJs5acHIlzbeB/45TBtxcWq5YetxRqDXN4oThtdmL3Cp/OcQ
	 Pv8NrGC14gKjCNxM3XzcKOOxZFQniY+M/ClrgbwMY14AvW9R6w0ddI6CIeJC20MscR
	 OKnLdAqeCitaP7QZ/ULCjcndyOEADH71MGqJEHhyI6649jeADEwmCedkKICIqFrH/y
	 w7hX24U7oh6pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91289D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435957358.22439.2528668924084152157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ed8f90fd62848707fe5ebb2bd310ec74a2e0a4ac672de4d4bfdceeeea8f36b
Date: Fri, 28 Nov 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764359573
