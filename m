Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653D02BE7B8
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762843194; cv=none; b=ZbwJjTDLaBvLWu09aOn0m/pok0BWC2vlhHzvMuPp97VtzF+7vDsEXl3DUEYlVoOxzNfjgkGy3co8tSHOwlYVgXSslQxNiRdlJHYLtLEM+lm/pv7KlwhJZhO0WiXrTIY0GmcV1lYCei1bpgVT6q13J5L60ry2brVutdj1yQGEw5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762843194; c=relaxed/simple;
	bh=RNHH+Zzbk8Zp2tRszK9YViug5GTrIKpfJ2ENoXWkjD8=;
	h=To:Subject:From:Message-Id:Date; b=LkuxIm4Qy3ABJkiyvKPPG92V32U89YqOq7D2tCQ9C+QYw5ItUy6UpSO8SPQnjrnXLcSV6ABB4O4NENqt5axDJSlZtcOlDc6ylCu6ak1r9pJVH1T1OCcpKelRU/UaGQvYnwy0/CpXbal4UIEQEOPd3grjdgGVneKGjSNuFEYn0Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrXlrUOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrXlrUOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0D0C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762843193;
	bh=RNHH+Zzbk8Zp2tRszK9YViug5GTrIKpfJ2ENoXWkjD8=;
	h=To:Subject:From:Date:From;
	b=IrXlrUOArxjCPXWA2CLcwkc3WJOK2VNAwiweRanyk9hNKW98Z4QGttYeuSsWcsCPb
	 CFU15T6UYNju9v1jI1FrSHEZMvQf9MpOuKQF8rmqkZBIq+Gw6WP4nQr0DTjllxaEco
	 0DRoB7lenBbyGI6VXwStKs4OkyVSoFKnC6WmSs3JHZbvp5ECxKlZgDpOyTT/5CMiuz
	 nzrgBVZm6u1U/OFC2xH3EfgJeCAym2TqwTHTou5KgsPfq95BqICX8zT1xuo/vxMmUf
	 RuAenH/EgNWw2g2WlbCFFo6ujtev+2o0z04krIQ6W7txfJJKvdNeHNaTflxb42orIA
	 63lSJ9yZxrLnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E92CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284319365.21629.1989590600524345222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba85c5300282dc9d86e0da3fbe8a91d7c1410a32d68434c1e8e2aa7682e216fb
Date: Tue, 11 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762843193
