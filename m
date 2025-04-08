Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3EA254B03
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744153194; cv=none; b=T9VrZ3oLLaGh3CqszlVavS5Ox1GZtvWC8SG/kT3Kv+IZ96tKJOKpavEcRYwC7RXGOuiEdJftZEz4Bhh0dqnKYiET6EygU0Yoh50Y2L+FbHzna7igGSAGNuR6VWG8Nomqvyq/tYcwkcTF+mf7yTGgZMQYhB/Sco+LU2zDy210AOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744153194; c=relaxed/simple;
	bh=QMw+LF517vPc4X7mDRoNJ50heEkhGljkvFqZWsP0sBc=;
	h=To:Subject:From:Message-Id:Date; b=SqOl15x478DfyCHF0V9uRZaCkns58afHOjs7QX2dZ0gH7pjxsfX4ihgXHZvsK4CjRUNtct0+wFCMeR8hzsrER/m5FSNnvix21jm4eFuB1CWbbu67i0wW+LQpSAAlve+TI1s89HPxHNX0n/jBQCqMC2rCIWCk3dA2kWx4GThiVIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geZIkKc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geZIkKc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9015C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744153193;
	bh=QMw+LF517vPc4X7mDRoNJ50heEkhGljkvFqZWsP0sBc=;
	h=To:Subject:From:Date:From;
	b=geZIkKc4JvZgjzfFW0Xk9ChD8LtJKOgCBcJ0IS8irTwRsvhiuyDIb1LZtJv8LTmKj
	 N1UCZxiDltY9RGqvxbO8aARgD/+l/F+YZIC6iTWHnPH4sXl0TRHRKeFqPgrWE2/dy8
	 Ww/QP6UFyiJcauqJi5IBv2v5LOajuZgCA4ZiPMK4cH7Q4t4x297DhfR2MVYgOo2dnT
	 X6fk0SwtoruA6lvQ+ji3lwgp7jmdy8UpwA3dSez7RRlX8Xizh0fvQBuCBTdf4dw/B7
	 xhgNGEu0+OT1QBVKRS09ltCzjj7AaNJVMPUhQV1h+DQ8Ig39yEz34IMzojsRDpDhPD
	 mVQF5ETXC6hmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60B4C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415319369.5376.9582441397602891818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5e4c3b6160d18c6c2b66a61cc753e81c2ab0f820edbbe893814b4a48458669
Date: Tue, 08 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744153193
