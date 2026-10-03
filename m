Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C2535CB7F
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791045034; cv=none; b=IH6pOdkktEX7r1JLE1tx1wPOEcbUc23osbAx1Nggo8hEL04QGUV50gFz0dP0TeL4SaDZp35CJIOQ6C4iWMZMpfBPx0nQ+cehofwiEw+6AVD7rvsrS6/ZUcHPmt47nEPnmNQKEhiqqXHZx6iXgXr3n30kxH0l1rNhjxXK0MainMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791045034; c=relaxed/simple;
	bh=PhaCOEbSkTkpDSRTw2DFOlWacyycZr1u0qZjUkTZ+sY=;
	h=To:Subject:From:Message-Id:Date; b=L7jLRksX6XYOR7PXo2WuF2+6vq5Y3GfhrFOHAtWx2bmJ3s7kmCIqJOpqoxO85+OZrDv6fUxQdVVR5ywoonHUZTTdMfzK52DrGuCcfv+QizH/wxszrI7l5gcNi76BhpFextDZqiC6e7UtgWqWr81XZFaHLbNIc5p1eDhF2WJ0Z2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P27uoJEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P27uoJEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE51BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791045033;
	bh=PhaCOEbSkTkpDSRTw2DFOlWacyycZr1u0qZjUkTZ+sY=;
	h=To:Subject:From:Date:From;
	b=P27uoJEFdFUQBumgkJks/PVM9So8GF4TOoBF2E7Fs0fdSuo/Vxj5h5/rJ4pyDdeD0
	 CLN7DAvndAmCd2sVrL5/k0uRmRvLl8Us/tfYk8BDicOfyDpLVohq4yWPuB2JZjiHyk
	 BKxPjuvhMOaN31s2/JRUxcPmxzMfCtFOJ4QmVNjp7+1nx7DQmqXahQlIeD2YmQ2ODd
	 JgPdzri5JXavLzjpJuuXFCRYd4zdDEQuqgJ1h+uI1G8AQHAsbsfqyyN3MgIGXOu89k
	 thZEaRk/ZIQ6Ym+xqw/3otaaDLzvoGd8e3diZvUe+EoREgpYZyVssEckCXJugfSdR0
	 l8mrvb8TcGjYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD23CA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104503369.27141.4872262084901499123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4facee357ed742f142a296dd8fe4dcc102d90b848c7f2c8e63cad8f2bee690e7
Date: Sat, 03 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791045033
