Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2D035B626
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773110694; cv=none; b=L5rLTMK+AtuMafOJtF0MJIFx19W6xRJL4o+O1FraF7uFixpRb3Yv/w4igS0kjOhwQddusfiUWf2Dl0IhfSRiTGzIWCGWdMFZtRc/HacJbXHp+fV+vQVicxaqCjczJUO8+qpdWOluNp8rGhBRLg9bW3YtYkmrxYmCNhdC1tf3F3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773110694; c=relaxed/simple;
	bh=a/iwIJ5VlmHq76oeZFgtWEXERn5F29zR/+xj7YySPY8=;
	h=To:Subject:From:Message-Id:Date; b=UbfkYrUafjKMaR++jWVh+g2GtvxaH80C0VhOXyYUJckEXASeK8E99lv7wDhIbormQQX1lHuSLt8GDS8ltur3lRExjhJAyOtgfEP72Ogr1S2b9TdzNx0DB0V7+9/Wyq4uuS5EFrFNoH9PdP8MckVnqYa0KyRLyryqkxvpBQqHeic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZyQ5rfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZyQ5rfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E57C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773110693;
	bh=a/iwIJ5VlmHq76oeZFgtWEXERn5F29zR/+xj7YySPY8=;
	h=To:Subject:From:Date:From;
	b=rZyQ5rfCZl41oTCQoARu601jAN0i7KuiBb6dU9TQvCom3NwWJtiKx6Ahu0rxiSzVx
	 oTxwRQqS6joahrxpPmA/GIxSPjP7r+x0aQA5QU5S24KYw3cLiPyfpFIx6CFcIsQRCb
	 7RZIKBvYV3HHCKsn/MH8Kn/iU1LB5f7Zhh87F4tJU0JxA3XaC9FW1TAO+uf0v+9Z9+
	 WV/XxOtkuIrd5+mXy1eXyOPpIsrPN1yvacJlF4QnavNmy309jtGLrDSIxdDn3XvSR3
	 28sMR99YOKGzgOs0ygKVYoJPwOfmKq5VYeSl1MtQAFCgo+1wGL/NI/OPf/X0Fm1BSo
	 3/uoPY9w3P6sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952A7FCC9AE
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311069358.12073.7708469016282275471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c0d131bcc893d5f3be8554f853d095e812b8eea77c88b1c22085b565f822a6
Date: Tue, 10 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773110693
