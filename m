Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9553803E3
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774488894; cv=none; b=iEyx41GE6YhH40/6HHvFyDUNfFro4etRl8D0tJbLBGDAWYPHBApvcJdyevCUnxZoRmdEW2tIjx2utjyVdEtRvBkTNra//UZkISlAhN5LQ9ksh5AGnCbVGj11j6Z/8DGQ/WAMF2EdQ+h97mwP0A33EP5O0c0EqFR7UTSPQ2JOb/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774488894; c=relaxed/simple;
	bh=MFI1Bfx68tlelYmIxAP2oRdOO1WtTSoA8OQaBCCHJ50=;
	h=To:Subject:From:Message-Id:Date; b=D6nV4q/dHjf9ykaaJFL9z4tJuNcBdqY/AQoIML0Jyr6jt5AYaCp8zkMX/8E4a2z8Io915BNEe4JiihmNT1bgPUU/5fR1RlEWtw/PqwFxFAEDS2JDlCVZECxCKJLcnCAWXRfzKVSI42bD8CSfjJWl+MdaC7lHNnA6+bJVSl/k9Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8E6+jSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8E6+jSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCD7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774488893;
	bh=MFI1Bfx68tlelYmIxAP2oRdOO1WtTSoA8OQaBCCHJ50=;
	h=To:Subject:From:Date:From;
	b=Q8E6+jSXltKQOy+8eg1KLsgATiN3V8mNiW/mAYEgBGRdpx06RcdBdKdaYTJqJUbmB
	 08mp7Zx8cr+16Gn5WWQNE+Q8tIhhX3HRm6XfurIO3q+dXBU9tOt81lbQJTmW1gbYr9
	 cxSnTqv2SoIOuOMTIpV2uFzbbuWXdBfzIcWOovfBRMvsyB0O4qJafxJZ83+g1nD1VG
	 pC76+SzIcnh8B7nhP5x2m/ZGuNGjsiZOUBu3m89R6CcjT1u/MI0VfarVYAw1CkYCk9
	 VgiBdrFVzb/HSTu/pRJewtL6M6EUum09xk1M5MQhY3M6kY544as9VxT5NYZP8iHZzN
	 WKvDSbYcA/oow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900EC109E530
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448889358.26433.16013483722910563153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206b99584dec893f0e36fd894d2b54abf5eee876705d4a9f98f4c9b4e6e2903c
Date: Thu, 26 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774488893
