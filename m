Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8911F8691
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780187074; cv=none; b=Yzy6RhV0IOtxhsqJ2VvTyrh8y9a3f18JSbfme+6OSWFAYmfgYAI4VQW5akSiw4MfxOxVyRzVwyQQIlTuRUKilMkZxP+ICtERDefau4mwEUrCl9f9u4veBucqwTeCw0UgZmWLLtrRUge6bGe6GSRzDQYBqPjrrMvmOEL3Ru2I/k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780187074; c=relaxed/simple;
	bh=kc3ODC9L5hah+nbczze3C6TI9t/A1ryafwnNXJiuOgo=;
	h=To:Subject:From:Message-Id:Date; b=BM154eYbKlbscrYqh5gSbLY49XWyOk4lSleuyFLxRlxEf6UKNUhz2DW6EI5VQ7PwCsXa6w7IQPcQCs2kUIX8DJfpKJ0feQloKSLiFHyLaQmsvXJ/aEkvc0z3H/70Veg6Fvcw7aUckpyHI+d6OuWNLe3STgvgJ9zomQZ+QzDmfZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RY/s3R3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RY/s3R3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5718C2BCC4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780187073;
	bh=kc3ODC9L5hah+nbczze3C6TI9t/A1ryafwnNXJiuOgo=;
	h=To:Subject:From:Date:From;
	b=RY/s3R3qTYEcRlVZiMzZxC/tyelSZZq/Wnf0+L4Il9Q+k0xRiCSPs2WLEiugzzUur
	 2WHPCrSsWD9W8iBTtt46pvg71jMQjgkQLvxAUroc/3DhSH+ZPg727KyXV2jyrMSMEn
	 iPx0e71I2U7Ll5+TITFnpG6fNgDO5+SRdWjnTuOAi0eA3y2Ay/5T7TwldZCZvo1RS5
	 fMXyhQ6x6Yg3OOTLoNO19oiUFttKYoDYMKIL7KndoCYDt3RLVIg+6zopGCW/jpU/8W
	 zHPaVT+gL0CyrJTRrVg3fuFI7ui2WCFgg1yWpUa+fRV09n6NVBit/P4tZ1uSeM6LOw
	 KpVbzY8Eb8klA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD82BCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018707368.27614.10234026690967505554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca325e13a8d05a6aaf349ac4de6205d1032c003784489c68fc7ef032bead35c
Date: Sun, 31 May 2026 00:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780187073
