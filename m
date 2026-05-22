Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E65368941
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779490954; cv=none; b=kxjGc1tCZK3pBB7dkQURCNhgeEyYjcgYYhnxyKTGNqSH8M8tp0AUZ4kqKPGof1oY5eVXuUIL9KkNlQASLAl91gBJVOcBzazUMqlwOr/LnTfqFswfE26FlBbASXHu+TaW1K4Ael8sZqqbFfVBMJxkqubqFx8E2kGIZuG8q4tmHco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779490954; c=relaxed/simple;
	bh=AfOQOaze/VAPE/S2v3PCAJLQFGXytU+b7F0O3Wmi6js=;
	h=To:Subject:From:Message-Id:Date; b=oGOQy04YUGMxCU33FZApGyZrjk673HO9MOSR8Fc8pndexCSgFMkRFd/8E5ikBGg+LFSdHKA4eglAzRDvk7yT+7T6SBL1KDsCu/i6ZK1x6VRklci+Q0qcS9I9FJLLf+N2G1+2Ug0BliJ0Yryy3czrsXsSbfpy5XzSlvc1ff7dqJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8+qJatk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8+qJatk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC30C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779490953;
	bh=AfOQOaze/VAPE/S2v3PCAJLQFGXytU+b7F0O3Wmi6js=;
	h=To:Subject:From:Date:From;
	b=V8+qJatkcWNbUo+8wTEenp5jJx0H0OSJhwXTADc+e/IJW5a3y27n6oo//890w4Ffl
	 X0smLev1xl1GSyl+vw5FkybWrye0AXSVwoaImjyOFRRSxCd2g/qHZVHzy46p3bll9J
	 UOW87fVu3tIEixwCDQPXMivkx+Zc5tH7sSvHzKGGnNGFPrG6YrENMSJTSVPLP03OHk
	 FmUBmTxtF0nvJEPQaEgjvOxC2SZYwAS37fm3ERyGG8bNScGpGP1U7+k7FPO6ZeYJIu
	 ugrCz+0ZHstBp2eGDVeLsJV2yST5qzhcgXJCeFX5KMyt802zS34X74k9frCQOYSook
	 w54mqUUnJZFwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD29FCD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949095375.30689.10755301430848466785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b489b53db92c6c384d64e840fb1f2f2e6cd960c8db4e60a1b6066f92222f6e60
Date: Fri, 22 May 2026 23:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779490953
