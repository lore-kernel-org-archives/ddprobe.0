Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFBD14265F
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725657354; cv=none; b=Cy+uOxFlBlma0Q5w4NiN2Jj7w0QGsESqA0018BrCyRWMBrLzMoKV+L2LDqcDcPR1TFbFNI2O5QT3bkp4blAbO3Zxj/jPjEoyHpo8xL5mBeLPzMy9vS6Azz8JNHDjKcjTbc7xXKOLz2rWGpe/jLE1suRZN/nROLN9P3QdXLVUHM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725657354; c=relaxed/simple;
	bh=dnCOCBo5TNnh1GjsEXUFeYNvqnuWljnDTIjEEXixFGs=;
	h=To:Subject:From:Message-Id:Date; b=IDCGUYDt/zU2os6SAL0O40S8Xk2IWjyC+sbRIyotrQTMkhgSPI3WaVGOItkj7jAmN9OvF8H3LouRPIDZqOv6MujNKmRwaGFLIwtHuKxX8yVkulzW74nZUyFsxh3XKv6UzZIeGf3N8gkxzMJSBtyXwqJSe5z5lr0VCbk1xTsHQSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsQjlzE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsQjlzE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7819C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725657353;
	bh=dnCOCBo5TNnh1GjsEXUFeYNvqnuWljnDTIjEEXixFGs=;
	h=To:Subject:From:Date:From;
	b=PsQjlzE/Kxo1yRZ4sYaNpXw+2/R5M2zpQA5kCcD6ALoTmIbG4BaOjhdTikUZTZzN6
	 af8uzRar2JPjUC+bphnev7j6ettTs1+35LFPbu327yOKCkjeg3DnludkVqv5Gzqa6w
	 eEx1MeXPDxk38atYJGNYAm6npooja+baZE2KbRRU2e0EJJtc/jLEkScTwMvO4RWgox
	 3wRCz1gMwln0cyIgNLF3SzroZ3FNJTLYmmMChXToBd5PWuImRriZksFCqzTz3lQ+e9
	 oVPnQUp6LPyKL1CbaAj/k1TkyQY6xE0FHSsCE7yuBoLacmmWqwaa/9yqQiSIur285n
	 V1h/sBKGseLeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A228DE6FE48
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172565735362.17494.17914913681893565611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1afeeed80c1a8d5243a7a566701cb64f979f6d7cb3e882a2b12baf20907f715
Date: Fri, 06 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725657353
