Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271FA194A73
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762818594; cv=none; b=k0rgWjQohbVAruMc/jIxPJVZe4rAdFA41o5ZTGlY6Bj9p4XA1IgTW7Nfr+7MoHQb3U1Kxb6L1dnhSxGw/zqQRsZYdq4rjt6okFLtcKc/5lF6DvgQ3ZSmtxuWJ0md+taDE0YeGZZlXlB1lZoOMNuekEIKnA3MhwZTBx1flPyWTHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762818594; c=relaxed/simple;
	bh=1Ic2lDDDMWDtTpu8MppE441F5ReZr/4aanGxVug+XUM=;
	h=To:Subject:From:Message-Id:Date; b=JlVcNmmvqkZ8+cuWIcVDNZX0n52ZjGdRfo7Mk8MMNWQ1mjN3RzrbZXC1pt7OyISw1e7jXiBYYl5gJQLOX2EYJ7q8+Muw/KCe1IrhcJb7+nuYKqpp3/KBwGXCkl65Be9TnvwhDzWY0HtbIt4lQ1YOwxQIfCbFhqeg/GqOOaQT58s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pvg4F7wF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pvg4F7wF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7303C113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762818593;
	bh=1Ic2lDDDMWDtTpu8MppE441F5ReZr/4aanGxVug+XUM=;
	h=To:Subject:From:Date:From;
	b=Pvg4F7wFC/bpcvIatrBKPT20R5AxRM7chu0Zg+bHWXX+hcPqAH27nSdKaXZeLcuuM
	 b6ANSZwRdVAv80lTD8HJEtFydG8CxKpLbWl3ydMd6QUQuPx6UsRLcZ7NwMkDZIjkU0
	 0oviMh4kBqkHsmZ7zLeKdpk5QSA1oBwLFs8ybeDEMpAKSeqGmkjExE94mY6N3zMivu
	 f2P11bU8l9UKFYaswwQcFqnjZbXjDRh10tlRktsw0u1nINyqeqEdXX1aSe+0roat1s
	 EZBKJ79ecg22Fv1GqKzLjLpWg0k3860SruOuoElOXHgtkjV4JvvBs4BPZEgdt2fFpE
	 mCOMdxeHdC4HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976D7CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281859359.22699.4170142284464642590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 089ac2cef3c1d69a77b394589c254e58c19df5f408cd33f3838fba60aacbaf76
Date: Mon, 10 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762818593
