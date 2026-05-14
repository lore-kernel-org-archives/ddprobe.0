Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB5837F759
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778759434; cv=none; b=lCfNRSfyO58+fETJWIpZc1lkGk93WD63VRm+RGboh6q46dyRt0G6R7WBtjPwPovk5I4LWVn+G2C5umogpu/LY5vgipPEgUXjVheA8bfS29NUyXnza6r0G+WIE3TLS9TaCcCYhHvbRPrw78EjMpJmoj92NQGp7nd7fJEOIl24Gk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778759434; c=relaxed/simple;
	bh=/cz8chsajvgYBRT2Oxje+dEsuX/gRwuinFznPDganek=;
	h=To:Subject:From:Message-Id:Date; b=eM5TfT/ql3YYXL0s2PctsiZTYQyV3eVT8SXLBd6NyxZR1+zCKWH6RPmhf/sIjRLxbfp2a0Hj6VMDpZEcqYNt/15DQ8FW0oaXo1UDhDOoihWHhQXOcae0dRhAR27/Ion4oiDday7Dfk8wv/ScGfOsQTzj7+FCn2nnDLorMDmbNn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LP4q0oKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LP4q0oKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87F1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778759433;
	bh=/cz8chsajvgYBRT2Oxje+dEsuX/gRwuinFznPDganek=;
	h=To:Subject:From:Date:From;
	b=LP4q0oKFLabDFdD3v9Kg4pgOlMJVidaE7pYNEEEeexdrGU0aATmsLkVjvEiyWeWb5
	 QJorWOu4lrFPjeqjdW8wBhSQ8zGyRFLWXPzg7nOjf0hr8G0i+0KFasjGRdQUg+vt5M
	 Wju9DOkexON3MEWQ/39k7KfdVgfAzrEGp3hzHGb6jpFPrgEjbT5ox4h+03mJXE00pJ
	 stKBKXKdljbLWaYK5WKkwL5VV45ExC3JKJv+Csmh53q81IDzFDbIXjTc2f3mRm4GeM
	 d7TA0/qv+y2BgjYxZrsA9O4MFVxzkvM/qM+Gz35F1uxxajHF7TBKCjcnn7SY728un/
	 n6Y7dI9Pke7Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA564CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875943368.25262.17702095759347146942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a472ace681a57a441d70ad817ff4a87e3d511b1137617525cccc383154c9b15
Date: Thu, 14 May 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778759433
