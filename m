Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B23E1D54FA
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768386234; cv=none; b=DYsO8Le+d2JxtT5RVuM+BQ+AvpIdY6ebLdmAN6SSRY4IpnURKysAWwSGn1uRqAajW0TMnrUvizCmxw0+to2J8ShZZ5H0gw++CPVGV124m1iHGc5OSJG2xqyukyELkRFd1lJmwf84VIaMELjUDRZY4YNGpp/FYotZGUYWPxTJQfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768386234; c=relaxed/simple;
	bh=kRS8c/3i5u9z0H8WBAS6WUeVUKpIfVIR4Rav2EJmPvU=;
	h=To:Subject:From:Message-Id:Date; b=cJIYeXImB38f7ITSr+nucP6+pcZ/jq6ClTVDfrQC68bAlzI8fR5AQVASjJf+KaxULMglj7SHtNVF/nEsvW801NbXIce9GtIRnJpLRFDcBTagv+T6dV9HTT4auoKwt/cI4VT7PAEeqxl9kfZfFsKqxQ6OQyBal7OPVu/NGODlEPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2zkypMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2zkypMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F235C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768386233;
	bh=kRS8c/3i5u9z0H8WBAS6WUeVUKpIfVIR4Rav2EJmPvU=;
	h=To:Subject:From:Date:From;
	b=V2zkypMZQTn7vhmX31CRRVx0vC+IXq+1P/weuExSorsiu++YKj5D5qhfdFsWnAxd0
	 GP4t5AFssP/RdPa8MdX+7O8K1KxMNU4EDJchnwuMNUuZ4hWuskehkvxjzESUy8e5by
	 z13FhPNt2L7gNfIz6C1Pr4+jguiOhqKIOC8pQx4YV8Te4SVZMjhbROZFi8x8Vj2BTy
	 aJuMKgU4IVgB60eufFSAyYfXNTKez9zgP/26lQqiKlVCtSMJ45Hr8g4ZhvVz48fhzr
	 QcugIQ67tfMo1kGBnHWORakuJfBZNgIPSD5y4mND+CQ7nTj93rRGQOtm0oHZcIl2zo
	 e0otpytT5WtHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F621D30CFD
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838623357.14058.7989565732828550073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146fdd4f933ba88915adce1523df0bab4211d96812e295f6dca32118f9a4e427
Date: Wed, 14 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768386233
