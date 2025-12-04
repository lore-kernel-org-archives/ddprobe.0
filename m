Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1824C18DB1E
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764826374; cv=none; b=PSmkWGRP1HvW/x4IrmCc7E8mYLt9nuvX5JZhXUWZ6cXgQZSD4fi/oo6j9J+qRzSpGPUhMM3BVSry3JgnPuIG5eYCvwTlwrplaPzO9G+Z2BqiTLETyEzMI425t8PYdrS3JYuLSUQkC/xuB61zCKD1kefqWgz2WuyYfpeT8jrR2W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764826374; c=relaxed/simple;
	bh=oGSl1xDOTaUDql8sIdpxUSXHN4Spj/dPlfKcZ5G3yIk=;
	h=To:Subject:From:Message-Id:Date; b=ukxU2VSszrEcdcDXKj8w0Ju94YbiMXpHe5qQZlIFmlNT5triyR+LVZG4zAreWkYoMsc4yYOOLFv5qBPdcwImThyaexA9t/8HXQgAuKfE++sxc9cHvKQduWmHqfUBLfqwS/x9B5X9kYwCUBZV/IwYQXmcHaXTWKH5b9F4Xmj54xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aw5sNl6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aw5sNl6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9071C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764826373;
	bh=oGSl1xDOTaUDql8sIdpxUSXHN4Spj/dPlfKcZ5G3yIk=;
	h=To:Subject:From:Date:From;
	b=aw5sNl6EHtStvm5+GyZUCE6VQoZEfaC8hAjzIXnCAOeyLIameSaA3L+bcP3mluIKV
	 jWrm/+JN2l2YfvcrE5Ue/fluOVM6DJ3Sn3PexBgnzOBI1mAszP8pKH9bw0MIPb+Yw3
	 2x2pR8DZ8TKOVKZDFzS5mQ1W400LHVt5pWPW0HofBHUTirH1nz9KYNmtbInllsODfn
	 H7pd3tpUkoccHXVWYg9o9fUgpAb8oD1xK5GtsN/w7R7OrGy/QJcG4AQTcQ6qmOtzXB
	 JSXi8PPvSxphAyfWvJi/hDja0Renp6ycdTYmeOp4ehgwdmdXtYWMyWv2kXU9wygwEV
	 DL4d+Q85X+h0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944FCD1D862
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482637359.21378.13717353131142220986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa40c9f0f273052266e3c027c128ddd4b54ff0d2fccb8ca9f591fb017522e15
Date: Thu, 04 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764826373
