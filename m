Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD33817
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722231954; cv=none; b=Q/MOpeOuklGEmKZl0osLL+xw8raLmTR8U14uQyXwZsdXhZ/J3Y0+OLDISxjKQH1CE6h54Km7L6t4haVGpHsuxJNZhdLl8GvpyrPbkeiHH0nV1MJBXGFjvlkkgZKsSEzoNtFeCOe8xTxMxwI64qShFmYW2fd2N1kJCahB4EQ4JBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722231954; c=relaxed/simple;
	bh=6OcXm65lR2UF91dm3gk3oEfkn7RpKbuvOpKYx8n+vZg=;
	h=To:Subject:From:Message-Id:Date; b=BbrZYtxvVoe8q8aaviyX7qE7vBOUG8SBWLj6oI8/kGudjqUNGi/2xkcwJshhx562iRo8NzsQMPX5m0lI63dWkyBBDZhnhv8fDZI3A2fnKqg8jZabmZosx6+uSYuOlqIBUb2dd90BH//Cmgd7h3GkbBEpeUPvJtq1wBXt7XHsmJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZV258xmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZV258xmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA523C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722231953;
	bh=6OcXm65lR2UF91dm3gk3oEfkn7RpKbuvOpKYx8n+vZg=;
	h=To:Subject:From:Date:From;
	b=ZV258xmp/r9ZDPae0A0cYA476xP6ffcApJ2HCNvGl9I6nugT7cZdWei3Hzz+u0wg6
	 Ml6z+pciHjK8w2mXYSAZDQO/xTTzHTNbarlWq1oPpicZ0a8TWJwDItyII4Jy2a9I3h
	 45nSIwXpLBSvIlsY88pRRZ5PCgkslxqFZ0BQ0lo7R5MdV/7+ywqExQEZbdAYBBiWW9
	 FrHZGaokEW+UG3YSjFVEQKqjhwqetp0Smyw3RFlVVD65Eu3vTCS7zr4xI7NeKH2C+j
	 QcO2sghCysBm2WGxhDSs1BZTs9e3wG+iL9cRHRyNsbbhMQfPkTfrpwq1BIp6cu3PRk
	 Tp15OHcCYWbCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A6AC3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172223195358.9672.8410295171323838869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb12aee99f69237ff333910d000212c5f80865aeff84534823d2e9bed135e096
Date: Mon, 29 Jul 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722231953
