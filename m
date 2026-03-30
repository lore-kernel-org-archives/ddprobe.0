Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5DC3C5DA3
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774865694; cv=none; b=e6Dm2mPtatrVVvO1sg+AsAQJ27b/tObf2HqBRK4O5gh0Z+/gBvWFtcBU5o7u+4tXu85PpdBNVV8Dji7S/1UP4VfJmylFjRgFXqcmfXuJjLXmlaKe45tNQuJjNPhvbX6Keds3gT8MiDCH80YkYUxgNyEngdV9XrI9Rj71Yaix1JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774865694; c=relaxed/simple;
	bh=4Vhow9lqtXNY6M9bJOXLLHZgPqB+cAsV/itUdHbpD24=;
	h=To:Subject:From:Message-Id:Date; b=dnNCzu1VovOGnDPp+2mVri0h8mtmH76W7eoYCSBzjqnQm3CRqDFoLBOwqnHhuTVhPkxVsr6r77eg7wCXDcSnVpABb8v03WX+hhN2lvUyNsIQ4gTa2ZXaHk0V6lg7lwOGbYcSERbKBi84i6IGD1M7oHXldazTjZoaOqqhMe3rsUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbwiv7bR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbwiv7bR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D27C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774865693;
	bh=4Vhow9lqtXNY6M9bJOXLLHZgPqB+cAsV/itUdHbpD24=;
	h=To:Subject:From:Date:From;
	b=pbwiv7bRfUSlJ4NHfpRDoDDQkKpg6hHsLq07V47DvfYOLPlT4//ei9guSx6TgE2J8
	 wsJ1C9WQFKO7U5JS7ySXOJrqWPTxweaSQxnpRkkqZrWJfvH7B7FtUbBhmVy2uJjljw
	 h200rk4Q8HJFkZAO7f5NlKAugjsJ6OujblLZYR4ckBt5njvhVbdH74If8F2AzCgubv
	 8HK/YKCWFcCX5V8Idro6Xtdgyke1YprKGdHZoaT245ipKnVAxjiHZRqqd6w2C/AP0K
	 wpz+sC4wE22is2QPKTT+IRSPJffzDeFWnQP64gkf+cXaFuj6L8ERSI1cVS7libF/mz
	 cvZmFwjumqBbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB3FB3CF5
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486569358.31642.5140380435919439036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e921a845c90b053679f02c027174f51ce0cad757f4769f161706ca62f5086a0
Date: Mon, 30 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774865693
