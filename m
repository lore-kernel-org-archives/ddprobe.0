Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1A32EFDAD
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760102994; cv=none; b=bMQxF5WMErSJDpbtthPKhJNOn08LjusLb7SnV5eCXKKfzIXljLFHPBp2ne7nNx7dzXVseJC3qcX7JrJPpg0N1M2juEQ+B6MYn94bGIlV+N2d9EU/c5QBP7Mi5jBzImh6wpd6WBwoFxyw48s8u9cKJu92drCq22SfwMSpsJrGovE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760102994; c=relaxed/simple;
	bh=P/pRrMCNHRXRSIfKjD1XvBu1mJA5RMwoh9rP84idmbs=;
	h=To:Subject:From:Message-Id:Date; b=jhH+LzxbT4KLA7TkQlHPF9hyC0zwq7H4l2Z73CqIphVijw0naSCa6oGpfBK/Htsq1t7+l1Qsd5XmhkJfSIWTMIhlLM89iuT9SXtEefKy0eVjJNQqc0TW5cX/9j8B19vYDtm2uVmzl7sShEHjxVYMYTlAE2jiRQUIgnTzwbScFB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATWvTKOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATWvTKOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F59C4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760102993;
	bh=P/pRrMCNHRXRSIfKjD1XvBu1mJA5RMwoh9rP84idmbs=;
	h=To:Subject:From:Date:From;
	b=ATWvTKOxN0EXeyM2i4FXIspN//XyHBOuNnRYWa2/PXWw00YigFLnKOM7JQW2Nqpnr
	 MhDmRD6sOb9mYkbygb7mog11je6a3TM3j9hdSH8NqWxfgBd6NnPhEFHcMeP9rejQKE
	 gkg1Ig9FGqJ0bR2Nows/Iei9uozOkgnGQHGZ1Wdw+00MyPXgjjSiczAEEfOr/OHrPw
	 rew4UU/6sE7JEM55pa7rhMgMWkisYm28m0lC6PrPXuNBt2a3qWF1RxOc1S6FF0AA7c
	 R+SjaMXB1g1zPnKC/r7aaolA9TIa+RCXC1EWFCKrd6elp1yCYSqBzUtvDBaflkhM5Y
	 7HDY7bYthy8KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E5ECCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010299358.29650.3527533888072170959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a262f2bf16aed45607f7a170979c48ff40b74ac4705803b4c652c704082bbdf
Date: Fri, 10 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760102993
