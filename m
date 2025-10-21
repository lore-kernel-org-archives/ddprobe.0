Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FEC1CAA79
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761007794; cv=none; b=Q7wVRs80gMlrP1pyUEjlOAP2UV+8tY7fxdCALcEG9rj+lS0liv94rW9m57mns83kYbAHv6LuXejh2BtXunMJCwsARD8uzsV8zvD6zDO0FghqOsl7BVo/5HlcbZEfD0XOw5duydRLiXZ5bmkBRqEGZSxWyvxCX/xl8Z/OZYHqyBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761007794; c=relaxed/simple;
	bh=tN/Kc6l+LGYjQGgQQTijtKJnTm9QK5C4cYLmf/bzYWw=;
	h=To:Subject:From:Message-Id:Date; b=LEKLg+3szcNaS3m+By1gE3cJrwFLfudKoOBAq02PiZuLUmFcsqgb1IaZLAnWCZp3ffyI/SU91a3IFgwugshTCRm8rd1YhTH1pVX8DLI5izq8cysL83216A3aglHPtGLhRg+yWlE3hHQ1oiHe5TCjJuFGzpTzSAK3ZYJA+awwm5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BI566p+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BI566p+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8C0C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761007793;
	bh=tN/Kc6l+LGYjQGgQQTijtKJnTm9QK5C4cYLmf/bzYWw=;
	h=To:Subject:From:Date:From;
	b=BI566p+mfVtUWPYxyE6iLRIOWWNEqQTt1MwjZtxn8Q/AbdDodcLpgT/Cl15daWbjW
	 /LbwM/dEk+wO5Gwwny2BqBMqaHzdoR/qrCTNK//I/2Ep9LUHPq+NjpSZkJYq/W71x0
	 4ZTfS0vvgZyjhXVoWweoj0SYe/K6BJuO/tKvRwzeJ2KIEGKPClALv9bC1gl3GR//Xe
	 ZEHHISS8Pb9lhp0dPjW35QMEfOL0Fxj8IAfIsLi1VXcKAUxEgjU7fbhfuczMIqfqKw
	 rJBE16M0tjBMiYdmhp95Taic6HQ+n5J39fMCSDicIjPUJTmA5Xo/+ffk15ZS68LBsW
	 t2/+slSRTX+Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9901FCCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100779359.10032.3697733027042834752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63b81b069a4874296f05567530b81c994cecd93cc2c5b7ff1b49a22006cd17a
Date: Tue, 21 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761007793
