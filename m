Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DF01EEA5F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763829714; cv=none; b=mOr7Tl3A41xq89g4RqP4jlRXqlyvrPp02lCp4Tu7NHu9YI9tJTjpufVzxKTY8wH/oF3zsORVvuavxGrq5G0D+xbC+qsWgDdfj/4Y1Cmw6ivDkdkWYstMjhTpyP3sKbNUJM7gHQ8yZv8oFZ9CEaTluLU0kliPSR7hsft7IADRHvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763829714; c=relaxed/simple;
	bh=WP7bwTRc47ljxoR7JHBdA3gifAb3uBoyW0e8QBxTcEg=;
	h=To:Subject:From:Message-Id:Date; b=JQHGxHoNpSj89fE1ZQRPoi+QUFi7sZe/KhhEI6lyx9H7t3FssFoMwBVxcGmEpTQO+N5w8UbWBsClG/dQCSMIhrrQQ1xdsN4ti1Ec16SbNTTQtTYwGLuhHbRPPqQeHBfC+gpH/toVpfB+YtBQFXyFCme53NrWiJ+TlJYDjzeFEU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlYgPPFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlYgPPFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A1BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763829713;
	bh=WP7bwTRc47ljxoR7JHBdA3gifAb3uBoyW0e8QBxTcEg=;
	h=To:Subject:From:Date:From;
	b=JlYgPPFobuQ81LD07iPmupLwAz7E36gGHb8Yp+/rMlhN5POOytB6T4sXCA4yUeY3T
	 O9JtyfvJnUFTyyUOwoaqCUnlzmQFRhZUDkMXjxj/U7u3k1OuL4BFMAig/34xRun8vr
	 VJlmTsRd20k4D9O1fKLu99bU6RACccZi6CyoAS6Z3XcbmeZQEjhIfpbu7NvuV/80zJ
	 vhefuAKd7kbXiXAltSBqFGYAgYd7ghnqgqComww0/nJSVxQ4jcAfL6mM8/PGjvK/o+
	 sNZKyUifLzNQftaXOhNOy621NZNQfnmx7651BoDs+lPyAm9PZCXjA8/9GtlyeWxIhU
	 mF84uvY3Yaylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DA5CFC51F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382971358.20683.12043575712811673901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5858b2f024b0e15d4b7117b235035b6efcbbbf17cad2aa941962ff7a04ab40
Date: Sat, 22 Nov 2025 16:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763829713
