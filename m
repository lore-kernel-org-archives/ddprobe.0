Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232B14594A
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764660774; cv=none; b=O4xDADSjfxBZXYRArQ3KeP0xcPhf+iU5ZIt/cjel4SIaCMF1T+Oth1kslrDUdkOdGIeDtTZLLIlxRgU4KrB+2QASp1z3963f3zAx4Hpf4hqWGDIsq+LdD9sptVwuVqJifqhOjPFVI/F8/LIA4DPkGskM5pWLA9dRcFXCOF1+ybo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764660774; c=relaxed/simple;
	bh=eEvQ4KZRsKcgVVNfaRJtJNAMwzjswIzIPTmKD4L84Js=;
	h=To:Subject:From:Message-Id:Date; b=Ccj8HYteZBJ6lPmBvJEPZ4okaRZ07pB+bjdHXLiRMXo2EG5dHA6WhedRhWsxZwdG4wYRfGuBPvUJ6qjGzJMQ+XoASF31q1xYJTGw/KQPDm2fXmIBL3TtxQ+eCqcjz98VP9hmU1uxWQ5ECA9vrB+Jz/P020WYFj1rt3Hec9CxVH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7U5t0Sv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7U5t0Sv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A448EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764660773;
	bh=eEvQ4KZRsKcgVVNfaRJtJNAMwzjswIzIPTmKD4L84Js=;
	h=To:Subject:From:Date:From;
	b=V7U5t0SvlR0mMM9noVx5nk4Yf5m1B6+4fmyzxCqPMkBM6gi/iFAC1I7mMgIPv0fho
	 nzdeqJe7c/U2zY4YSek8Cb2+udOTcOeTa2eXkhOIwzRGKv84i2n0IlyjOI7ZRsOTAv
	 70Sk1U+HWRCuqEMe0uUefc6ADEhrjcfYCMbjrQ49NArZc2ZQPzkcXPn6pkQ0FB3ntX
	 v9cTo8Gm7A/mLoDZ+JZdDc5YFOXYrTVykWnMof/7tmiPz1FpjSS9VKPkfBAIVijdKA
	 ytYkqae+w57pSUIZeP1VTK+ib+R8MpJ9T03lv/nIGITF6Ym2Ubvk/8Fx4w5r6mK4pw
	 v32a+KY88HWdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91050CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466077358.5269.1282359920865506819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0f17ba6884fe000af5e7f3024a40a6b45d3a4d7dfe43d746ab9aeb3785c015
Date: Tue, 02 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764660773
