Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231673375C3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768466034; cv=none; b=I1OfSWcvrBlGHgQR2IkqpXmzZxsH3P559gdu2GdWE4ysBp00x2K1wASMYeSYNOypEkdxZPA6EdhxM1DvPS/AOvxRvDkNMH8f/ZN2qum9GUm/v0EOtkqvBGyZgTltKYrDBKYRelVuOx9OYVupXIlCkKuajoFd3e1Sem9M3632HZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768466034; c=relaxed/simple;
	bh=wDlOOM90TxLnTTwiS3P7RSUWZ27Td/qQRDOK/PjBJqU=;
	h=To:Subject:From:Message-Id:Date; b=g4SI+vXW8b+GgozhVaKhaSsBtiQuwSHr2xwYL5cj0tS+3ZYnvdfky6oMAV/D5siDu+6w1uaVVXALszlwLBc8kxrleT6xtS76IHNKzJ+sstTxkygBGD53QPwDx9SCrCjA5neVTouFw/+3XLXErCEoRr0tc3a1sqBmCrBATPp9BVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsfKN8W7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsfKN8W7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0643C19421
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768466033;
	bh=wDlOOM90TxLnTTwiS3P7RSUWZ27Td/qQRDOK/PjBJqU=;
	h=To:Subject:From:Date:From;
	b=qsfKN8W7Mf9uiaGOT4qLhJpbhHJhCxq7SoaI8h1uSdCVipb3W+GLu3i68Jx9ffZbE
	 BG69nBh0ZMc27s2k7cBhGb0X8GIzRCkWxkZYE6PU0dYYVWtFjTneB+ffwATRHC8vHq
	 REMWtp5aWJYELhEFSTLT1FMjjGdWm/dTJGaM3Bk6VTvpHrGMoE4exz89HVYQCtLM6i
	 7Kw8RXEMxqr+ydQGBp9AVlwzS1qyjngdNp3HKEn1Hgzj2MFGAtNTUO/qHqoLMj+nRB
	 pX197dQi7ySHcv4jv5NtbekNoNSsa9GaGOZYxIzL+7DVO24dXcKSnWiH69YPWMFa0D
	 lB50qr/LT49+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEEFD33A1B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846603362.2977.13213149220604257458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a16b5db6d92d97f66eac254b8e6435a321d8e2a3446f2b6e2ec6db3550f542
Date: Thu, 15 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768466033
