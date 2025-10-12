Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C221CD15
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760242794; cv=none; b=j1rW6U7nrS/2BlmzQBTf/AFTvEAzSGcRNn00FoYqzprs15CaSYXRhPYi3BlQcDP5kYAEv6ATopv7BGowUqcRQOLLe80V4/+6Yh6BIFEC0geVHT/pvRZ4YiJavdEIL5XJVLNYn0x4KGaHvh4tEYfXWFNKPoapyRSUM/dK9I4tQEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760242794; c=relaxed/simple;
	bh=G1Jadv7Eviy10W0Mw6V0OBg38tzDhczJ9Mv9nILHe34=;
	h=To:Subject:From:Message-Id:Date; b=iOimaIG3TH7hWKyv3/EhcUWmv+7pAb1lXvPmNMlwHK0Q5LShz5jwAoERvzerqkGAJhRGbosPDXkWnoGXII2ldHuRHPorlg5HvvkJ0uWGjz65K5hoBIyMJEs4vFrIAwixSN/bVCaNvgcdgP5gnjz/uMb89JUHR/6D8hqTJDUzre4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATxU3+yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATxU3+yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3586C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760242793;
	bh=G1Jadv7Eviy10W0Mw6V0OBg38tzDhczJ9Mv9nILHe34=;
	h=To:Subject:From:Date:From;
	b=ATxU3+ybshBGTWWSj8Jk3QrLTnxFz7o08XqP7LHSmCTSc/KtzU+uptCb6xVzXOT2n
	 MQM1LQx5xq7/ZG9IoWx9/2qpl2qVtAh1lALHU08Wb2x8klCMFuBY8b/stfb67cytik
	 M/+/dCoPBI9yVKHyuHu03e91u0Y05ts/y6TpERnB4c6/Q4dFXe/LreJH+DlQlVXa87
	 qPJCkERC4Yo9i8GkQemcOQU+16g/QEgIIsy+PmwFbhVmzqnVDWCv8Emsqvgg78o+L7
	 vEZkwTya17hExiyN+WXnepdKK4KbcI3tfMK6c+9WBBIb1DWIkL/ekogZd11oh/kI/u
	 hEJawx884l4jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D5CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024279358.4682.13154318396687449667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1df374c581a1719c0eae66e8a12ae5c0a4c7f94a60aeca5d633c25025899403
Date: Sun, 12 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760242793
