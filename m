Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE9517FE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731125154; cv=none; b=sNA3JJSnj/fCSkGS90v6d5gE9zrqYVoJCAIxemVWI8IGjZt+aEkgPPWBBv9leeYuHNOAua/iqJIn3afecZGyF/21QFAG4Bj/yFiuPyMiB57MVdAsqdcjsDENthrtOSTo4/I9pNeZKbncNAv9VLPptWjfhAn+f2BUkg687tXytA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731125154; c=relaxed/simple;
	bh=8bDOMROXTFuLllA6ZXFe+dE1ntK8GF36Qgum8k0lwow=;
	h=To:Subject:From:Message-Id:Date; b=HEA7S+HB31WtekXDGiIucLslL693c25IBMFu/1V6GOXyRZ1tYIAL+ylZbxojc0FpgbFyff/ZgZ3hP6CgpnFM8M7UPO9iq+r0KY1U0P0hRkYItmqHifZ7XscGtIJg9q8zsjsZ8yVd3838pDy+D+I6rdy47BBIDzenXTQlr9KMVCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3bkZAO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3bkZAO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4804C4CECC
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731125153;
	bh=8bDOMROXTFuLllA6ZXFe+dE1ntK8GF36Qgum8k0lwow=;
	h=To:Subject:From:Date:From;
	b=a3bkZAO94lbm1iybdt2GmA+fyz89KKrxStVsjxBumRdw8BtZxJ7AWkCy8x0Y2a6yh
	 eKh3+NQu3zMO3owy1VP004ftXCTW+6rAcAkZBwrqiGxINWCX8KJ2GMS42t6UQPOwSK
	 XIDXh+KY9tYsNOyn5fMqXbMM8F3gsvyvbfkQnLdne3Gp6syds+xg0TwS07rC5652NK
	 pTNx2sFBcMk41KRjsXo//gXIR5+kFrpOVNIeVNtDFpn4KuizDufynAFtStPl19kqCY
	 HaCO9SOgILOGSFA8joeCiKDXBaNqOIdDq+BGzhwBvIYwDTlKx8w3doaRpFWhW2jc06
	 kRe/bkykPLEFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA9FD5C0C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173112515362.27995.6542946378537483113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01178839ff0b52a6c0b5ead0f3cfdc78f4af305b97bbd8289d5d7e3a086dc5e4
Date: Sat, 09 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731125153
