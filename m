Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF2C26FDA5
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751459394; cv=none; b=nSdzrnkH5bI+8wbO+7Ae+TRgR8S5STCaPBeyn7cBlTCKo4fFWO2NkSK35CKK0No5zjj2KtJsAUHSRn1Z5ntQ11FIOnP7/1yc6LWMEhsPDtCW1F57ZBhaqcbU0u6l3qW7VXDirPy4aT/N+R9ttfOy/LaSmtA0IkKr+1U4ZcwJGx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751459394; c=relaxed/simple;
	bh=YOQn6E+M1sdtJwQins0U8yW+I+48hDqkkSqvkaQrR9s=;
	h=To:Subject:From:Message-Id:Date; b=ZlW2WaBKhSeARaxdXgAJhYUB+ybEwk8YwxpwnhGkhMV4uXgAZOtq4iPwgAFFidkkjsdCrDEf2QtG2EqwpiivB5Hs3Rf1bLo4uuXXtew064r27DvBMT3jxA0C+wn4dVXwOldgBFZJnzyNul2TVbeIxLSSZ4IyXL5Yp3iMdL8LOX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUbv7ewL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUbv7ewL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C02FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751459393;
	bh=YOQn6E+M1sdtJwQins0U8yW+I+48hDqkkSqvkaQrR9s=;
	h=To:Subject:From:Date:From;
	b=dUbv7ewLmZxndY/A7VqLAVmh3TMYFzQ6CgnMkip37309n3joTmjQ7tmJHf4Zcz6K+
	 Te0Rt4RFH1YjmgLtSs7m9OkzEgjCNuyP90aPfr/LRgh0qnRZwMUBoPnTcLgpC7+v8b
	 FEoX2kOmqwj37ZQOLxh1RAfqK/lg4lDEXEStX7m0cJ1FBZa1zS1XQ8VuisVsJEC3H+
	 4sEJWxDZnw9MGnoneh0ddzwl+TN7icppsmW1brGyKwObT2bNMCGpAv41V3+Q90/v/Z
	 UWc6hLa+JZUk5TnvGloVpDUC2XdcNfPpJJM9UzQik+Xa1c3EEhOfsHI1qq9Ynr+/yZ
	 PqJZ+wk1oGDtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E292C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145939357.26099.9675250659261762484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a4cf23a131841f1ef842d37f5e585642bb9687f4880baf4dbdd2eeeba553fa
Date: Wed, 02 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751459393
