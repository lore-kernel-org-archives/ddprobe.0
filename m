Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C12D81749
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748800794; cv=none; b=oO629JD66NPIFcCFnEFK7TS4o2UdptCC2GKUtSzWp6zlubSQ/9Q3wpMD4SHufsjQQyJIsSyiNb8RzvlHtT3kKkwR/+kB9yciVgg77VgYILJCggD51MMZPKsHdR+SnbGn9GtVB+HY83DhTZurnPUwui/oivOODlZsH112lIwyOjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748800794; c=relaxed/simple;
	bh=YnCQozTInrTKyK6jwSUnZoYyi52hMg8nQrYtbLQpEd0=;
	h=To:Subject:From:Message-Id:Date; b=upgK+ZL+BwnzxRxUwng82XPm18O9qQXAllie50l8QBSyuZcKOoSwHFvhgaaggC9ZRaOLw5TXy7jfwMD+cYngvdIhw3/nEmE8UkjNDQPa/5KqV90c2abXrOTHY6olIU9o3QlPqf8b9/+HxElU7JPUhQd4eryUAaVY3V8Bq363hns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZGIJB6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZGIJB6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A183AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748800793;
	bh=YnCQozTInrTKyK6jwSUnZoYyi52hMg8nQrYtbLQpEd0=;
	h=To:Subject:From:Date:From;
	b=iZGIJB6YpCnS6t2xGbpi/gwSOthnfMSPoig/HK6dR8/qCpDjQBtAWgXB9uCFM9sqi
	 W0omICXDK44Nnbcgdjjce4NYDlpRgBdFHnfbs5kB/dF/WqI/DgeTjwawZ+DPZYwYE4
	 Vtzt7UvoPByNzjKNX8V227dSktHxRqbTqoVj0uG3EVYPM/Ql2lYk8ok+6V+9g22POl
	 I4+20Kjv2obek+8dXxQk1WuddMNntZSqN2LHIzQJChZeHy/woLIBqc6T05tw+9lilZ
	 nbyg3BqYBQa1Pj7yelYVOqNA2jdOoFl+6GakExDa2IGIsujSQjPb0nk6GlCx3Xsoy/
	 wSy7zdRM7tiyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91599C5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880079358.11610.238241174080781630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33788bb54c283ee84f21d3f153d137bf668ac843bdb2e57792bd2ba6098f7f81
Date: Sun, 01 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748800793
