Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F412F5B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728147354; cv=none; b=YOrfW/HvIrzSU7fWvKQiage9sUNb/OvILxu3SudALnRItLYMgAaLzkmNL0OJMO2Eq2/t2gzlMcJu4YzcXzYzX4WQ6IZHCSCmV2BxpnOkYxUfp3HjEh0QX6PBuZLb7liZ1VmF/d3fVVW3bG/jbm4q+aeM2xwosBQ23BDDw3458h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728147354; c=relaxed/simple;
	bh=pswGA/XHixtzw4f6AjIA5vejgB4h3NLNI0s2n4EJHWA=;
	h=To:Subject:From:Message-Id:Date; b=LK7N4dcLcZgjwctMWsf2wkaW+TqasGKFRtCKGmrvmZL4Wm4Kf0hfrc+tC2xenJu/5JNB8dRI+MubVkCZNOHRLy2snKsJBKtNiKl5qbeRxKFOSC4EmyeEqPgJ2HjKO/lxMk0S6PSjnhAeFiwShT10AEQVdwcpzaamZZGmmt/x9h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfBrxTJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfBrxTJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D68C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728147353;
	bh=pswGA/XHixtzw4f6AjIA5vejgB4h3NLNI0s2n4EJHWA=;
	h=To:Subject:From:Date:From;
	b=RfBrxTJdWYBBwQgQbpgFzUsQ/dWjvkT6PUGtvsBY2ZPJRXxomwqAUsTDzC26Jrawd
	 B5KPhYeeDsrPWu0XtlGSvyl9U+BUJP+PNUecBXx8TdgSkuPXNswtxesE6EmSonIeFR
	 Y6sfVjYGYJC/N37TMeUtw+Xk67OsbJi3xATDYZYbo6nmVV7BYTroByw3qrkMX3a9FN
	 nnXsFWRTxcy0+2YVX3WIvfHrsDQuktfPMir2Car9CCDKJLrWYJTDqvbmsq1XHIeuQ+
	 RJsvotFWWbXNUFnc2VrFU/Pj6iSw7Q8eFEvAWpdKU8tyfK8xcKozSHb+8yQ8X2OL1M
	 r/d4oUOK9Uy2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A620FCFB421
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172814735364.22297.5639438278938746484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6c017768bcaee6ff9fded92f62712ca2b061639d44e309c70fc8c9125bc037
Date: Sat, 05 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728147353
