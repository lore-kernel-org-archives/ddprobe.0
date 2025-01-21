Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD531F03CC
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737503154; cv=none; b=mxiZGZ+3NPIqMi88kkBo2TKau9vyt8ICdWZcfzfZiYHahAiourFDYcuYxmShBfVOw5lVkEVcgPsYuZhr3dvFOrhZHdhSSskFv0LTl3+BIFcUPKdRWc9Yn94QxwDxpgrNKt1KJX67eAkaBHUMnC9EAcynoE2J5lBvrtbxd1xY/oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737503154; c=relaxed/simple;
	bh=VXy0KTX+zwJVD4+rOhVGFFpD+KyC3gyK6rL0smE0INs=;
	h=To:Subject:From:Message-Id:Date; b=hDYJyfySv9d2pck8G0pptUjytO/FovMtlPASh6FbnsmJDLmONRG7oV0TZY6w+jO+ZyY36IaKMHKHzUfFcZnZIwTWzUG8WJfiRxAPJSANaFmfNh1BH3Z29VWkFFEFOr7bFKvq3IziUwriEkvYtMoQGLdsD9JtKGWqUMyKLUEDJaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPJneO2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPJneO2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3C9C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737503153;
	bh=VXy0KTX+zwJVD4+rOhVGFFpD+KyC3gyK6rL0smE0INs=;
	h=To:Subject:From:Date:From;
	b=BPJneO2xLFwTWUDOKytvuPXv4BBLWugr2GMdzzkn2NfEoc2+oc4ufrD6ZEUASPEEl
	 UH62Smc18omRUNiHoYwvMVKOfUmzbkMk7SQhrLPDnGlcLS/V0ft9GnM5RjurdHroQ3
	 MnW1gk7UX831gQWMNttl8BMcX1TfNkCbJqCRO9fpbKv/WQ868mA0RDgVbCbbeUT1ct
	 F4NyQFiqobqgsUVLE0VKtAC4wvO7sbsiXqZlMhu2npz9B6NW2/HS1/YhM63k9wpWLM
	 pVd5kTNIjTViKDqkWD80BHsAWbJyohH/RN/whiBtaUs3xv0k6uH080JWdtHN7yeU7l
	 U7uBh1nxv4ZsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B48C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173750315359.6634.4605490312547502149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f18aae7637bb0d8bda1e121bd5a62c0906791218d8353b5ec0994a2afd48fdb
Date: Tue, 21 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737503153
