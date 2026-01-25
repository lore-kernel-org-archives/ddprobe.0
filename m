Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE6F248880
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769367234; cv=none; b=cOvE9fualq2gh0UULFqe/5v4hT3G3IRd6mEvBGPLo75VvTLpZlNa67lVToglU/dYy4pJQA0fPwHovksdedNkCjctJZ03YMbUNRsjNb4nZtaUu/dMxGhk8fgMnqKI4B4OQWU4SbrGzt6XOIvzdfQy0SvF3rYbX75I93TJLBnW3Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769367234; c=relaxed/simple;
	bh=Xx18c6VtACtPijYRJ0wZTNBj48UA7zZNHbG4DFWXXcI=;
	h=To:Subject:From:Message-Id:Date; b=Mg9dpo1Gy+k63DZmzzOiJlJePUP4oSgJK8n5eRW9l1SiaHhjIoL7Q8vfxVsT+3wknrEn0RjNSq7EC23DyqIXo+HxoNp5R25fTmY9TvAtsTAJkkP0fjSCqel2ex3q6AVr/0RZL2vxaT3u6V/eSgxilXv58FACnmZoNVtBVmJSBTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSvl+QVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSvl+QVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3AEC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769367233;
	bh=Xx18c6VtACtPijYRJ0wZTNBj48UA7zZNHbG4DFWXXcI=;
	h=To:Subject:From:Date:From;
	b=sSvl+QVNK7PCVwDrU0cKpM8X8H4vX6sncbN2BV9cND6adhsPjb9yMQONW20GfrNQB
	 USguEepA4XTR8tWH8cl0Eh3mUCvrM6iz8lLPanlhkwBarIU/yEPdEujKIf2Grm5Rb1
	 6XV5jN9G4Brgi026TbDNxUUsdmcrVzR9s4Wp1487M6gBzDMw0lxjLrEr/n2iNUj+zW
	 cn8CLsODM0oBSZIucZ0NIJsn9SttFmi3YODCWr+sA88LhVBJT659n4ZHUDnkuVu1XK
	 Hd48jccolHXfjpgRnhY0c5FYh+FayDRbo/XoL857Sk/kiZoudYbTpAFJ3eNH8B7fXk
	 QmTZXyIbNXkQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A69DE63CBF
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936723362.8166.10233052553741886860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b4a781481a7b242abef7fe45411b043d979f236a5d9972d9cbfdf1a3b4f180
Date: Sun, 25 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769367233
