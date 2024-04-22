Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E7828FC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 02:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713754223; cv=none; b=NBXqCogbxWf+8A3aVI2nIUpnuCUa/MsiAE3j9xe8WsRb4m/2Gy8OJwXI2OeyCjQYdLwQY944rXjbPGxN9RZKIJlYwQqwoSlXjfb+SsOKltaZCUmJ0wnIktCP9AEpvJD8spoWWlK7PIQqb/+NCxLMjMeG+PMllo8O2dKsvDhCRNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713754223; c=relaxed/simple;
	bh=fP9eAv18S7J16ZJ3Yjd+wkzMXtXcPIdIhnjFloNNWCc=;
	h=To:Subject:From:Message-Id:Date; b=ZvvyZsyAF1KoQvxElU+4UuA/JOUwxBUn3KzPHPCBbCE15tz4xInbPXJf0V4wT+EGAs6OLyOHnq6Kyv2fAXvxjzJWByx6S1S/1XqMsSbjP9T5E9bP/MXB6obJBemS64jw3iJJNMVT4tfn+uf4z70iuBrQz9SX8pnX3c/1rY/jFAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxbzDkSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxbzDkSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA406C113CE
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 02:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713754222;
	bh=fP9eAv18S7J16ZJ3Yjd+wkzMXtXcPIdIhnjFloNNWCc=;
	h=To:Subject:From:Date:From;
	b=sxbzDkSwuIPkFk3e1inDteunupSmd2rusRmIFTHIHq/aDRD0GmGzxQVqT0cF6uwpS
	 QJSCQ1vEObqVijc3BYMi2XnQcfw5q6hG871ePIGPZSgsVXGtdPpOHW7SZ/i20GA3Wl
	 0l5buRqMFrwihv9TxwA2SGlQ/cwGXcKZSet9u64hFfxRbigW9JsQqLyCtt0aalYcqF
	 cQ4PdHTr6CxhV/HM5f0MogacUX9OCTRUMLEflpkn3nlVCi3hfgfRpzP4qc6Wwklcci
	 9OQ4kAS+ABO5uc9IrKrGAnXAmxslpLsQ+NiB9CWYUTqrC4jmsBNKpLMPth9KRoPrd/
	 oRNnlhcz5lY+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3E79C04FF8
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 02:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171375422281.6949.2718202732354571689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8fa8b67ae6c10b68aa667c7c589a781327e4b0fbeb50c7ba18d21715ebafca
Date: Mon, 22 Apr 2024 02:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713754222
