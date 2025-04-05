Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5027A25569
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743832794; cv=none; b=C0lA/w6DkbcNd9t75gorvK2mMnRCHRB0Y7hujdxBVxbzCfHpT84d8HmmcV0YAK/ZmYNcXa4q77Bf3p3s0a5zcRp3EbLs6EnwDNPkzU7K/ybX22I3M2QEdH4UKbthqkFWDMWUy51WIs6d3wz94l1BDmVeXAaKMdM5U2qB+7hcJX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743832794; c=relaxed/simple;
	bh=rVAzBI0lk5aoAIbE/QepD2EiVtQE8xpdv7YPgExssik=;
	h=To:Subject:From:Message-Id:Date; b=pcUgJpUvwdUvhJTybTiZV/5SlQWx1ddIqGIS/mvWZvz2sJ6GY4W4O2XydvRd7kbSVXLF+dbdduqxH2NRITQWCJhJKlxjH6a5LVpp2EXhzEuwelHtrjg9m+Leo4VHnzeER6ARtptWpN8jjmHFh2AjNbTKdedP0vzSmq0cbMlThRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjrrD45n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjrrD45n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39D9C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743832793;
	bh=rVAzBI0lk5aoAIbE/QepD2EiVtQE8xpdv7YPgExssik=;
	h=To:Subject:From:Date:From;
	b=OjrrD45n3nf2IEwAGr47gl/+p82iZFHhvRpjk9IuzwH3e0f0BLqkk08EVij+EzPRb
	 yeMiT2PgTu1e+lIDKl4zcCNm8TacEphy6q0NhpC9zY9TtiOu9ufKZJfwaj4uEdzQ53
	 coA8jhFy/Kfk/fm/Qg3xnpwMmuhKR0bB2KxJhY0it+gt+IkJh2preGqCyM+Nz+ZDn0
	 5iYf1sCGMFcr+KbvxLldiOwudZuQdkRYTFDB89b9jXXxUb2RhKKnMnxrMcaL7KusQt
	 d933nwf6K/UoDOqn8B/MHGFo90ELng+vUjEy0moa8qZr/a65f01rwNfL6S/8yq4OPR
	 ALv7CU1rk5lZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A23C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383279358.1678.6751924008408787304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26004d501d94b824ae9b8e1c98a30770ffc413d390a00b3d5af56eb677e4548f
Date: Sat, 05 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743832793
