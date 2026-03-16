Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF32182D0
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773631494; cv=none; b=g2JOnKmZF3w74vE+XNAWF20/nFaM94kiI9q6fta83h8B3bsS93+J09KQKiW6IToY2PQfG+W0gPz+tFL5wlDZ/GneySHzVDPCbYWzQCunM1EYhNoMXKiHsBXrqPq7VZTnh4TW+QQLdYMHn25Udad8lCy47BeYMMfkQ9Vmdwp4A4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773631494; c=relaxed/simple;
	bh=PB1dRvmOKs6DXRrTbxeBuaywZNTEIpUgBxWqxb+v66U=;
	h=To:Subject:From:Message-Id:Date; b=a1T5ZRluyXJhZbacdvEN978FFdFj4c2vOMQ8kwtJv8YOptB+yhivDXOV6QEuKF2rEgUAb2PsROwm3kXR5Z1+LorPXnUWBcJjw6cCeIfHdy3uppPPIB3paitQ/3QHmyfezieD7dDu7kr9SAx28Zoyd+z53+cYqt7Qhv/P4bDLW8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiLayqO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiLayqO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA8DC19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773631493;
	bh=PB1dRvmOKs6DXRrTbxeBuaywZNTEIpUgBxWqxb+v66U=;
	h=To:Subject:From:Date:From;
	b=OiLayqO6r8ofk8dPLTsg/6dROFNSHVmqXpLJStBTQ72nENCxK6hIGbbLmZbioJsTz
	 wlCYfE2mT8gonoa0OaT7Owpc6hYYCbRf1sD+aWwl5OJyeuYrxqt6v1kgwT5HH4ic+p
	 55cOLUD6MgNVwW9iKkB3Uqvfhkn6U0p2LsysS5s59uQacLBMvg9IGh8erb0Vda8Y3J
	 BkVdWnAV/8wWN/EzSK0QDGi/3ArAbeX8luO9CXDPehBSe8nxcpXKu/T1ti8emoiIia
	 2AK+QT8Ew0eeXvwGG+WSdQZ7bdgfPGUsUf+OpKlzOQbgjCGf2+gY41SB75/BrlVNQ4
	 BUpAe0hg22uhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FCF3029F
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363149357.24184.10125708985090268668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625d3532b06e5459d736658207411d5452137a0dee7e0318f5913c7f6f003fdd
Date: Mon, 16 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773631493
