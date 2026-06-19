Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F1A40D579
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781852794; cv=none; b=fIVi6rEXzx5DPLU+el4adazgnLu6/3N1R/yLQQoEOctrjRRJh5yLphBCXd1tclsYsal/a6V784cvXtSELva3h/Sk5WmtswrBjt56ZnulpJBhfo9o09798khNRYfUOL3n8KkPSUT2fi1X8ijYiNczjoDhnkqgdEmVN5NPwLWJ0vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781852794; c=relaxed/simple;
	bh=23qgdHQEjASTxEHLOOpkzH5vaEIWUTTCJx6z7MNWkHc=;
	h=To:Subject:From:Message-Id:Date; b=lqCmJXgnKZuefyJsMrK4sdwdNlct1N/eipS0WnD4OvFoRfVTtYSMPoidNHKgfJYe5gEOkgEQzMZzSV/35tePFkaG9xhQL9Idd43h+zmym9m2h7sO6d29fUC9cZ59hPpgE98MiQJq5Tz3g+eCl9/D7YRPOrPFljnPdvbPvSAYm6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVr1EEUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVr1EEUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C755CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781852793;
	bh=23qgdHQEjASTxEHLOOpkzH5vaEIWUTTCJx6z7MNWkHc=;
	h=To:Subject:From:Date:From;
	b=kVr1EEUvjHKjZMHelEX3WDtnd0L9L6TFCPHi40KydWXZvNQ4RV5xeTrz6PIRQtcEV
	 pTIZI2Ahls9Wp0xD5W91kplbNwJbBWhXXE8FjixIUFirN4fzOV6NYXRe+geIx84eQ4
	 /3hmPH9rCN5czXugQ6BiIkH3bP86KzHkDZe+EJuTILCv5EP94wDiBKFMU5rSWwiwe4
	 J1eo2hVE7BrUuLoNILSGF3ZuAmzRNHmhUKbygl5kbK69IiRgjXBIkpbxv2qLkzeTpC
	 e1tUhQlZnl/igVKhkV+smut+D7X6WZkkiewk9RA6G4JMnAifnp3/b6pkD6E0Yc9ZnI
	 UKLjcIGDdBPxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9E6CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185279369.10644.14435249594089572330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1801e043c031a62ab3e3ff774ae25c6aff872195bbd6bc33082ce5271cf2d5
Date: Fri, 19 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781852793
