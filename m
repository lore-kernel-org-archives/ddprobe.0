Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1450719CCF5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758788394; cv=none; b=AWvTnTBOnqPju3/G78MYUCNO98Bo+1Vo3YVuKYOMZxXq8Dan1yA68XLfQkOHb1zSo60HF2Xdqi3TGLaKesBw7OaulnJnQ0bz3gfES4Zks6JHBO+2hFa7VzA65tZt9v1ChkdeV+AAVa10hixzkFu3zf1a+6oHOCaXdm3WhUYBctc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758788394; c=relaxed/simple;
	bh=8DJ4rGRcq2bnCjNc+6gSq/TKQDoLLTOep4jJbyhON84=;
	h=To:Subject:From:Message-Id:Date; b=uSMdvK34v1wjsxyBqih7heuwCZNhtJab9kjP3+YKGxTC8+Tia3qJxzoJx2Y0MSsR1UmJq+c3SUBLOMtguuj73X5n3W3ihAoOtGVKhKcRaBHS9VPTfzOBpKeV1VXSDQkEafoxatRJYEnSposjo7w0aFs7gLhOlq35xRQpNeL2eQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYHMU4Zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYHMU4Zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE9FC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758788393;
	bh=8DJ4rGRcq2bnCjNc+6gSq/TKQDoLLTOep4jJbyhON84=;
	h=To:Subject:From:Date:From;
	b=qYHMU4ZqxqxC+K2YzjxK0sF51WR1QZ8iPDfvPMdM5OED4vziuX1eOzx5mYT6lTZ4+
	 ulBWjh1jVB3a2xJKyVbAwxu3oDjzlm7wttdvVuXUMu/PjJX/+2ICGdo1ln4FlWWmXM
	 36IW45ZQK/cpOP8JkbmNwo6eFmxk/jTAtpBN/kj20EpzYBPPXCFffnsx42uaffCNTz
	 cwV7V1/Kj8lk97FHBN3c9QRLGdJGmqC+VZpCe74RUEdoghqUvWnZV/9JT6MVq8yS4B
	 Fidtgv0KlMsNQn0WB7j/EtlErWYTdbUgHA5SLtrv4v8va632/dOFP3rdt+ghrz+y7m
	 BRY+gWuOrvTcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907D2CAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878839358.25095.14789482610238444042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c575f80e720c7e1eded8c4fce284971494b5145bb3c5651f58256bf2f3890408
Date: Thu, 25 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758788393
