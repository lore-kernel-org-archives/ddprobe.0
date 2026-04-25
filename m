Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1F5175A7D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777115254; cv=none; b=Bo0WAvhpJyZo5VTUcYoJ2jNcJpB54qHnVxsmk7jkwZXgNxExZtmOCaSO9FH7u3fmgAy7xhSK8/B28GA0XDLgRN2A6z3Sh7973UW36VgfTanwgcHzY0WSHIE4lncg2noCMdWzJw6dMR902bR11uLT9zaUL5idg/eSh7r92jbOLtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777115254; c=relaxed/simple;
	bh=WvXQdJWV8/PURomBSFlPjP/j0b+4Fb8nsNcGkvby3vg=;
	h=To:Subject:From:Message-Id:Date; b=aNYY+Sni2yzz7Z54HUOJcczeQy6NksEVvxlM4557anSBsZuWhHIGVAMW5+SdELErxZCGve4VEL0NfW2tWeykue8AkTlO9umSiUjhEsLCebA38dv/FRFsdKpQp8ANuUi2JnFuQPf8EIPt4z1Cqn/5ymZbH7OWhDeEBCKiQ16D1Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6ChumRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6ChumRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C082CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777115253;
	bh=WvXQdJWV8/PURomBSFlPjP/j0b+4Fb8nsNcGkvby3vg=;
	h=To:Subject:From:Date:From;
	b=b6ChumRvlk6vqB5k7RBgutkWJuWXqDygGv4cnsjyo3zy6+7kleZfzLWXAR5JdqYEm
	 efHxOZxvWtv14vn1RDHwC1HiCIKkvLqiqZDPaqqJvrUy9lVsxiSrzlNud+17si8ywO
	 89BI89rqRexX/Mhp4gkXaZMtZP9z309r0AMIM4mhLhvsAekGtImwUqESwfLrnIzUtG
	 s9Sdr2q6Z23CAPbWxQTUgz7uRhZmEjBP9q3wxT/WCHD5PnuVbZ6F7Lcd79V45tdDLw
	 sFPPMz4Y7y1s+lzmzGjUEiT4vwDtX8bGRfbZT/mrtCqvM68zAgb6aJ0AZTUL1jbB05
	 RcyJ/hW/kNE9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC556FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711525368.11817.16966461945708990749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444c9980943aaa634aea37bc4f0ec6e24af4074d58e066e69afedf07496e7c41
Date: Sat, 25 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777115253
