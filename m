Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FD9266EE7
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755640194; cv=none; b=m57g2Ym2IKg+w1XbblvNmOAiPHivWgb9bMKBZSSkARc2opTTwnQyX7cJ1DA68QrML7eURW0HbhmfwRShvJPJo6z/5+8P8Ak4MsBWc9R12kwmQmJi0WQ2+Rks/0oJ2ecZP0m+NImd23SaLpMTPBOl8mc6sOxSgMrNQt/1ue7PUcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755640194; c=relaxed/simple;
	bh=4xc7oYcLBqJhMa1DYSy0xRcUhcT9fKyE916nhfDZT+Q=;
	h=To:Subject:From:Message-Id:Date; b=TQTKT4sCy6Pwbg+a7dlG7xzmmaYJbAiVncfEp31xmLs9wrVbOB9by9XTu3yASOcbLXtOKwbBRgVUG0p+uH1WLe5pPyN9pZajQfbcCOVCvCTOahvrPLMP+Ea3ME44fnnlMSPAk3/VDzdeiz/ZoeLma1sSzgUaRTsowm+jQB9/DEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ez2Y7XDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ez2Y7XDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7FEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755640193;
	bh=4xc7oYcLBqJhMa1DYSy0xRcUhcT9fKyE916nhfDZT+Q=;
	h=To:Subject:From:Date:From;
	b=Ez2Y7XDhdzSsucRLESBU1hmzDcU8h40r55RaHQeJcooxweRsWAFjK2/Hi3h61kIl3
	 Vuk+Zixa2f0YV/o3j8IScM0sxr4miZk9/kJEczipGTmRa7sDgwNML7YMbdbj0zkvml
	 xlZynOk5GkR72PiEcY/3eohrIDcTnE6/lOu8uBrA5AZE/VrytaRlsCSTLRgzNHL60R
	 SWwBVruEwT51dtsdu2FP7vSsnjg6b2ZemQVh+PCyV7IorJiHbI4AgApHpHdFHdX7bq
	 gXGkq+dGbe1D6GIpBjuTx4Fl2ycuhMIRPlXPAw1mNpidKt4LPlet4+UmxLxeTv3cY6
	 Lf+HULpgg6kdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28ACA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564019357.5925.9721716786786238536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d804f9076cf632370a44444e37e940f016c41a3e2881d4bdd19e9aeccdd507
Date: Tue, 19 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755640193
