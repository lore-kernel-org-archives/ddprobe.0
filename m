Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7A11422DD
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 20:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720123523; cv=none; b=EW7TWoCf+uwqtnKIp3JkLo2DM+eF4R9M2W4YWlhvdZIyRtd0T7FGqir906KJkaB0fRFWtSohXtfV/278QTKbOJ7O6P0UX+pHVqnk0uRCnZKo+LRlUjBrqQf22Q25e+OrSwuYMa25LnVtNiV2Yb+YpWAC/Xds6nC8UuuqcQS70y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720123523; c=relaxed/simple;
	bh=Xx4uCIOsc+7uBVPVnSxsKyyfvbHaStqxMMzCpx3o8wQ=;
	h=To:Subject:From:Message-Id:Date; b=WXr8ND1uaOmK6NY+PZqI32NOU9iJcPONZlbK1kV8TiRM7kFAWeLmIkpBuYhN48uDREPGxYvQJ8WZ1KAHaDXnKh6XQpA95nhd/IOkzZRipfx1M9EYECOLlnm8nQoIqzc9uBlWkFehaMDxoa23vIP0OzWu7iUZh/lkXW56XTtRbd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siTqa7C6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siTqa7C6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF289C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 20:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720123522;
	bh=Xx4uCIOsc+7uBVPVnSxsKyyfvbHaStqxMMzCpx3o8wQ=;
	h=To:Subject:From:Date:From;
	b=siTqa7C6i9isy4mE6JZwwM9nHoGia+xHryyMBkq/4avwbNI55po6HYDPCxUsiQgna
	 7kjFWyKEdo1naMBDuAWq9bX8rcWXUXnFj/+OjK8Nm2E0mkWTS5l/DMPuD/TmU6PsYo
	 9UEsOUnIZeS5QcINqN8Nol/DAA0+nqvO6T05PMz69DJVEDLWuqbq8ZK+L08uJ8P39w
	 rzPEBLl//IWAV3y4P5xRBBdvy38Ilp2Cy0QvKJq/S3efBH5m2iPYcVT5pmSiLPkVr6
	 2yWm41NCZvUvC+zti+V6gOAleG2eJus2DKVXmyRY+d4FI7dkt212xLX2aBlPIPxKfY
	 FVaFO/AC+e/FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C94C7C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 20:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172012352281.6407.9865342418196335230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ee678e4ee501d60b5a70c75470856eaabdb6f65e1705c144f15647be7005df
Date: Thu, 04 Jul 2024 20:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720123522
