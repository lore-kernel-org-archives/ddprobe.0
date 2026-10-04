Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D1317BEBF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791093034; cv=none; b=V0L290+bz+khkQzO0Rd9Kpfbvmv74cisG0DKFoA5uP9SKfUDNw/A8MQKCavNma5wv7b1Ndobd/EnoM70VxegRjHKwpXhp64naCL8KriqHB+BGfEgF3fIBnP8dVUQD8uknJqIqKCXAoiBVJdma1kwu1N0mdHv5DJCYC+WnIAqmpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791093034; c=relaxed/simple;
	bh=VjoQwdqv3eNZ/o6qyQWbhC/1kG47k3v4IE3ITSTKUL4=;
	h=To:Subject:From:Message-Id:Date; b=hj320L6UgoKJErv1uSVHYFi50tgxbJmZV0bxiT99WqJUL0Pb+qItXuJZ/iXsihYfr8GqGnItQace3xDmry6qv56oHwzeqXEI7p5G0nMslcVZ47pggG+y9rPwQiXK4J4r0JdbZ+d5r++F+sfGmBv0d01okm0oLp04kGxoP5q7wgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ND4U/qLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND4U/qLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69DBC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791093033;
	bh=VjoQwdqv3eNZ/o6qyQWbhC/1kG47k3v4IE3ITSTKUL4=;
	h=To:Subject:From:Date:From;
	b=ND4U/qLQZ70TIueEnVB6j+J5/7bao91Eaax6860WBIttbDheYOv4dErainDANiyru
	 YTraMbQ9NrUkiIIxdbzc7Ez9QsYSNKbi23isMhQKOmCdP4/dSOUNZ2kg04md0fmukh
	 8xHP6Y+y+FsmWJZkmtaeLdUfhuJicVAFPuFKo4LQNh42Lp2ypYAbCGhTMjbNR1JC3F
	 yhjoIE87xnCSN1OSADbi0wGHLzcpPrwjWpQJhXfFtn0wEmSe7aipPmHvM1Kqnj+cLV
	 PxMGOQXuv+9yPyuNKgwanuUc//EZPQNpKv9aPKAsJOr9Hq8Oqqb+L0//w+N9PTSwlF
	 9o3/uiXsx6CeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3042CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109303370.21166.13345644148244789384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24be14bf12028ca358c236921566ce380a62f1cbb4c5822ba878687731709e1
Date: Sun, 04 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791093033
