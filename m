Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558E03E958F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782407254; cv=none; b=N7fOCbNsI8srl2squsT4PqncvwyYrS70ZmhqGqwUiINE9c+N43+txwNTnPR/cZogNBqQbqiNZvvYRyqnno/I0VXk7Dz4lrzeMZoM1w9DhW26RvJ+ecT3JtUp2/x2y2mJeYIUexKummmXT7o3Ok0Xwx0nf7ssZg7fCvKEO8k45bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782407254; c=relaxed/simple;
	bh=WUzG6iFsbMlInnRW0s1kUKUB9IZkOEyABg2QceXXK34=;
	h=To:Subject:From:Message-Id:Date; b=gDxlmLJ+QHD8qoulkDxq1djhS/3tXUeiVkl6EgFnnsBSskc3KVq881zU4do578Lxm4gapOK1gqXMKtV+3vWsue+yuDI1mwnrEZTASyhdo9BA7qrhxQf0zKUe1JJ6IHVdikj7dIVIHMhcGCYk8tvsTfYcyAGX/SnZl3WlddYmdYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAXEdqG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAXEdqG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE6BFC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782407253;
	bh=WUzG6iFsbMlInnRW0s1kUKUB9IZkOEyABg2QceXXK34=;
	h=To:Subject:From:Date:From;
	b=HAXEdqG7V9hr/3QQ9vbD3Xfkx8MTslieQTH2teihbUIfwuAfl3lGeN2x6phjOC2Sw
	 dK5xrx0xccKnb4CAR2Vt0ibY0bGJbxwnncVLrbiPWvCWKjRZmzCaKNJuhuZlzk3Az9
	 GbEa3aL0aujDAGBViXI8wYdvFlDOjXsqvSqkz/H8YEnyJrJfpz8pj8tLk3o/2fQKAP
	 xQ39Uy8ev2hyIAashIHkLMOq0NWEHTu5d3TAhNqPUUPPTfGylkHjTtkErkJ7T59ij2
	 tH5Ljl9rfm5cD7hJw/0qFlXxmpzvgic4jU+J2T3O6gvQwNSD71fw3XSWkOTJiyrwKh
	 Yim+Qzu0kx+3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA021CDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240725374.23770.184517636200849124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0762ff92265eb120068229695e22e4877193039c9fba7ef46c7b5e2f69838a11
Date: Thu, 25 Jun 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782407253
