Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0811E86A
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 21:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712005697; cv=none; b=KRESpCFGhpZtopuQl2pj/WQgu/0zMWAZb8/imOgX4H4NKtqm60b4xvJdV2IMghJUxEFfELAmYZkKL0UgedSDlkWRRrDNi1vZYO3czgNUlGjpGQlZhkiLnY99ZOjIE7osNPXW59nGwkmQMfP5GiTZyuzGQ3S0zWlyrcEwyHXoac0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712005697; c=relaxed/simple;
	bh=594HZeTLJwwjJiFBHabcaN50egg/rJSMibFICqqwVPY=;
	h=To:Subject:From:Message-Id:Date; b=sjMTzVg76r6ks9Lz/SJxTEH7ywaT1gLJui77OzOE6q7ao9nVncM9E3Nu6BvBtumr4v7r51ZSEtrmpzLztu6jShWvZ2bd2rlQvSP65Ufc+afatdsKLgmf67b0EKOiCDP6beGxRn7HcM3XdUQfbPxc7J3vTfyef6heNZGUq8pqLGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvXTxzRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvXTxzRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78EA0C433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712005697;
	bh=594HZeTLJwwjJiFBHabcaN50egg/rJSMibFICqqwVPY=;
	h=To:Subject:From:Date:From;
	b=OvXTxzRd2rClaTOb9A1A2ibE1c9zFRVnRb8D1cc/Tuk1MpVC3aaKz/C03JiEFRQNY
	 rwVIW1KGQKTM4fbcoO8u1Lcm8An1imtOhPXg62ChJl+n6QaGT02OUH0qrojKCI0R+V
	 z/lVoV4UPjMYfj4l3ibCjRAnYH58F4MLFHizz/KVsND2DYlL9wxfAkVSPh/IttImGC
	 YAEqWL8LIm0asVKnrWSJYNWrW7XlSZJdQ5X2b5FvQwwXra8Mjp40ynvhAG4RSvAWnA
	 wO73kcUq4kz19pBO+i2T692rM+VZRUU1TSR0p3lNhx8ks/jG3GyXSKoXaaVd+FMdyK
	 EdI9K1e3f1VnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BB77CD1288
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171200569639.26346.6783122535482056992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070ce0630d3a16a2b172457403608cf8a99e26e647bc059760456a56bc8c4701
Date: Mon, 01 Apr 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712005696
