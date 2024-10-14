Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378A8E57D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728869154; cv=none; b=uz4nL5E0Erk5zHzG8AScxT86pYEsapdDKrCQF9M3n/vPRRQeAnVe05j7tpQnAgcQR6DxxzKPlb+0BPNXfS9esr2dWRAwduAgGTBeAVKEiQKtF1rC41amy0gxUBvdSx5FlEIIF13UY+6XJKbwpS7RnZA28elsX7xko2Xa8suvOgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728869154; c=relaxed/simple;
	bh=S2SclUgRHVvLbxhDHngR+bS0++gr42zvh/sb3L9E7pQ=;
	h=To:Subject:From:Message-Id:Date; b=tYQWov8QFbx4rOI5u4okPM9YyRilyOP2JMKKpZ8aWJXrpr056yTlUmgzYfEmL2QzFrtuTkag76/yCfVzsQd00XURf1lURjXOn7KbaB645EkaoGJ8NgReAZ3rP34/pAnHW/ZUCJtc+Q5/OfexRnvoKVU2F/NyZgsw7UbVn9eByT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1gmB1CW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1gmB1CW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AA9C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728869153;
	bh=S2SclUgRHVvLbxhDHngR+bS0++gr42zvh/sb3L9E7pQ=;
	h=To:Subject:From:Date:From;
	b=j1gmB1CWoiOG6qdf/w3DSHSAob4lDxBGQ9ADXlsD/nu/7B0DU+Hne7cYcnMVXLTQ9
	 6R6+L3+xDFrJlJ4sMZGH/pdieUK98TQKgOYWcHXZvKOQIgnVbe1oYS7raYxXzhtYbg
	 +mjfnBaQp3MamXfJl8+8Trv1wzJGGyH7F5taJnjHuSpkClneDWWbozYrj5IgfrevoU
	 9Eeo1V8FScJSSc3UOOjLA2+Uci91Yl1ITCFPgFm98Bdj9vUZYd/v+jhjrmxkIQpr9+
	 r+aIRrpoEKKDdBRY+9tYs++C22LXC5y5BAru2Cp1P6HrwyPSEq5ElEDTID+mfxObT/
	 h84Z5+aG597QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B219CF2591
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172886915360.31082.11083894978878946679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b1deefb2750d21232e36e08e7063bf8d3d6eaaaed023c39468175564c1b535
Date: Mon, 14 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728869153
