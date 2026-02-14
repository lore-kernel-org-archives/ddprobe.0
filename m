Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BF030B51D
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771073694; cv=none; b=WImr3zg9pCnUAmYI5Hl4lFUACmtAxWZIGq2IsF87W38qYJULCoLF4oEqNB/ptCNRslLzMAjT2By8UNuMSx+su2pxXJ+YVBSHUb9x3Tp63qmVu4dNTH+pO9X+szzD0FY3nP3JceqemD/MJT3rpqxlSI+nlT+S/qY/cDa6xHb+WWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771073694; c=relaxed/simple;
	bh=f0heRtk28NukTbxqnIyvR1GiNKAD0kkVb48Iid/ARSs=;
	h=To:Subject:From:Message-Id:Date; b=B0n9VrZKspqITOjNC0FuQ9B+7StO2FTnp3p2L3Jidk7ia5/qYmxdGDcrsQyeubnUQ0z4i/V/xIu/Rbz+DxqtWumU+lE0LR3NhW/PhOS/TLGcx3/A9ZmXx8ddMXZXRR+Z1heBNJvmqx562FGNcysuK3oHxSpqRljiDoPD7SKOpLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prp8FmD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prp8FmD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB122C19423
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771073693;
	bh=f0heRtk28NukTbxqnIyvR1GiNKAD0kkVb48Iid/ARSs=;
	h=To:Subject:From:Date:From;
	b=prp8FmD6MJwDxDx8fHyUMeqJMZ6BG3gwNU4rxHvK5RvT7B4KX4la1bwbQ6/VF7vFb
	 62EtJfi8mBbksbput61LvlSqrPUNKWEaUNyvufH2dz08JDbxJ2n5haZ6OtK6C2ISlQ
	 k4FcuGg318jgcGHM7A4v/ZJqNOSwHhSNJyHxC/5QTUDZCAntn5JqicwqgbrecFPAEz
	 9ieiLPvj6MZzx6HIDv2syufkh37xk/6O4U3k9ukxBzGEQ3Zhqt0cCYe+BiR40bk78x
	 4RDR3UWVfOG6/K/khKJ1mSNlKaYuBaFuHVfs6MQdIheY7TuyVVJmepaOPw9NEtg0BO
	 xwf6jEEMev6EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F7AEF48C5
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107369359.31185.11535315124691347659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784847663a7def61521e6d0d020ce310adec87b7ab404fc1092e3b4c3642449e
Date: Sat, 14 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771073693
