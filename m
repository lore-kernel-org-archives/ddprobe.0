Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21861349AED
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771671294; cv=none; b=W/2zVcPkydXi+esL/XTv3o+ebjV5E1MlPE2eHWttYAfqHjab6IeWMn0dMJrnsuJniqaAB3mlowN4JAu6lnV53fKi59TlPlEjbOjmne5wd7W05JBqnWVdWIjaJRFSxKhupPMUFk/5HIhttntiUfde2YiGW0vfeeuvcAgfU7FtG30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771671294; c=relaxed/simple;
	bh=HCoae/RPUlFtSKonHimBcDc3W0LjhiCPX4DQpD/40bQ=;
	h=To:Subject:From:Message-Id:Date; b=sQFkKjUk5GzjmPRqEycnpjiQHKn8zy5tnUCET+hhdC/Z9xqMeP9Kx9a5SgXX+eqDUGOPep/Koi8B4UDR0o+kERmorwBTpm281NR0tIB7jx8Mc7RqCiCINXVuA5brK1lCvKEOUEwvWrdbNWvhM2Trh8SKvMMNoESnbTN2mKBUF0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiE25YF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiE25YF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFF0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771671293;
	bh=HCoae/RPUlFtSKonHimBcDc3W0LjhiCPX4DQpD/40bQ=;
	h=To:Subject:From:Date:From;
	b=KiE25YF9JVNeyENJHHiuizGMyRmY5FK4IzeiYPG62t3WVN1Kw+Bq7t6xZI7UtJXLD
	 lE27EyQSzQEfCOv6id945Jed71CAt2Kh2y/QPEkWMK2eYVGDuyx5MBz01CKTe9C2sy
	 jt1GlYbNJ12uvL4ghAVDqaTz7SYR7pD4WxgqUK+cHe8yjD2CgWOSyCyPWsWNtp0xsP
	 UcIJzKKnkLCwOVde+ALeFF9DrOLWJgUsGhbXzMskvL8DwxAOi6zNETaveM9z4GDKbI
	 YtMz7D5t9jPHmHqWINuPy9KPIAjVCd3tQmj3gtLXWIG4TGq7xTeF8At9ca+k0LH6ah
	 dgPmgyNjyMs7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9906DC61DE4
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167129357.559.17816660483803523200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4925cccf9f4b1f4eaabf6d7b391f39b8ce2276a099669015f1129c618c924c42
Date: Sat, 21 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771671293
