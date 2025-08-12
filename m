Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DD428505A
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755026394; cv=none; b=QklbYljP11T/0yt95RDkomxqeNAifIAaCaMSZPwG+2GEx3KsCd/YEm3x7I7mBL7YjnY85aBCvGuxjSI59LPyxN19U61Hcxplk58YH4DNwrDHdt9eyWu4MvyiNI4Nq72kgXyuQZuhq3/0kUfRkrwJfTZW7gHeC3F3ouGO2be5SRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755026394; c=relaxed/simple;
	bh=jtPM47zQRH/G+uo0DRpfarXA72Epdu7YcqO13T3TJkc=;
	h=To:Subject:From:Message-Id:Date; b=jTHkCFgzWaNXOQvoLvzQJQ9PKWWlV/Hc3xUlOR8egycSXBMS7jHoQiiNtjYI5ioEoo7ecH8QCWn8sc87moCUPI7rc5ISo3pgYS0kZan3hu198hsVKYEh/4ykAjX21sw2Iojn5U4wm5qV1lUsXqKSnSbwiwywg04KOqJF3gWpwRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ht1lzu+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ht1lzu+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FB9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755026393;
	bh=jtPM47zQRH/G+uo0DRpfarXA72Epdu7YcqO13T3TJkc=;
	h=To:Subject:From:Date:From;
	b=ht1lzu+9z/feMsMA5W+3pEs9Zuwe7A3gmRe9knpYXsOBTPNDrulaP5RAt661qVr2c
	 viySDbgtAgFPsm4IoGuzdkg82U1U13hLHiHRH7++1tqsfoyUNpbqVCGHHpoRXFFfxn
	 rB93wbZ0EeZp98xJb+XxDn6R1yGfv8DMA75Sx948hJT5VDtEnDJBlX34LMmRh/hJTL
	 2TEQu3zh+yN9p6wPAc9yQ0kcmLfZ2eOYHdYtdapM4UqAk1sQLlLfenAjQ+LQap+gQM
	 1DuzNyp5mqU8QOryfK/up+kayK3RRKlzAXsuZAs1yT5zMngkg1aLjEA7vQG/xgzsaH
	 8oGY3Bph9wFLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1442CA0EDB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502639364.30901.1891087453368064841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c514e5233ecb56a8c2e8696b6ac28ed75a3d9d8e330b5841fcec83bbccd26286
Date: Tue, 12 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755026393
