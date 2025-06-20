Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38DE23185D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750452593; cv=none; b=ZNtwGSmKr+Zi2pKTG221QR1/MLZEYp3aUkTM4fD0R9GxtWBfEhoWilkqsaRC9qpD//nwjy8TRN6kSV4n5QrSXBZbNo6NycfXckXL2irdegAqTiydj2MoVyRzcZeNjhW3I1ky/xEpEZO0V70vIuV/BU2NYpTYFfOvrGQp8D3682A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750452593; c=relaxed/simple;
	bh=Qoucnue0jzFToHdHTvvh/DeK0vWof2zwigHhW1VsC18=;
	h=To:Subject:From:Message-Id:Date; b=hVMRhJbldG14d8LJPN7eNUYfleeSn6+B3jC3R40z8EcPMj1DvuKWcUOR//XF+yc4CwFBrDmPWpci6GC9RjpLCjBC9AHCY6bgt8L5Foe4oOjwWSITSYmv+y5kBNZeQ+xm8HotpEfaVpTzD6KShAw29r5tEaWRIajTkJU54O6gMLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=To6pSkiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="To6pSkiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2332C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750452593;
	bh=Qoucnue0jzFToHdHTvvh/DeK0vWof2zwigHhW1VsC18=;
	h=To:Subject:From:Date:From;
	b=To6pSkivoSjKVdbApfr2qltAT+Vf/ZWusfrvUZsWuutSPFPBaPsbxFU4kiMI6g9JU
	 8huYwmi2hPssoqebkOl68fHh/Z7W3cMHIj2bTWdC6TtFbG5HQSVOK51EmuZT0nk5Wc
	 /CNxE4HE1HhwnlpnvdWvxRB6OogUFgRTwdLymFAmNiYzp2GK0Z95rQvld8Dsz9Crwz
	 eWCuI3IEsTWQ4D42XgUCvaNTZX9YczbHwEeH9FF6SNRTBAmIoVWUDaAsLfqtrYpfae
	 cAuyx2d1F+agsKVUxQFo2l2mxcIXOz7Dxxx4i8/FTw5JzJAUzj1+Aj0+hSKUC6sHGT
	 SlebCnhfHlPpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA93C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045259357.30609.10285220507965864287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a65cb54aaf85fd7b08013f832a2986f84802bf951e68d42afbf5630926bbca9
Date: Fri, 20 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750452593
