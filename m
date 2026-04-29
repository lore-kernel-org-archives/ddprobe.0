Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1BE340298
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777492654; cv=none; b=ANzLXivpox7N5ZhlqnnY5+SkhR/f1IbP78+DIKq5C8S/nAkLaz9bcsJXJgYBZSsQ4HcfNwneKpiMy3OqKhYNt4U10uzkIoPXVhq95V9PKe5hhugq1Jg2ofVG0JwIG6F+v09old2sIKX4lrdEOn2QXSvFr+Y4ovRQWPuuUEZm/wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777492654; c=relaxed/simple;
	bh=xjjyfS65oegZ0J06Tkowc9TTfk00mn/1fXG6+IpliRo=;
	h=To:Subject:From:Message-Id:Date; b=bQQO+BqceOpmfH78FzPUtWfYVpWeGN5DRbKESF+Geo1FLVmxgVpMpN7lcccE4u09PrlwkTZ8eyex3IJvLqciUZBsBSot+YWHheQBrFwzXvW3DWYm1QzeBkRTd2d3PuVYngZX9ayPnhwFiAUkRbSCZZqsTtj98jzB0wb1bCCjO9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPSWQXBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPSWQXBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F80C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777492653;
	bh=xjjyfS65oegZ0J06Tkowc9TTfk00mn/1fXG6+IpliRo=;
	h=To:Subject:From:Date:From;
	b=NPSWQXBtOZX4qoN4ZoZ/TOFQowJ1RapFfpTPbI2ri7F566ti5FDJZg8VgfJbbrv7a
	 Y7jrR9nMoHz16+QItgQmtGO+4jqI8L6lDp6wIn/60QfmIrQ5wTmEUIugZoNrxHOfLn
	 umCw/lL9oLYkxi0RALkHi31pCUXxvvrmiML0mGE+1yiNuNraS1sla12L9hMdZwO9dd
	 CKkQQB9SldSnWGPqp7rsVuKxepsUSBej5MRYK96qr8JSbVDkMNbnzAuyRTelRc17dH
	 U+IBWjUwQlTwWeIUzHOANn54s+ZVQV2BtdEsP4fNMvP/CEMRK4lVojQtwvVkkqhmt9
	 MriC+DwwzpHTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91F6FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749265368.20977.17053963499213801481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a3471637c52bc6da33f0f231069c0f27cac118488e2169d7b00a94d50b1bd9
Date: Wed, 29 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777492653
