Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D69428DEE9
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766319234; cv=none; b=TEWcCMZzMRP5sS6FSKU41l6Jh56EJ6kp0SLKjcaHYvWYzxkEIZ3Sfrz8q+RMaA0X0bxECys75Ce0Ft33KFC+onpUV/H3dv7bRW0D0zhHEKUHK5rcG+tYdcXr6sNSFOfDj+D8UZD0tSy94Q3EZEqb/G5rDz3XbHFttrEgN9nC4Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766319234; c=relaxed/simple;
	bh=C9a31TFZfGmbBu11GLkdZoiMmZaG3/IPXiAP1mUxeU8=;
	h=To:Subject:From:Message-Id:Date; b=qlHNRwj3A5RMeivBCEX0hUo23fNNvGYTiEXpCJ72Z+tkrio4NOqbY8mRTT1T2/dNaO/VxF0GiA5QbaxkiETNg4Hf09p14yUsxgxSwa6viU8RAbe3RwyJ6YXytCWJz1iTVz7PU0OBjDq4+vC4lmm9SnbbCSrs0HCmWTlnnnvTXEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKhNPRvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKhNPRvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E37EC19421
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766319233;
	bh=C9a31TFZfGmbBu11GLkdZoiMmZaG3/IPXiAP1mUxeU8=;
	h=To:Subject:From:Date:From;
	b=KKhNPRvrEY8pq6WDAhADohf8r2e2eUvubi2yNHdIb+okulkCdJe0ew8xOgMngGiRT
	 Foibe5Ct4bUYhF9aGBoOwQDJojAtyo8Sdgp9bV4Lp0/SLwFmrt4DXkecLA4Fs1/sp+
	 EYxEa/l359/oa1w3NIXK9HMwervCZSJwG5NdnzjkRBeakm6413AviAw/sYnrh+HBU+
	 JmdhbgsTmIj+QsDBp/duvMCucwVuCfK1TyMAF1lI6My0zxwtQ2rzIEQo0gSpyH/hTq
	 +WJ0w7xtHLxNJDGH1a3mjl2ksMtOMicPadBvIRW89yrr3I9Vwq1DqavadUAdDQ8JGo
	 4DaJFasn6ScJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9098BE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631923358.23386.5744433904739880872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54f10ca1f1c44f9eea6a093f5b38cafef5118ca58adfb61b31cb9814439fdc3
Date: Sun, 21 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766319233
