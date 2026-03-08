Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D701A9FAA
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772967294; cv=none; b=tNXL9Zgp1HgRtEoycffX3laXMntLu4cotZ7ILSWFlmYf33aab4Kobh+GKuWOKseCfIQ1tRglKMN6YXy2gS1BPQo98bunnSNWUT45pgWBXV411QEe2inCAEqHO3r5G5VPxP4T/wo0R8plbFkOOY01UalFFwxOX2Z4vlHwKqS4QsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772967294; c=relaxed/simple;
	bh=BtDQ0esZDm9wuIm3Pa5nTbJ8H1uHzjJ+OpGC+PJVHS8=;
	h=To:Subject:From:Message-Id:Date; b=PYxW9nA8o4VOygTCG1BeMnEmxj44Pkuee8WalCG88fD6cx82Uhf2Z3PxyA0ng429VEghfvxC3Rmg4+2hRYg/LAy7nF8J9K/Mn0fuJUQYzxy9hNQov7kpey8OiEvOhTmfrFSvbV0MaabJ/axJtNh9X1KHESCYU1wTeEqqQ/VlOtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIc1bqC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIc1bqC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9298C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772967293;
	bh=BtDQ0esZDm9wuIm3Pa5nTbJ8H1uHzjJ+OpGC+PJVHS8=;
	h=To:Subject:From:Date:From;
	b=LIc1bqC127HRNwGyyG4mGjp5U4BZ1InMJIutlaGaEH0hp1EjsT+5vgJjRfC6j9UWw
	 Wou8kKT7HRUmPGQvVuuCQuiMJL8HljMSsi5hIiP7EABbnQ7rMx1+LJ48MqxWnUloJU
	 SMJrcDL+3oNuAdsEb2jqbjTXtac+2JOswlN1xbGXPK60X09uwU0Wt+hZ5qhDPuTdWy
	 d3ONLOqUIsbQKVhle36UAPvbLkp3VljRka1jbHOLBBnsAZuuaYQGM9WDGBXZsJszgR
	 812K/Vixf/tNqtJSOh6OVX/thAAhH4qgFBacA3sPZYfpr2HelbN+H/Rsaw3mIj27Ys
	 4LnF1zlKYX10Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C31F5513E
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296729358.23940.2139438445355415754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f61cfee88b4e91ac26a2caacbe1eeec66042bc97bcc257207ea9072777f5ae7d
Date: Sun, 08 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772967293
