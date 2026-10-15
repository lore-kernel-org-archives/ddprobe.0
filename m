Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C54254EED4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792078834; cv=none; b=M9Jh2IiAmTUou9h7ABR1jq83ETASpfWqVJ6ebwFLFwUYcjURqZ0ma3bbcVsyvzMRvfbMCkozTKjqEO+YHQbf1jYRq8nc1kF42ypHHbo+jOElDGcBg4zxD+cCYhNbnloEWDucDJp63ePfubzZ1qL94LxS1E2LsG9Rn04eI56nPpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792078834; c=relaxed/simple;
	bh=NZkVMLoWwEXJjq/i6xktmuZ6J1CzSR4CKr7WIfk6qe8=;
	h=To:Subject:From:Message-Id:Date; b=GrZ5hUwM8cLYBVrSCGZ21dp9RYYLwQRP4sR2U6WRPH+E//BUT0H4HFX3y800lH+F8DGQexZOqCnvJ2UHEvlBBvQaiAAEoSIz7i0SVQdcoNTFTQDQwxN4CZ9k4rnX2VPA2FvQ2FIIZE3eVYG/aR/ewfgm727g06jNwCBFKylmEi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlQ8Zl4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlQ8Zl4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC46C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792078833;
	bh=NZkVMLoWwEXJjq/i6xktmuZ6J1CzSR4CKr7WIfk6qe8=;
	h=To:Subject:From:Date:From;
	b=SlQ8Zl4b3zS2BD38IWLEjS/ggE+Jyhnrg8y8m2YBlremM4gTHs0IBC0FLgKuAljqJ
	 efdNRkw0LZgAX9DTDv5/A7kzF1fcXqqTM5cvDfB7jxstvwN8PhZujwIyDEbUoxYH7L
	 uWgVis8+Ic6GZ/8r8Z3u2ilBUyCy4OA8qIZfPew2YQPIQOcyTI5OQ7DXRRj/hvNd05
	 5+8/8aiDpBKBJNHZ+ls0lNC+oS+2zU5CLyc+mrReVLUzh223dRfjd2QZ7ui7/zzpjA
	 xnxMqghlV8T2NB2zJlWSEnoPu2ETrQLLrAzKIrC671zkWlq1nTQ7toUg4hvTWg8CsF
	 LtgdZDd+crW0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9743CC6B39
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207883368.28680.15720976603821347842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818dfb07e28b1991be7ab1732311680efe31b4c7c413757943cc8ebd8412a932
Date: Thu, 15 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792078833
