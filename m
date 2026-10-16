Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8B9296BB5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792125634; cv=none; b=QinW3boX+WMigr9Hb9AtEbqbpTrweS6eBtd86R/PkxRwEU3Y5sWPgJvH7Kc4ASio7pSy4dzUt7yFg+tnuRAeMWpVl9ia7sgVJsktOK4MVpuv5m+G1LbUM6XPdF1ZMvb9xodQ3TQGBBPRsVWjcaxRQHmrhauPbyauFTk8orhL0II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792125634; c=relaxed/simple;
	bh=dP8Av0hBdIgI3RXLY+ppkcsH0JjR0OVmBUjyVMpFSi8=;
	h=To:Subject:From:Message-Id:Date; b=QyTVcSZgeY25odY7cVGmeQ4hlIrlY4LfNRyuq7i7IsfhthPiYoOm/+8qbzIuV5uDKq2S1DkafH88QzOQEIxXAfJ3aU6DojtqR6p27/7d9gBpXqRJQQmBW1/pgiH5jIh1/YyOJXzwCevjubORBNLnfW+trvEMUvfddCAYZJhiqeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzgEgfVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzgEgfVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA65C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792125633;
	bh=dP8Av0hBdIgI3RXLY+ppkcsH0JjR0OVmBUjyVMpFSi8=;
	h=To:Subject:From:Date:From;
	b=hzgEgfVXn1MjobEtW/wP3KKAzzTLzivHP/XCVbDB4pJ/CyY0jpI9gO0hR4Fypd/yl
	 aqawpdokbp+V+qModouTF1ZeERnM5AIoJRLDDBgkZvQeew89r29PIFSnkxchdGn0Xx
	 +DCEAeA5n/i4nwunuUghgfi2oWzRRtEki1oMvmfsyLUI46jc3O5K3BCd5O1OkIpTNj
	 oPVmdbQgmpw21SK35i9B2Q4dNRJMRNXQZOC8AyvpZhneWeIzWs4s+6sPaHc6tdV9UX
	 Vm5mX9V2lnh1Z01eHdtdaBz3GMehIy/zajMWTZUTaD9ZjcQy+8lZt8dBBXwz3vgU8Z
	 wPlOTfXOpacWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6A0CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212563369.1386.8878977060938289088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f4c2884029e12a839a560d0a3fd1cb957518f44dde649913022b7c7044d9177
Date: Fri, 16 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792125633
