Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EC718027
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765182174; cv=none; b=YoQwuNL8oLUc+Jb0mMRHlkWYjTlHh9WXlETXXHpldjRiwEGgKzObDZM9b59kSb+wIlIbV1nzK7L7ihXHFJGCc9TDFE80b/47T1+oVhSZnVPYV+DK/r9PSADHQf3RGCpjvscg7vLBdpmHhc+9KFvpZiOeLL9H2D6wJ0OdHODQCNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765182174; c=relaxed/simple;
	bh=3Bea8gIUrpsHpDfNWiRpc5D3CKadzzl6IZ+okHVb9TY=;
	h=To:Subject:From:Message-Id:Date; b=ETbJu+Ssg4EgYBXbFR3OtVBh7YWvMuQyr7A1tthIn62wAZCd3uUpE1mYvBxBK8lU/pURJugAB434eeGQjhxOeZlg/KzuKUI8DYcgwnD9ayLZUXZzbU6wfdZDNivcdXf8DNioLZV/kUttUru5gR697z+UDdXSeC/k4K/ZV1MV8Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwuHcVvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwuHcVvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5536C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765182173;
	bh=3Bea8gIUrpsHpDfNWiRpc5D3CKadzzl6IZ+okHVb9TY=;
	h=To:Subject:From:Date:From;
	b=VwuHcVvHf8t+6PRaFzk4QSzi8/K3QC5S2QjcXs+c/QeBxYPpqRMps9FqoPL7YAyKe
	 L1EUcgkjCfN1vQPIGaHITgjciq8vQGoJB6Ims0IXqw8Xh51I1c6f9yMaN6DFBEEuTV
	 0+2CFLJb4QJrNQB3q4M5/ZPafJOdiD0zWoIUhv/kcx9qobRJlSxTSiyjCVyGmNrKHa
	 hzFO5XJhxzRfJJ7a/VuseHMCjoah+LgAMLvwK3vlUHKlmP5xeESD0cTO8IXCKJWNx6
	 rPkksqYF+XgnV+Fk6hEcen92xHzuPOLWf8skh4wMlgDfR7QvpYycszUCOuQcMTy7rA
	 /0o85GUyn2C2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92326D3B7DD
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518217358.26392.16688387535271593733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd2dae4384a9170d540e24a2c1daea6346a65f4200453ed0bac8c0bccd67321
Date: Mon, 08 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765182173
