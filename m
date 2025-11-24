Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ECA22A4D8
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763966514; cv=none; b=flco5U4TIHbDPUFy9sTWD3ES1E7pr75yEKzsO2Edv4yA6Y956cm++3B3EHClH5Zo8y1u9NehtGsMlJCHazq+7N1Q8J4tk5aGo5ZUSK2ceKeNuwVUIool5lQwpIPSaBFKW0+jj/zpT7/Ql4IXNt6r6HTVOoZlCcfE8t5ZrBz2FN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763966514; c=relaxed/simple;
	bh=tKN7783BRWylFbacNDOu3K6pQrT3msfm5YWt2tdLyzs=;
	h=To:Subject:From:Message-Id:Date; b=XkO9JvGZU8JkmYyFe5+kS8lZc8oc3Nq3BlQYCtyC+k53khh6MxZo92nzo7L1mO7kntVgzF6heFI6HEAOUgFi40oDEI0H6zL29VHSzKpqICo412jgetnqAibYcJYfGk9GSTKrRCAz/oGZ/KA1synqqRmZCD7WmS1kdK7/1eyOb3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHPe0l35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHPe0l35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CD1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763966513;
	bh=tKN7783BRWylFbacNDOu3K6pQrT3msfm5YWt2tdLyzs=;
	h=To:Subject:From:Date:From;
	b=eHPe0l35pjwsN8TP8Cukf8j+D3dDIe2yFgQCLAB14B+B+7favNBRT+ecNtgKwbLmh
	 VO50FGz6PK5f8VHTbQGqva7GEC+k/2N1yv0FV4sGjhEKllIH6yFwbHuAE8wiA5UV/s
	 5hwijR4OrsFp3XSoQ8iJtVOD6hXyjcDuxdyBQAuA1dtFfokh0FvjwKjSVD0sTZd4Cy
	 JwqICASQz3WLkJ7dqxGurfXZeCDz6icON8mXPNnbQcZlwa8aXofuXg0bRsFwLplLaI
	 C6oIIHNZ9RYJLmlC5eowILwwdEmVdCwuoPjdbSk4taNTHlGOddyMmEkJ2n63iZVddE
	 s/hTTMuRVJmBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D73CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396651358.30596.3424492223409290841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aec78e3597f83b018c53bf6a0d1c4127e16f0197572ced3d0ff1421eb56fcc1
Date: Mon, 24 Nov 2025 06:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763966513
