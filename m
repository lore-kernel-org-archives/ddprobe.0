Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171F123FC54
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768632234; cv=none; b=ujOhuGr1ZxjgvsRCuCbB1iwEVRGkqYlgtcwd5ltJfPDf+W24AoerFq1tb1NMHDd966rv+PtOtNcacq77Ha7ml0J9oeFmHYxf7oIUu5bjZ3dGFvkLKHNXZMHVhoB8U5FBle/07eK04B+jpCZMNrd2N2bhaz9BFZgECq4PthvPJQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768632234; c=relaxed/simple;
	bh=9MV5YJ2fuP+clZhiQ4ggHBpW74pQ90FDGHHiTtnc018=;
	h=To:Subject:From:Message-Id:Date; b=sMAXSOp+7totk/1/kLKt5zUfKnbVG7zlMc0kq8A05FpM9KGuzZJJ/yPnRwJXE+PVa2Lr4ek4/m+ue3AYtpdVpqcKHXFqieIugSghYxWEFfVLzBW4+a8A/VXE8WzBIaxFU9niaJYwOIIAOWqkg7rho3cWR9LtUnUs3IHo7jIEQrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/20yYiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/20yYiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6822C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768632233;
	bh=9MV5YJ2fuP+clZhiQ4ggHBpW74pQ90FDGHHiTtnc018=;
	h=To:Subject:From:Date:From;
	b=e/20yYiIQslxwzziF4cYb4TbPcWuMNK7JldCGcRhIRUhxtFBl+SQwqZqrC9/A7sKb
	 zludU2ypdwGEX/0xUXVm4K2jpeO95ifYYSE5zjJTIVO6qTNbb0expRq61xipgeAe8G
	 /eDE0PVY062eHuSAGQc1IV2fjpSWA3Z8Iq/JMQXnWTSqXpIJItyHaiHQZvRfozA/h6
	 TGodQIH6QLbA5gyBDV7x4aMOWAt0rD5lKJvszREEXqObcHGgWaOdCF5CyYJppIVzSk
	 +ntM3CReJeLAFXjVes/I3GUFbyBW6qIC7AYUHXoDoJBy2sc08oeU2hb8h/a2rKkBkp
	 YsIH2RVL8I/VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A01C98312
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863223358.26677.1548484106151314907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a1d7b82c96bcd683450de04311c8663fb0a3ebdc4d1b5d09eed450d7e12a76
Date: Sat, 17 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768632233
