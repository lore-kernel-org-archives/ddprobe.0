Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC222D3237
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764233574; cv=none; b=e7SVbaHH8XtfW4NQJyVazfhE9tl575Vgxbt58v3JuC9Itaak+CaAR0u/ektX6QFB2/SF6m5APkM+kJVhrrFaV4t98vWXNQUyYEkdHt+BikJYcw3xDcz+B8IOlR87VS8NoomgfxYXy2PZACmNB5NmxeUegLQwj543Ptfzed95Wl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764233574; c=relaxed/simple;
	bh=aH1hRutz2MwbHJhfEkROL6kstfI/Pcx7O/6LKA5s0gs=;
	h=To:Subject:From:Message-Id:Date; b=cf0+fTpibjWC+5aAvM383krzJ5p83tTDVzZ4cOtNR+MFA6J2C18NnuKwUTO12zQavgaZBXr3y/BQVuk806k4qzveqgIGTb5CJIWoUtehQXONn0LURnScUdsdjR6+JTRVlWqQepYD9G0hfEVRXj+GAX3LjXprNAW7+iAh55X4R0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0DYHjCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0DYHjCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E1DC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764233573;
	bh=aH1hRutz2MwbHJhfEkROL6kstfI/Pcx7O/6LKA5s0gs=;
	h=To:Subject:From:Date:From;
	b=T0DYHjCwoyLZk9Goaps3vuggjK2u99s3lGBXNZc3vM/oIrd7bCaFehzu2s4D6LYah
	 H1nOlg68byMtw6tkA5LAi+uHkjHZxYWCiGtVvVcYHrj6/u+EWzmGbzbgr2jcCiKLn3
	 UfBcwzkySz05ZWny316U/xf9voxc3ynhbGV3bobUYJQ1ibFMswIgEYSH5r738YtmYz
	 x0RDnlnpAuOV50TrojO8aDlKbOhjzznbW4DK1i+og7010HvZ3RrhoF3/cn0fSPq+nx
	 t6fWf19sQwG2CTOPRwdc8WgP798msJAMke7GV6dAAHfIOkpldlQtm3Rn766nYTQFT5
	 i4xC4c0v0vvdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F67D11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423357358.9631.5456618740219229676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7471a72461fcfaefc8c58b9b6ff064956026a08f786dbe1d97b67d5c885f0060
Date: Thu, 27 Nov 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764233573
