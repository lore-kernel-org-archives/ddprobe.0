Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6122F4D7D4B
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791560434; cv=none; b=aJL6k5NjpcfibKYqu/YaZZlQSqmJrw5JXXrzg6yf8wqdum+pTe8WK7YgfcfyO5V7s828pSp0KTX8kFDymG3QxMr5UiM7QgdcCfavHVz/YNKBmFjT9zpYHZwnPaVtf5330V9Z+f+sBpZ+i6+TmidBOwr7Mkaa7pgBYwhkS+ktnFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791560434; c=relaxed/simple;
	bh=nrefcGLY1pnNai6OHHIPHecU50w/2IoVvLX/nDqQXfc=;
	h=To:Subject:From:Message-Id:Date; b=Lsr1mpED2nxNVrPD4JB4lFV3EJUHJqm5RzBr/JXDOWXd+PCeJwFn4zDSry1r8+lypOcXLG/ciIhM5B2kfOClWLEI1mp/oYiP1XcajDKQg+FiMvQhHrd/Gvi5dVhvbYC++KEHWK1ksDpc13RWYbdFZ30WCizkxCYrTA/ymUUqpxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGIjhllr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGIjhllr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E38C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791560433;
	bh=nrefcGLY1pnNai6OHHIPHecU50w/2IoVvLX/nDqQXfc=;
	h=To:Subject:From:Date:From;
	b=uGIjhllrUloaCtgty6hx86VCW/hObsP+n6H99rPDbbebSyiBdYX9G+t3aoc5TyhTz
	 Edtk8dKvAPHIaDo9tHJIDJwFpjXEwvAhjNFkOBvWg+2DHWGlPIb9FRKVyiCexgf4Zp
	 41T7XJAl7Qwm8ljFFAPu0kyxXO2zITJUhdyjsfYp131+vr5ejZ9Ca0sQCymMBd5jhO
	 0HBIfw3FHDMkYwGFt5Hz0Uv75ovTh7t9S4h/GwrZ4OZGLEzcLZJ9fynrOIaSB/ZYyZ
	 5lNqzICD+b210spf35ykQ4u79sLOfNiTnkrpEGuttFKf9KVlM+oZnZuG0CkiycsPSo
	 pDUE4YxeC+fPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBDCCA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156043369.15788.5081408736348479054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4501355ef9b5847d1c47c99bd71d23d7d2d03b175e2528f41da2d9714e2c28ee
Date: Fri, 09 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791560433
