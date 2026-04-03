Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAB93D3D00
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775246734; cv=none; b=b+RZzjQibUzTcunmvBo5NylePr7Fi1/SM6znMuoGjdq6R4Wb9DiM9yYUW6VzNtqDEA/T3+jZVMU6cHH8sgPb3GIagzt7cBmeL7fem4vhUjnxERxzCn7/tTTstmboFQD9MtNCGH1qr7dt+YZXLluBFY+fmQXJd/GTJcxW90M8zgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775246734; c=relaxed/simple;
	bh=WmslmjUQTAHeflZeJPpkiFHSRZoeZJ0+cUCQyOY80xk=;
	h=To:Subject:From:Message-Id:Date; b=J3ZqbSSq/wSTafBDcDWYB5SQOJZ+AB9VntrDjFpmHmFJsvRR2v357VaG4vRXRJIJK49DwCL058ljSoOSPf4SW6ml/r3cHjDqtQYEgpl4+RGhxmZbtyW0A6PJyC9Caa5yK5i4zFuN1Sal+w1cezVE9ZdHN5ucw8Grzevieh+DZ5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jT5NkY25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jT5NkY25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EA9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775246733;
	bh=WmslmjUQTAHeflZeJPpkiFHSRZoeZJ0+cUCQyOY80xk=;
	h=To:Subject:From:Date:From;
	b=jT5NkY25dH1hgJ4+t203FMd05+459WScTvlVOVPoL30vGqjaWaUqrdYtB7NRmaapy
	 bQahkkexmQj+JnHKg+8cv9o4Tlis9lin2PxV9htyDyob1/BkDy6vo2tOZcujC1EzIq
	 3bMSiqywhX6ByZns4KajkAloGVrvNsTFLdtfWzxp4fS7oTvsYbSVzMXrvJM3wvEOUj
	 2HeBuu6G4DSX4mB07c5x4HgOQ5jCVVciNX8WxYg/VDjY/vepxmeo9dXV1Yfg5FeBSY
	 YM29YIBicXvrA9cWadzOJIsEP0G+50KFCHUNY4nuz5twmsy54tdClNTP8JcgTca8NT
	 5xAbPGR2VISWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FBCE85368
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524673372.31896.13037784900980947025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07eebcc8e0c1615d6a18d32b0fd2b5587ae375b44101a93953221af34e961d04
Date: Fri, 03 Apr 2026 20:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775246733
