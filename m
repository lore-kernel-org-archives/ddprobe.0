Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094372D7393
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779418354; cv=none; b=bomuX3NLH9l1n776UFpm3T+4+W7dYCc45XUMWKdpd9xJGGq/4AeD/XaTpo7rZmIO53BkBlULgsdCfm7HYA6ir8bTFoc4mCLCQP9SIHfmzbeu6PoUnrtsqjNjwGc58JV5dzJ6krBZvHJ4G5YuYGWojMpkaeEGA2K5TCfqUZVa2pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779418354; c=relaxed/simple;
	bh=r7xxQXQMmS0lv54Nf/430DYp/Vm0v5wyqw7wCLSANIo=;
	h=To:Subject:From:Message-Id:Date; b=SatkJY1jIwMoAXopIwMHqC2mCGZ8aDbGMhu8Q//PSFM/1Iaf20wa0Os2gywcuxPhleMhmKLDCMwWBGOT/j0LdCSRk4og+zYy0HFnOr4nu9wVTQ2UHvYL2e9V04aqkpsVUxy5zequCgjMiqZGKvlXvywj4dU4m6q0QEOEKXvTUqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPA4n3Kk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPA4n3Kk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60E4C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779418353;
	bh=r7xxQXQMmS0lv54Nf/430DYp/Vm0v5wyqw7wCLSANIo=;
	h=To:Subject:From:Date:From;
	b=HPA4n3KkLcrddEPk2buwYgsedWbrlcM9qpnqIiziVjH8ZqKKr8NchYoccZq9OmeEu
	 a03ZeINcEL9O/+SzvNh/Z4/mSdPNFiV+II5BeS6GIaLojAABe7uQTDX+DZvfk8Q8/7
	 /Vb8L56R3w+vcHGgRZD3t24iZUHZcrExyeNxvfeMKlD26dA6rhKgnzgROqLMnlGnKv
	 qD80KiWQaGdACIr/lFmC1h2DkQigwpygC78Kx39XBvghORXe6F9kApn0mhBmjN0Pwc
	 s+s8wqwR8WHjCvBnwYbIYq7kfT35EekmxePdCKfC7hP9kSmXUW/UMSp1Q1vd4EvfsB
	 uFx1HEOiPH0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE50ACD5BAB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941835368.16155.11323675456666360664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415070cd04795b5b1703f74cf0870e14212c274133391ba37528be1f30e33f8d
Date: Fri, 22 May 2026 02:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779418353
