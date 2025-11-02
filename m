Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1491A60B8A
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762057794; cv=none; b=DROQO1KrzUAvS7ovBzUIRWB/YGGzi4zbM2EfMxl7WprMQsx4EWH1jSGoxzNICxEyVUPhNhQfyYzlu1Mqd0p1fG/Mx9vv4E9PH19kTaYmijSN8s8sNW+BUZLok2weKFY0XdKP5Yc3Pfpjg6Sv/3FgXWSHja+qrNRoIRbJarUlVvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762057794; c=relaxed/simple;
	bh=0il5VPADfrpuTQMUH7WImeJHwsoViZt383paiTB4u5c=;
	h=To:Subject:From:Message-Id:Date; b=UGyk8cv0CiHim7E+m8Wmg/kA+zwCshv0I32q3rG151iyMDH9Se0oDDhgWtxETWjNF2SxAlVtFSlBN+L6srM2GF4cZ4QwhgkRLtR+aRV8LCuQ2T7bc0upPiPpSDBAeJVVti7lG3rfHcxm/gNWXVIN0UTAJoo20p5C3RnH+imCjvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrLN60Fp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrLN60Fp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA47C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762057793;
	bh=0il5VPADfrpuTQMUH7WImeJHwsoViZt383paiTB4u5c=;
	h=To:Subject:From:Date:From;
	b=XrLN60FpAgyDDqqJOrj0k3DV2v2BfvY+HFQGx8r9nav1e/Hkp8WymNuq4Nz1Z07DT
	 4C7ip9jmxwQgl/0HOpc9czpiQ9kA+k1cjyLnx/0cd0W6sA5Lf3s15tCpFYSDhik1tP
	 qykSW7xA5NjH8xMJ7UQcRatsx57j1cGWsPPoaLdXAFOTCtVzw9kT9kvP7PgFDpxieG
	 +4F7GfV8Q5KWwj+H4Eg5omrkHxiD79ZEGjZH6NL5xuuIgswkeQNs7YWUmgtZdBCGyS
	 5sjijagl+3ne0OYQRYFC7gFVMDgOksHzKhCf6keGd79EDBbzglF53CC1GrNFxFnfPv
	 IVw+kIEpDDh/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E40CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205779358.26850.13479090324889530587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2add71fb307c90f17058e197d8c7227f05831c04039752a989a9589bd565ced
Date: Sun, 02 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762057793
