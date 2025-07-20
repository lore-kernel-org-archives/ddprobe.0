Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1771917F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753030194; cv=none; b=rs1H8myZW3mMOIAPIskqmjCMkS33XUpB8mW2lKhgQpUpcOR/gVPxTGwtHDBbbTSLgxGZvchuVMHumrWbDePoh9T71J1YNrGAoQENA14TJbZk3SaPkUDKm16NmxnHLqFeyNutiLcVp1aiB8DEJmkJwSY6A8MAfRTniFMiSHk/QRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753030194; c=relaxed/simple;
	bh=HrOLMifq6ncgh1C26nkttaC6sFMXso/34gvYj+lQQME=;
	h=To:Subject:From:Message-Id:Date; b=pjqI6GoJ46ZdU93j/zzJV6oZIFEG4PtateD5MbEmaYKfmTPM4Catlf8xPGAFERdNcGdaDGn7ZQLpW2PTCMecS8xWdU4/w0vSoVBLUG8r5KnOnxDAYA5kNrQwk8FodppoX2477Im5wknUm6oMv4IV21I7FRTK5tWwBfC3JJmSl20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5a1DczC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5a1DczC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6414C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753030193;
	bh=HrOLMifq6ncgh1C26nkttaC6sFMXso/34gvYj+lQQME=;
	h=To:Subject:From:Date:From;
	b=o5a1DczC88EGnxc2cGq95jhoeJli8bfT+G/jVDPora7Lw6B7kh2wOVTFo6ZgbCC9Q
	 3hQczmG8DaZ8SBS6sCT2qfr5b5/GMaPbwNWBnVavAXHcRks/nUUhk3mKLKXHjrKB93
	 4pve/4ZyKciNaPSuIYvGBT0pjmPN7rgPzi2IiRAXHb1tVn5EaXl98m8h4AHtFBR2ei
	 KqCBdEDM5R0pbHc/i0Izsb9SDXM0lthMyqDTUsJNKOdpvMoYw7kLTgaEu56RpuDK++
	 oHOMzjfe/u16lHJThr6wzC6s2ikoAWGy49QXOlriN+/zEvkYDG4ZiRCX3V5jo3rD2B
	 u8FaYhwLQ1Qbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964F5C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303019358.25213.17182121495036268295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1d65ba9e08a8bb33e25909e3a086330d296920ca5952caf28fb31198f4821a
Date: Sun, 20 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753030193
