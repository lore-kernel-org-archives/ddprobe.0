Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19155220F24
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757560795; cv=none; b=FF6WaZwpmDO225JNZ4+oIPxrlD/lD/g4pPFSQ4UTQ0VdhgZUUaylI6pN3m9/NrkzUUlkdKNA6RX5QzgcwrvvAZevYljhgpd+xA+ufrUWiHReYS5G7LlKrM/F/z91Tzuo9CaepPkYJ4KVGwm9dw2cuwFK7BeJYwID7FlykchtcOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757560795; c=relaxed/simple;
	bh=zG2lINQsoIkUvKGpe0kGgnLI/iCBK50wLBvAquQi7e8=;
	h=To:Subject:From:Message-Id:Date; b=TlqkZKwhCuNuTud0ieIP0k+wm7ieji5CyUl0J5g75z4kq8ReJa/MnbPvblLlFyIcE/9ou+sZZrynv+B54TeTX91YnvJ7OODBwRj2h0Sk3M4K6M+rOSJG8kdMkh0S9xLJhtY/8BYjoX3ESpz/wZip//5J8PqxtSPrTqztTyomuSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbEZgHFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbEZgHFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6E0C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757560793;
	bh=zG2lINQsoIkUvKGpe0kGgnLI/iCBK50wLBvAquQi7e8=;
	h=To:Subject:From:Date:From;
	b=WbEZgHFmrisQtspAKG2rFEi0R+VVP99DdNfLqhRDEx9Aflh32cBTJUYhQnBo+Vxkk
	 3gUo3R6OqCYki3MG5uHM6QRhmW1bPyws+SIIqHNDq0plqok5jfCvYQ1i2DKFBfFrCg
	 IrMIcMYUmEJkQKKI/+62ydT46D+2/vNW7nn08qghI18tuasHNj+/4nlsHkk02mWKoh
	 2QQhx/wRVd0zgjRr5IFq5xLHNtAeoKyfMZqH8dwxSSvc82klKtYLtxWLrqyYhrUL+h
	 81USfmP/gUKpA6tbdFL44dwTyxcwm15MLNfFdoI8duPLiYIhzj1K/MF+76GSnIpcNx
	 qvOfc35qeVybQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F63DCA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756079357.31572.11659715447446223043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8597549a3a4b39a728e37c014208c2244f346c59134fa7224e8a4c889f2e6322
Date: Thu, 11 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757560793
