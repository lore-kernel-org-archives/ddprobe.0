Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1789A21255A
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765111974; cv=none; b=Jkc22eGeq2s2htcMfMj5oTuDIEoYdqGr0feIhV9vLOCqDHJsor6fwDA3/rULxxSB1dlUsucHJzuqZPVjajsIx+A/ouZKJ3zInxlUFal5CUOjTadfcg8PMEDUBUNX3TzJcnX5q14QYIFP20CIidvdchj5AmXzpYL9jp4cbsMKQuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765111974; c=relaxed/simple;
	bh=bpSPclkCRQ4g/tIi1l7TLvUmCU5+yXRTRYZG6viCSxQ=;
	h=To:Subject:From:Message-Id:Date; b=Uk9fKAl8duAbTWMarieSyiMv6GchCirs5dZsvig0IFJj9BuCAnW0LVkRgBmqbtO6zsYbs33ej72DmX2gGftiNZjNxY73eK+LfRRnRbs1eUv2aR172EXnPsVj9OkIppTP4gfov9TtT7brFe5i1A+cYZS7QQkrwuKRfJB13rPezGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NELu0vp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NELu0vp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5989C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765111973;
	bh=bpSPclkCRQ4g/tIi1l7TLvUmCU5+yXRTRYZG6viCSxQ=;
	h=To:Subject:From:Date:From;
	b=NELu0vp/D2Vg3kKpyYMuFV7EzQI0rEIa2W+ToDRJyefzceiy2gTAApnzyx15ITrzK
	 nn/Qbzo0Fe43C8nWurIoT3TDrv7nktrMGTqNDuadB7i0/PtqdxmzEO38xWc+P25fMu
	 czuH62E/QY6Gtpc/fryODMnLAGEsGzTp/Cu9w4PKSqiyZ0jIk9m6sxdJrHBnjJ4kTU
	 BVciTG6RXMFDqizj6YEjer0IbYxbFSfrkla9pe1NF679iWJ1GMswofereXwMwa32/J
	 pOpP/pK4hJK0oRHd9//KXBKwbcKtk0tru72T8AjQ3BtTTG48Q6k6ClgQEkG9RNzWTv
	 WsdGyVHsmYjVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94669D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511197358.17052.18007823779867297322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70da4e286d9dc237e130e0348e2e26166cdff28f0b579cd49105fd26d9f13e34
Date: Sun, 07 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765111973
