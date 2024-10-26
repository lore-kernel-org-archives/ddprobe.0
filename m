Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C5F1FC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729940154; cv=none; b=Oxv6BvhmL6BIassyqiuILS296EoGnvQxQunlef5GNQPaCxkA7bLqbhHN2chCjGnyZPiFX8oXPHl2Nui2fkLhewrN9ftSOhagppmZ/PyVzQVGz5mXsiVstpq024zfotAs7x+tyDGJ95PmjY/nMotVITk/jPO/NfFglztsUttEmMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729940154; c=relaxed/simple;
	bh=i3G3ABem0cdAocxMDoDBk4KhZDR5WqT/8yQJJUfSAlA=;
	h=To:Subject:From:Message-Id:Date; b=fXLVYzFDNhNzT25Jf4tDAQclt/9w01ri0A2UtO3Vpu3l74DAMhKBgY0oBDekMu2PHCDnivoPSZPE5McZEuaWC/5JcU7zZii2X3vU2+ZvttwWfPdlKV1Yl1vyNSgZLc2fnxsPBAsEr/EOAkqyrp/Cy6Rj0C/shL0yV1dpkKd8i9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yo8ZJzNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yo8ZJzNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DA5C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729940153;
	bh=i3G3ABem0cdAocxMDoDBk4KhZDR5WqT/8yQJJUfSAlA=;
	h=To:Subject:From:Date:From;
	b=Yo8ZJzNHP4TwfTF3PIJ815ObFel72QmaWtunceIHmADjp7Ng25eGJjRR29qlGHh3e
	 R6m591cClLoSJd/IIk+PK2cbATT95RCEsGhQ1x4bwEvcdV+rzU78unUG2fiCE4o3vq
	 ZVlOItb/u4+KPQsnTKB9PDmTRh9VajNS6jMfW1SZuuLatE4dOXBHy8BE8sYUEiUJMS
	 zko4fhIKyj6FYp0wAVJyQfUfpUyaZR8Ce+u8GWUsrrLEzAsJWVrzSof/bSm/DV6x89
	 M5DJ/LyGaVPbEqHsuq8lod/4mZaUhJMX6gmk1cR59q1aw+rjJkkVQy8m6FBgBDo52T
	 4xAExvBogIzhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4374D10BF5
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172994015364.20679.15977262076933691536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6eba073f87500a939bc401958897c84b9669f201d5755be04ba0a5ed99602b8
Date: Sat, 26 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729940153
