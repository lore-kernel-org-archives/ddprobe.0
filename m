Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127EA2C21EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768397034; cv=none; b=EPd6Rk9m0qA3w2BmXblZf4+IVpdGIyB6D/00+fLaJTecBiOP79VES4eaXd1Npjwmb5zlniHeX45HwSJII6E2gsq6akZ7gx3Dw2wLb/c0PpsGHvbYuL2kmkt6qCk4UrSUs2FRjeMpHJQ/JZS08LJu0xvpZUJK1sq4pnPsvEGXwnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768397034; c=relaxed/simple;
	bh=GWsIiniiM9XkRZ//jWYyUfeOJikjQM3cknwvnA1Lvgs=;
	h=To:Subject:From:Message-Id:Date; b=KNz3areTHuOU5RwBJQ32LjXV9tmklzt3JuBwWdlfwTNOUDktKZ9sU3kmwphSkqM26sRk/A90dfA3nBV5KUG4FThlsjQ4YC+syZy8ial5TXAobDEJy2T4d5USVj4DS13ACB2/RrqgLOHY6SxFOJJm/hTNA0BQqNI/3Z+CTM7uTnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTJ4t2nV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTJ4t2nV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D50C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768397033;
	bh=GWsIiniiM9XkRZ//jWYyUfeOJikjQM3cknwvnA1Lvgs=;
	h=To:Subject:From:Date:From;
	b=UTJ4t2nVAC6JY4M49hGZBQt4gFOGgompUdmSqz4qofk+Rp5TxWbdSA7GGJGK1Yrbn
	 fWmVIB9XmPTut751GYHDGwLgAYVOknN0hGOoeosktPr7CdkEqKasgrmYgKuHFr8ff3
	 mfmlYKkOowV/5XH0/kCZX98Hw2+iAp3+EFWqwOup09CRRNyvaOCnHXcgA8T/q9Psjc
	 Fl54kItEZTgDutqXuYOeLip99hlk+HvpWidwt8aqXzopB98WgTOzxh5T0Xw0xc901y
	 rup9IW7EZy+ln2a3tt7dDOTjIBvZBio4h0eQjnyR2YhpYklKXVEWasVnF6trM1PGIs
	 ijvo7CkAeI5mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91497D37E33
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839703358.21553.314929613426807226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1078a2777bd18ce45fb665b5355acde3c66863727f376ef056e03e3ace00b9a5
Date: Wed, 14 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768397033
