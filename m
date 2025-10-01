Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6111DC994
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759280394; cv=none; b=lDDS0lYJBefrwTFHdSW7cvyhUvRD2sH+PCdI9NfgJxSU81EjRsypOayxbakjuIT535TxLPkW+Euo0KJVhGz5luGveU4s3Yn8PWY0BqH9uxD11IFeZYuwbeyCsrD2NGs0A3UM6guAIvJ8Tq7//jjRQNoLN99BG30G0QZuJ3RszVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759280394; c=relaxed/simple;
	bh=Ud1+2fUyiVPkNghDGRBDbCk335ZBs8e2+se078/T07Q=;
	h=To:Subject:From:Message-Id:Date; b=cJcB/33INupOAcTrm5qFwgjVTr30ajBHc1MdXndc7W8O7vgouAGYQrU2izWDbaEaPYcFo3ZV9UYbrSZ3OXFThVzTKWvR/pdLQUSs8geuM7HCHpWgl2+af7zP1OvZ0hSzdfzYPf1Cz+lWvv0/IZ8yomDwS9kZA9h1RBiRc5Bg9vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPNUeHNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPNUeHNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56E8C113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759280393;
	bh=Ud1+2fUyiVPkNghDGRBDbCk335ZBs8e2+se078/T07Q=;
	h=To:Subject:From:Date:From;
	b=OPNUeHNICV7DPkaGzgM/o6mMpi/QeyI+ivmYEjYTO2fzekP86EN//xhnfkFMpR7MB
	 SkWKEyv2moNATR6JlJh7f+BUf8DxRc7rX6fmyP9vvxw1L6kVG1r3LukqkzvFY5344h
	 AyXDiGR5OwuAyTmCYQRKHUWeIU1jLybCbzBA3jDABIg0as1A1yaykbRcC2z8gHjYbw
	 D6/KMLHqwydcMR49DXjbNTXyrIqQaKuiZdaLXPjHUE80UFqHFf4WdgPbwenIQXY6Mx
	 QNUyNpM9k+e/D6SzVLT30vUUF6DLpwJIv6wW3yp00aoVb9mN++EtqgKHBqVQmdRNSo
	 +med/ra+byfpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B4CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928039358.1470.8142481358498707953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d256a89ea7dc998631ac8fc968adbb6862db331d01e500205ef586757b9c1c
Date: Wed, 01 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759280393
