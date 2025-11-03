Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404FEA932
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762141194; cv=none; b=shVHPNn2Sayqh2TCUFxL1kfT68mMvlYEU62tmzBZJTKWrYWFanXDj2rJByljZlMRllunTaoev8PvvWZTcIUo8gfPr3cqj67xSGlMgdtElhpMvVIJ6Ay1tWKUU9sUry3syVaCedjalNyYC95ToxW2d4j4rq1IfAyE8Q0oBE1yJ4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762141194; c=relaxed/simple;
	bh=uzyIDx8UMX3PAWhXBBCcdPds8eguamTdpidy4B6GEv0=;
	h=To:Subject:From:Message-Id:Date; b=SGZ6Pyyp+brwWPs8TSr0kowNaYcidUgpvYmpIx+zTE+xfjXhZ0CsTXhc2rJjoQDBNiJqVfl0a3J/TPmqMQ450JDmQgKtdGzC+OCg3SLt++hC5NlyJGG40Hvrb6JKMhAt3SywImomO0kARdwNeFI0/jd3qh7QICkhO7uyPILy4+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRb5hW6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRb5hW6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0397C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762141193;
	bh=uzyIDx8UMX3PAWhXBBCcdPds8eguamTdpidy4B6GEv0=;
	h=To:Subject:From:Date:From;
	b=NRb5hW6na6JtH1VTKAHoUWKILHgx4qcibe/HOMtEaPmi987Cya6ase+bjRcSQBOvt
	 FofwBR9zp6/5tigV31DaallwkZXQgktqNsBWqr2f8dn4WLYGSGdfTqqWRGXEsykRfS
	 aZCbPh1hIAPVwFJeQ0IqNKfOU/a56G13AU3bXU884nfZWcoqjzbD4bpcfPwDv464C1
	 vXIxzNWTDurUYFwbE8f8YdOoVQBUfJhRrBT/mhcsvNDPMFCsad/SKhLYCFEZPt8z5L
	 pxruvVCikOGowYYIat9GCqSy4DVHl8GOsO/fHi65cj9uJoot3ESTPrglYyt2TTP6cz
	 ipMLU6sUSXBKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE9CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214119358.18955.6385009369022723857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: accbb5a6b7eb76ba1d402142ebf45ea2d757fb88f369a78ded079c562702cb34
Date: Mon, 03 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762141193
