Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9FC01ABEAC
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743759594; cv=none; b=FR3NzdDck7Fz/4tqk1PSyf8WsocdiXFK2XZ0CrKjXB74KU1R9zM2U4b+gGqMcvYy59zSOYXigpbZ1ZXc08itNfRDmhPriq7XD8EF++vXQJy26Y82FyknHkv7n+URI3SmcO9Ba+Q9l9QcvzSzy9aQBA142wL0N/u44/z7KUjqMIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743759594; c=relaxed/simple;
	bh=iP9+3gQktBEazvTlDdgrmgKRk2VZOcY8bnaRJQyXNqM=;
	h=To:Subject:From:Message-Id:Date; b=nPpp6yvzptkEnqPsXuLd3yHK96YO/2pro+GdcC9N6ESbWfmJEoN7OCPMCwfKSo3HQG1s5lZkbPQCGafeuN/+YZ+b8LuS3BLUe9dOSdmtwkg9zzJyaotRZ+u171MTsqGZf/HVM3KazM52JVftpFSmKVEIYsA6Ca9tt4+LwVZXzYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkYd+Ts2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkYd+Ts2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4342C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743759593;
	bh=iP9+3gQktBEazvTlDdgrmgKRk2VZOcY8bnaRJQyXNqM=;
	h=To:Subject:From:Date:From;
	b=BkYd+Ts2PgyOWkWlDSNYKZh+QT+Z3i4uSv9yqKSmig1ua6HlMwYEkKMw8zeqjxNBZ
	 Kr9mhCYjB+lr4f48J3P5aRltkdTLLINT+2j9PMuULv5dlDds09LaTuLgWDrjxq9jKM
	 gCScMHLsmIWchGdGgKNDJSQRTOaZU7D2twQFjpwX3U4pPpYyRi+mJnfpvqk60yvOME
	 B/sWjo7TTzrKrcNUmknC3FI0M9qpZfX7IxDGXG5Ge+aXmMXW5XZ5pWyzOFnZOYLXOP
	 15CppHslhD56D3g6Mk9yPLJW/+S+Ehe2ac3RB9SptHvnwNCJkOcrHx4rrQuReefio9
	 khu1k9yWHQr0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE0EC3601E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174375959363.26836.9340887232663792777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae165ba426a3f649d8a1c8e7729f971e28e5de4e7d09ef6abfd775e6963750f5
Date: Fri, 04 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743759593
