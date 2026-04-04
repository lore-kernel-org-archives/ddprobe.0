Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3345819E98D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775264734; cv=none; b=gNakDedXDmg0D+ih+qUrWW3mgW14GIrADE3F6ui7G9q/2WK7F2BJyEqnNkQ1XQN0vuodFooTaZG5vxx35i8FHFqDGYLQMxCCg9vp58BAJFPhxJgRheoGTbmguuHV8uy7wtm8SBqq6nMa9Tu+UGuBTwkejuYmpHpRxIYC9Ll0lkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775264734; c=relaxed/simple;
	bh=+Lu2HlP84yXM+Wdk3q02edDRI+va/O/g44TPnaHmJzU=;
	h=To:Subject:From:Message-Id:Date; b=E61sitC51rMBRGc41e3JDBo689EnsdT2UJQ7x0YroEEDryk5TmFFDYnEDVoflkSBD/Rtz5Q7jxC2Nn9FhwgdBRLh1sJpv4Ls1UopC+oyWWXJZS4nUffkLq8eFBNx5ERxklNCXk4VgTudAuwJfWntW7zTz9b8bl33PMMyg1dGhXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBTy20XX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBTy20XX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE32C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775264733;
	bh=+Lu2HlP84yXM+Wdk3q02edDRI+va/O/g44TPnaHmJzU=;
	h=To:Subject:From:Date:From;
	b=JBTy20XXt4388f4QnBBXXivRix5ikq5J5947Vhjc/AEIqaVxfVSf9NOtzUYyAS248
	 6ziB2Z4yrYCy1OEC/CLqwvORbOJKgiwZ58ljXdh4YskJAY8G+Vmxf3P1fdBVuUO0iK
	 MMg/zLRWdy1mWpXEwV9Ns7Ogcb0jUJtbDITR/U1PKJOP9mzltQenb0Q4rTD1c9j9Me
	 GoZVba8r+BViN17MTjMPN0YAb/WwxKowcn2x4Y//Xrj0Wa3a9G5MDcHHRG+MORGZ+q
	 Du9W/yCWfQGBxWqk3WzfJX9kBP5UwSn+t/57OSBGnEooxk7ngGn31UHvn0vorVD5LQ
	 J79KuJOPnMFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A960FE88D72
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526473368.19850.9995866752887479547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243e751fa5396b9fd4a4b016c9b8f30cecb2dc5736f21bba3c9c08d8c3ba6d98
Date: Sat, 04 Apr 2026 01:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775264733
