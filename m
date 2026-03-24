Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDDC3659EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774351494; cv=none; b=EIjKbGqmHqkWllq13i3ElT/axXsjAy5UaiRE8jNiWP3jy3xPgAhR6hg/vcUXCcfjFeiFxEWqL7DAk5Wv0MeGeoqv6gdUAixucqfsIzJPhY3Ica8LJ7OcV6nnQnMcpw0ADt+1SPeGjhw7z2//i7s53Y2glVy3WFhVwOly/LRwKJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774351494; c=relaxed/simple;
	bh=ZlxaszTlWfU2zBTaDstOvtupdes5KMOc5eQuqlt7TPs=;
	h=To:Subject:From:Message-Id:Date; b=FabY3ZlfAJxDnswGmbD+gnAoLxN+HL0tdPN9HsbiesIsTyGO96VJAfYX3VnI+x2nYhn6zuzz7VZo3Lto3yP73fI7+Vfb0EMCnGNImGFDk0ByWhUPRIhGf4HrrYwTiVB5k6mkxGMJhkJzQgswCsbFn+aqoX9YaGK496pUUP/xzWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/fB82Tw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/fB82Tw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D17AC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774351493;
	bh=ZlxaszTlWfU2zBTaDstOvtupdes5KMOc5eQuqlt7TPs=;
	h=To:Subject:From:Date:From;
	b=m/fB82TwXonZcHudSXqFbsflVPhW/1Pd45FgxITNtZbdWMcfce5zl0n04/VxKOgH5
	 PJK30/CRAURLgj4Cwd5ygVJrvjOrkswYGYdmywUnqMK/Gjy0cAbLw667OIeOlCCBQN
	 w0pbHlzE5oMNVBuJWIOrBsDlC+bmIsVXc4y6UAdQhlJ/5roinsd6EWQ9QyvFtd3DB3
	 gXp7LHwtIptaHYKBo1AAfJpCVVc7k86XsOiAl/J9okxFFEdHDq9jpFxd1+h8Q6VQLf
	 SRkQyeAfcv0l4/NmCEfV78QU013g+VFUDvv+RtKm7BYIX4BmT3YPY7JUiEfC+3r0mV
	 qdl9LNQqK9M+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F94E9A772
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435149358.23418.14780061628692108117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3fc76be03d1becc04c4dadebd127342ae0a00e5edda3d83f76d21acb20dea97
Date: Tue, 24 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774351493
