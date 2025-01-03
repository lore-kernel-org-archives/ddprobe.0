Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12946A93D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735891554; cv=none; b=eHFkCiU+6qmgQTn+TkP62OYoW1fLGsS2AdwLQvygrFPcazRsORAgPLT1/jv8p2urhmeNSDEvt6FKUf+YCwzGqRCyCXo+8JsoyH+/5HfcRBWb7fcyM/imcw4Q+Ds5S/hWWGDgriS573N8pgDLjfWDZm76u3ebddLBA8zlHQInQak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735891554; c=relaxed/simple;
	bh=66DdVc9x84V1wCQagcafS3Nz6xqvBdOm0GsxulV5wlQ=;
	h=To:Subject:From:Message-Id:Date; b=jh4UoVu8F7Nggxq91gutzt1UbTu0OmPJQiyJ8VDjGz6FyZ1QJTgOw7XQSpf4QfjXa8CJ8QKK2D8wgoLYiQLJNdJ01k1WpT03nRA06yYxwR+QOXOUbM/5xRff6yoevbZSVIaRZOjp4uB8oLKcXqQwFQMRsm7oM8eL7kBqx+2nREA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tytnHrho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tytnHrho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A4C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735891553;
	bh=66DdVc9x84V1wCQagcafS3Nz6xqvBdOm0GsxulV5wlQ=;
	h=To:Subject:From:Date:From;
	b=tytnHrhoJNBL/BYfzpIPWcMq52f07qgtlef/dXVEqi1aBUw51FpLa5AABZIlhAeQX
	 kAmuRwyLCTlCbh6UlcQJ1HvL2V9YYPILzgUvzRZyxHKlSdhEIqZorW25sa+cGBXkIR
	 rggtFGTEWGQryPWKyCrScccLIk2BRzGmcEac7Vo5P4ugFafVRJMKLF2fchFDvOWjUI
	 eroGgjygOzYbeQ+Bpc6HqzN42OVOIoJa8sXxm4NvqvRFvXVnQRvtAo7d/ZbxrWlnJ8
	 CMA6ONRtMdINs6iHgTi3HbQjJjm+GSFspSBduxHLhfYNi92QbYkVU29fEAm1ezmMcZ
	 eBFuTx1VuoI3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E066E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173589155357.24745.3568337528821893000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6109828f01d7a24f496d4c86ed7b463fa02c802884cd68ea57b02bb9a271b5c6
Date: Fri, 03 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735891553
