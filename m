Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49F5329E68
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769164434; cv=none; b=fdBz/fbfthUaDfdOhJqGTNZCkDn7Bd4BQM+njOwiJs6R/KTwz5FzmNCm1H6YReL5UVDH0o5iCyv3/hOLlatWiV6ZDqpwWwkKvW088iK1axiQuaywGCsbc2mg/gsG36GcqehuZuH9HIFJvVkAbn/nSk6LfnQxquyePXnGggNdOrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769164434; c=relaxed/simple;
	bh=3rC1eNQq+5MGpLbhcl3AqT32nZKA4GMXTBo0js/01Y8=;
	h=To:Subject:From:Message-Id:Date; b=qii07SJwRXjize6GCcomqMe7IfCAxLOC3uXih7XZGJM2JdwF+EUux6zrpIWXtxya7kW3d2Zp0PrFwNrUYRXmqHLWIbPg2ShNFHeMlEtILAL/2uY3vNi51RVpXgOdoL/ibYIsZeZeJLthBIOCjITnFdBy2rKD/rJNTtPLZj3M9Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTes4yA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTes4yA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE5AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769164433;
	bh=3rC1eNQq+5MGpLbhcl3AqT32nZKA4GMXTBo0js/01Y8=;
	h=To:Subject:From:Date:From;
	b=HTes4yA8ZZNN9/0q4gXUaPYjo3PNxF2g57ya0deGFRuyN3lx+RYexmlesMpTreXR4
	 i9aycYYsyGcT4GLRpY2Nx6MHyAvfem9sax40hClsWtsPDu3BPgpHlvMRHZHTl1xe1G
	 wrfHq5qGX8wjgUHFwOzpN47Cbs4ddbWoAxvMtuiMmvmhUBGPHKQmwRq1k1yMpO1NQ7
	 3ONKk/jEZJL4g7HNDzDx1JtSwqzPdBLS1l4j/FmvT6WrR7/+3A4tZa0zO0wuZlo0nh
	 PbhO3+fxr734UDMsRl5SEgpD1A4ANkrmYMuHvcnjlttri2inuQKl8xJcLS0EwwZLTO
	 egCeJfX/VfZxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9107FD7236B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916443358.9588.11129421951754952588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757ebeb7995614d9f4406d43103760fc9d8c7c5b6334ee1bba0eaa497e61c403
Date: Fri, 23 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769164433
