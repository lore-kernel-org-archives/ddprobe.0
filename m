Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2693D3B3
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766561633; cv=none; b=OE1FTjIP7LbGJnoOnxcU17yHP2E1QuyS57z/nRaDAES8pWayD43jzebFqlYtm/ValfTx5rtbhmc4UQyw2X3Xf15n3V7neO6dJPspYqau2dfglrOTz/HGpi+jnYpZKRzpNwbEUMdjLou7vOSB2PjnUx/r/yXK1kmieicM4Hlz/WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766561633; c=relaxed/simple;
	bh=r5Q2f0dA1uhMzmMyqKaJ934gz/wHTjz9rGCAra6SLEY=;
	h=To:Subject:From:Message-Id:Date; b=SvvvC921tUo/T2Un+EXeLxLEZSSXwK5U17kXTwfpE1oAZQEwAWziL1d5DQyzedqR4XbToGJH6sa1UR7w+UR+dgRJozT/zXAWvaj3uV7OXZuBIPIkmSeS8yv4bW1XsIqWGNq2k2L+SDVQOwOVIK5c6K8dEMKhVJ9c89ZUFdfrjFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvzyJ1ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvzyJ1ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B76EC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766561633;
	bh=r5Q2f0dA1uhMzmMyqKaJ934gz/wHTjz9rGCAra6SLEY=;
	h=To:Subject:From:Date:From;
	b=SvzyJ1obbizfIXukiWDtgfPufES+RjNJQaT8VsUFfyfN3Qjx5v5S70pZGWUVU7vpj
	 MU6Xb9K8XgE94mvh2wfpG+fqUdkS8YScu8Dp0dEyDivhHX7Q+dfgzYy7vJCO3qU+jC
	 KkRHYrViiHbugaWhYogBogMpXPI7hu7tHwB/Jib83Iy7iEVQsNAvKYentwr9khbRhC
	 S8l/ZzJPMHRD5mUs8g+VdRTgbyWz+ra6DYI79uiVVcVuffUg13aJOSRPMlh9qhRE0A
	 ceGhlwXbB8OWJGsWextzDj06Qur8ectpMKkkAg4mfr0eseoqH8Qh9iAXwMJkAl3SM/
	 Nki9ja7mk68Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB4CE74ADE
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656163357.27328.11563157728285720106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520e0943d2a6da8353eff2402b872aa300d19e0ae8cefac45a7a38f902a97181
Date: Wed, 24 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766561633
