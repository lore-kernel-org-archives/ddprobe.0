Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399A433EF
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777684654; cv=none; b=lodlLmEEV5hsHMXIDGHQsld6qkKQABfnQaoLkP9l9Rot69kEorGq3bmZxAoVETYLKb9rTCQqsJRCiEy+enCE+BxL2yVblTDOUcrZlFCC6Caq+ffuvtexLUpUaiAMCBUzTUOjfJuzjQtzbAUdcbZGLB4cF9bMNDiccKiAg50zbcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777684654; c=relaxed/simple;
	bh=A7Es8kdoBlvsnbWjLz8nlVe+K5yRTfDBew6Yf9XjSpc=;
	h=To:Subject:From:Message-Id:Date; b=Ri6vDLpFu15ynZCj9Qbn5iZS+zEtT71+9xl8IqVKAACq6J3NaB+5tin/tKPPo8NJRozXh8UkYogP6jyuPndRgylFqav2aKj+E03tGeJM4gqN0DSeVd5zz5gU7QyYC379K/x4Rdr9cE3rAjJ/MggvjTAWPUcYXFbBPumAOYJ51oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTf7K6th; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTf7K6th"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C286CC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777684653;
	bh=A7Es8kdoBlvsnbWjLz8nlVe+K5yRTfDBew6Yf9XjSpc=;
	h=To:Subject:From:Date:From;
	b=nTf7K6thTthKANFIsmhK7KsFBEn7KusbOK3poJmPvgAsKazN/8epWTNy6vH/YCwhA
	 TP+pYt1Yjr6iwlZtpCJZmPfW6dx1zDolkeQR/9Z/iRjx8TVrqzP0w92arnmUExCuIG
	 9OFRTkkzVGVgzzf9b/fKnOXY/DucPB0clEUK9rRhxYUBCN+g8ag3wvhQTfRE2dytaQ
	 4ufZWWer86TPichqkY4FLfCGfHczSIypRpB/K3Yn3od3yjIp8rOf4L0CX3u/OYetE6
	 XY4wmWTPtpaAD+S6cwXjfnhsxLmbtaPywCc33d5slFLu/fyerQVffljgX4X1nXY/ne
	 2HMcvhSidTQRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD54CCD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768465368.30422.8797836974940450086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5a11382e9cecb8be7ec40d5d9b33b054b5af77ad4325452de957aec8946cee
Date: Sat, 02 May 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777684653
