Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405F218DB2F
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741426134; cv=none; b=WiH0AVOJP5FmZk1C5E0TxOVFElhUyLiO33xto4p1WTIsOfDnWQQi9hN5B+K+NRAEApbK1b/Ffxti2aVjqbTunxQva/Qlkukijr7Gnwsb+tJXEfSk82E7N8g3jInmZ5Bya4oGsXZtpLKPiQYdNDGB95kKnYXQEKaF7psdJZawM5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741426134; c=relaxed/simple;
	bh=2H5FvqZb1OQAj+k8VuOlvCAbwX11pUmnExFWF82GA8I=;
	h=To:Subject:From:Message-Id:Date; b=XHQtcrT+AFsQ46Vq5+6S0Cavhq36Dq6GUbECci7AvXBvaEyOp+NCdQbJecNYHFFKmkqgslb6Qn0feGH/wdUtMkuBOuWISEIAXmI9Dh5p+Xyt635ZD2nkC9mD1jt0Lk4VsaJIl+Von9yX9mqqjxtmxUf9qBQpuqXBOCHWbW7A7pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVZdrSuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVZdrSuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5746C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741426133;
	bh=2H5FvqZb1OQAj+k8VuOlvCAbwX11pUmnExFWF82GA8I=;
	h=To:Subject:From:Date:From;
	b=VVZdrSuUOrCmTLizEOl2UCoDlCH2O6REpb8iMH9i0JjmceALVzAhlwmcvWbSzuKml
	 rHM+cL/Z4AKZTdUq72/4jWCdGztkJLyljkFn7aHIln/6S1jDAyOUVJ4LCrmwNUPckO
	 ITJggOIw/6XaAleztsGZwyY6l6QbY5rqgQGtRsM3OzxTpya32m7kEdyLaiL61ESX9b
	 HAhCZlOBUkD0BjRBjLXKuBchZiub5K7aPnKntU/2kOD2Z5rw8Wo79lVIXvwOqLbsZu
	 NgaEpBSuMC0dQmOuNwLLBDopeQ7uWdnOl/y5Hn1R8X6USIHwWarjU3NR4syveXdJgE
	 LcP5yN5mgWstw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3B3C28B28
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174142613363.32063.13509668939654239382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64b4431f84efc7de1ddced51c3e597d46c4d75f30541e7f7c9944cee45ba091
Date: Sat, 08 Mar 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741426133
