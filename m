Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B224A1B
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727495154; cv=none; b=GtMFdVXzYih6vq9691rFvB9iJIqyCQz+7Av2b1JOpJDmZW7Ugx0SCumAXBZhT4dG/icZD8szQoPK04C5dYV2u+XN1sDkNNUcjLWFBfTs7JeRqVgu2JUE6NgRUdzUVYktNzueG1v50tTkmsv8Sb/N3/HED1taMO1raHmC+MSNgJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727495154; c=relaxed/simple;
	bh=oFYXSiG5RGHhpysDZ2PJia/z3pkzZl4aHrxCP8oj1tA=;
	h=To:Subject:From:Message-Id:Date; b=jhQkduf+8G3B5vFA1P1J4m37TNJReD0mDJOTnohOr7SXwcjSTlL7MbAy8ZCBb7aCsDU8u2fBDsHQmR91rbtJh9cQeq8inn0BNcAk9aCQwNgHPWhIyDfbYEGKW6LuQGd11eLeeELN9DmSFpTKhwoD/smafT44vE0kUCgXfTIRaX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmxseT2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmxseT2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD230C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727495153;
	bh=oFYXSiG5RGHhpysDZ2PJia/z3pkzZl4aHrxCP8oj1tA=;
	h=To:Subject:From:Date:From;
	b=fmxseT2KXvZp0YzfyE1lae9lUNoCMKmScdjI0k9xzkS1zZq20r2sgr1jORj42suGc
	 VOkY0uifwy0k0HR2vlqCabRnHP8R1ia/h+kJ784mrR8ShGYA9VzhdyMW5H/eEAdg+B
	 hx7yOyyDQREYyl5DAF/qgDis8OdPSDyvHczcR7k18L5Cz2DdFfLZPeSGfneBIspfcJ
	 ZoHNDFat+3xZjFeJekyyD4/D3567+I27jFZeN7JXFI/GnjAFz9pia7tB44keddVG1p
	 hh2Xv4+tqhX6DOSgmVTPVCYbzkrYF3SoaXyxPnJarV1fTdmVpnVWpeT240mEx/+vW3
	 1KSXqCsMF47nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A108CF6494
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749515359.24193.15350270430062024900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55ab05935ca3b1467f59f4744efab2f49557b70d110ba0fff28dc60fb93030d
Date: Sat, 28 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727495153
