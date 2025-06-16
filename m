Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23815156237
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750039194; cv=none; b=KdCA7CgQ6/kmw2pgHBkwornudVCpy55r/+WZfUpUzj+r9kN9qtV8+WliN0YWOsA+dRb+bJKvkubeOvfIAuuYTIpHATaon/gVJjAVPLidiJomGB5n2fca7FpQxCLsxh9Q384+rp/D2eKdbFO6SfWn1UKzDxTiMcOew/0Sz6bUdkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750039194; c=relaxed/simple;
	bh=AAqzOTmwEfEGgIY3lZVRXgCLf4JEBqYSmt4gC7IvWqI=;
	h=To:Subject:From:Message-Id:Date; b=D73vcgnxeu95cZnFO3Fy5A8LiUUkJk9pQUc5z7vHQ9TfltdrwV8bnukR7CjL3ybsqBAEK3F42imzxg+pKHRCp+EKFslA2R5gcjzFzr/OSLjofxRfqojwVZ/OB5l4tIP4z75722tb+X+7yGxnSzfXy9+4qT2oaUOf0XT2ntdFwC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDJhCCwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDJhCCwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A835CC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750039193;
	bh=AAqzOTmwEfEGgIY3lZVRXgCLf4JEBqYSmt4gC7IvWqI=;
	h=To:Subject:From:Date:From;
	b=TDJhCCwTgobcY67l9CVggcvaaT4dYlBvwqtfGZyXnRuo2GnVZ4OyJzDm22OZm0Jsx
	 dvGuHoSUBHD7t62pZNK9F5c9d6L48Y+HP0yVNPlf39CinBg9RPFgeTZ3ktLyCCY5Ke
	 DF8OC7K0oAeV8jSb07cWF7Qoq3vVcK2hCaB58r7drdN8eODAO70P7lsWEmNyq78mKM
	 QGw7X8aHYfG8Z0hSdheYAunuUD3011kKhJouvRircxuBzSucMl6Q9AZAR6lDfsevgi
	 6ZTQIwMID7chk0fz5in7vbXN9orIGc2nQce7BsRizElHaDFEm4g81swOeln5riVYQZ
	 wr0pi9MoNpBjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C3C71157
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003919359.19371.9599182898503911467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d87e8ecb35623143a5fe905af1be313809dbbdee6e01682b59b87ae7efae18
Date: Mon, 16 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750039193
