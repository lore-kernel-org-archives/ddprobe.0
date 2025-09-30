Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E088242D8A
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759267794; cv=none; b=D6mxq4ZrWcd2IgoWDt7DdUJITwZTk09IgAlPRrBoPOq+nZC8aL0Ur70dHz5U6oVfPrikcX4Fd3/nT6zegIpZtgQt4BAuQaA2fCxXwuaYVipTH2MXRXxU4P6CHZrzCean+SIT5es0rEPPKURFmDxgx00a1o0N7o6Uhu07wv+Ps8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759267794; c=relaxed/simple;
	bh=zaAhU2DEbCvVZoLiferpc5yiAB4pQcm4nrli7vxZegI=;
	h=To:Subject:From:Message-Id:Date; b=dy9wMRO1OYukiNUN7IMxH1pG6LWFe491IA2sk+l7c6n5aIvc50NnUHkVvT1o1mMLY49XAaChJXXctUgNUpkuo7PRLS4LhU9sk17f89xJdhXoGrWPB2voMwFi08VtFFgDBbhiCLITJO080oPIAWnCdKDk51275zS9br//g8Yl1iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtEbNvrj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtEbNvrj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4776C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759267793;
	bh=zaAhU2DEbCvVZoLiferpc5yiAB4pQcm4nrli7vxZegI=;
	h=To:Subject:From:Date:From;
	b=BtEbNvrjjMrw8udcPmKjJCHW3hgkeRYfgjJSb7rlZ6b0FqJV0js7m2ON1d7WmnjMs
	 tJIGqr2USRscwwb2P+6X8Tj6DBeFlua35bl2HqnyxrBzoc8XfwqB9wMovIRyEYh/6Q
	 +uVx4dfyaBgI6DYSJa+dyjo54hsvhEHqcKjX5lUWuDrF3LHVABZ8G0Vj+Tw92m0v4k
	 MSIo3LP6Q17tDxfqyRaoDbuOTDFgh5JNlS/C0KdQWcqodxyPi22w3C1WZ6w9fBwbv8
	 DpYM+YlS2a0NqNlpWfH2gGK8hX+crNeglNB/5Fy0sEd6TSr9aKOtuBpvig/Uwd0s8L
	 GCOxN8YT6/YGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911BFCCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926779358.21366.14906832009760559732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e96569d3c48189aa4f5cc4fc6d34a151ab200eac65d3db52536223b8efa5cb
Date: Tue, 30 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759267793
