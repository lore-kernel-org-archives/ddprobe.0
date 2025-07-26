Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BD426281
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753568394; cv=none; b=Le41/jbncBeojmHvZfvZ77bGtaEXSAu1w2xJAo8Kjn2zGqV4JKyEooOoQIU7GOsvC6bV72WRctIoUJhn0lg6Lmax39dpmJXDDXGt0Zk2/PzeCt7HcextGjxdFe/DsXa1P/0LEYTCyQaZo8U0/Fai1ZUBp5jwfZ/50tAvA4RKA08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753568394; c=relaxed/simple;
	bh=fLKBH1DTg7ChRxz0fXhS9t2g4uiAPMVuKpoI8b4bGCM=;
	h=To:Subject:From:Message-Id:Date; b=DKKfd9sd736iwGiImUBxmndC2NICzC9n7ROLaiSDrg5U1Ejf0lbUPhfzq+R1P7V7I/lT0pHsBCLb3+Or7X3zcKkQvV/zHUvQ5MPL68KHJBxEevMcKA/spjgAJws+0ND6gKt6EM6AZqZisRRb4Xkzv8D9kK4DjchqJalTm8bSfuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAPujn5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAPujn5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9860C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753568393;
	bh=fLKBH1DTg7ChRxz0fXhS9t2g4uiAPMVuKpoI8b4bGCM=;
	h=To:Subject:From:Date:From;
	b=OAPujn5kYLuOJsaTj3GltcWQ/ZfC6RkICl+gURoTZb3GX3r1SXQdzd67TQBoDlsUF
	 QMolZY3u4yscyFald0+7cH4aZU7cAk2/KKdr1yDcA/LNNUlHhJn3l0pmgf56bEk3i4
	 JMPI0mgMPa7p/uYNUJcH41UXe2arsPIULvdfWOYU/SGdvpfQb80s7uwU486ceL9atU
	 fckuBw9Bv7PI2WD0UIe0q7nYRO5CMZketV/TTMZaVWOF3H1plG0SbH6oFICzaA0LQs
	 D1kh7B1vYm6cWOcJol6Pig/OxBQcpyzOkDCVJftfmXFIBZPsCQ3e2WwM3yvH+5wZlC
	 0+moQ5FELC8mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BAAC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356839358.13500.17080775616416810432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29871cc5aef2d0943d52a923d0981f801fc431073061a3c250905da17f8b6624
Date: Sat, 26 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753568393
