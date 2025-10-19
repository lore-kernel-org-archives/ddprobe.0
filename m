Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6772746A
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760844594; cv=none; b=tx6EIp7OwfJNSwTN6hGWilwP2KGCLxp2yWmrsBHL44H0dEuyKLp7t56xneJSNFKzOslyl8Rte4RfApxot9WTXdgfYOYnM+UHHuYitaSDHBM5k32tv79/dLMBihD698o4loN4WvfrKLH0MvsJRibLUpfn5syFun99pjRT/YcA31Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760844594; c=relaxed/simple;
	bh=j/y3ED67bKh/QXkBot6IJ8h4/f1bGpf30CTSSh3DSBY=;
	h=To:Subject:From:Message-Id:Date; b=OSYltFOEVY0yApByv95ah9wPjhBKM+jt3wHNJERGMmKPxyySM0w8G15ddZE+DvVbdCVoNY+xIydkGm4vqEJOf9cKEpcxymA3E8sRhvmLK4r0B8hF87+II2gTi8bGvNnW9P3xwYLD2eDtFpQlpkCL4m5paIFgzTyh0W6YQNRUgMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fokunMhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fokunMhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8820C4CEF9
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760844593;
	bh=j/y3ED67bKh/QXkBot6IJ8h4/f1bGpf30CTSSh3DSBY=;
	h=To:Subject:From:Date:From;
	b=fokunMhVI01FL2+YfHrGJmxpOFcdye4CKrlRqsn2ZC0LHkLoXLRUB4ENr8k/IAmxF
	 LOE7EUVyGmvH62UIR4iPf67YrT9/9dlI4ZqIPhzDFmkiaMICTaOUDc6cWVndaAPwr/
	 ctnz5/qupNtcJxkbEnSeRc1n2DqVRJYrx8V601Uhzp93efUZkEqqgWYh9uJk7V0Cb1
	 Qv5V8TN1F0Ze4Fl15Frl4eBshGzXOpyWXYRSsy+aGgTiYxx0YnntsakibQAWw7l1jc
	 7GfQarXR47y291zIkCo1CshLb7jCqxNRQ91is5JAYnxtrcxR3g8AXFSsKJ18DkjDtp
	 4ZIaaBvfibdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D6ACCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084459358.21607.13453649840099623768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9bc2821447645b8b32a4e6cc609656859cffd4bc56825fac165edcc397710e
Date: Sun, 19 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760844593
