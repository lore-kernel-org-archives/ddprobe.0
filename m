Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EBD47A0B5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778523034; cv=none; b=Yfxl5yNdM+2jKhyHVt5djC74jWCLjvJL9yVasNBGIWSpf3JvTYn8Jg5DS9c6wJTQd1wyM69PeJ/Lc8Pce3a07zMiTIEztPPk3ycv7ouukmRWzANeSwaG3+6P2LwyueOvn6fkoS3rVU9yKInx15JAPZESBbbSGJY5+0DXbAHNoVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778523034; c=relaxed/simple;
	bh=DmMOF+JfI/R3WbFos8yqo5d6rCKBuiq9JGFNX5FIQXc=;
	h=To:Subject:From:Message-Id:Date; b=Am64x9Ft48o2nrO19QiQbp2/PIbF8ajIBNsrx9yK9C7uoxcKo0v65WAVl8DrVfPU2y1Gs6g3v+QCl1/agavHVd8lGTno675HcaE6pshyZ1yYAaMgoMTpgICb6+xOdYn7pg5ONy6XUzbLqIBfJw5HZMiWNjVRu3Wcct8js6oCJrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NC7ln5sh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NC7ln5sh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B916AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778523033;
	bh=DmMOF+JfI/R3WbFos8yqo5d6rCKBuiq9JGFNX5FIQXc=;
	h=To:Subject:From:Date:From;
	b=NC7ln5shOGrwj3EYH0TWz+fJjXF3ZTz8KgEdNKcyjhuUTbxgJiLi+1g1drOvFDjmS
	 9IAaTu/AiFXCgn0wDXORPm5QQi9BrjFVmFQrFAml+dGpuKxjmkWGNtvxmvyjOLbKeB
	 KWQ/DUlC91+cK84WgQyxdFch6oEPvH10KIQMa4PsSr1AKiQXPueTXjbQQ62JjKEguO
	 ZvylrmP6aqb7JJob+aEWubzdDT3RcludrzzL783TmnMN3NsrEryZXMg5qCXDFbOhpt
	 agN8tJ2jBywQn5lrEJqlSeVF01nrJarcPB1mjaMp89WYcCg+AeGg6YDxklevE2cQo1
	 uSQJzU9cat4OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACADCD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852303369.21906.7127054324742441009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b06f23a27eadfbec3c95d41d16add72a0cffbc089e770ea0631c7c1a591d612
Date: Mon, 11 May 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778523033
