Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B25F3382CB
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782047194; cv=none; b=XdcDzmNLH+NkEpitGw067R141mimcOrihSJyLBu4OXd3U4WZiMlecm4Il0Nyd77i8L62viGaEHrQh0Q+TC4ACh7iFqgvSjWWY+Amqwb7c5pDKuAA2rfJWYXzB8vYYY3JhK+sajqwT+GFS2b7fg3HGTumv/7QMx+mVNGYyeiF9rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782047194; c=relaxed/simple;
	bh=tIHFNRfA+5cP1A+sYlYa+HjmcjsXMlmWPzqOaxqyEbk=;
	h=To:Subject:From:Message-Id:Date; b=ZcklDObclsfHAWlCzBP8LnJVXTrTFe6a00PmwaX0q40IS/54A59uCurZwhkwTJQ8knCG0qVWhgxVK00T8OUUvkIAoQz31Qgk2qbU+PrEG4+5jokCG7EScTTQp9UQEI5FwcIU9xkbEVozLt+9PlNaGe2BovylcPMj2oRZbI6hjgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5qxKauL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5qxKauL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEBFC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782047193;
	bh=tIHFNRfA+5cP1A+sYlYa+HjmcjsXMlmWPzqOaxqyEbk=;
	h=To:Subject:From:Date:From;
	b=o5qxKauLZd7htwIUqVdH16aoFD/4x5Euo1bYPMrsZYh04lmLIIIZCQE3LzCUonQZU
	 tZZ+neaN+04Cx1nl4KlsyPhJT/jm8LOzpRziBPQbe0d3E0Ai0ZM5m4Xluc12Cg7y40
	 dZarIFnEXZmlKk1m2+dQVR7WyDC1Phc1szxvOi2G+rRoXka5yT89rNb67jTVDODUkn
	 0xT/eZehFgsKQ8PpxFko1uQV5e1gYmahuHdhl1lrIRxTs1wBkTIifo0IAWHPdv9rC5
	 nv9eRGxtcPGhcpNrjItY7UrG6jm2ly88djAf4Ha4iWVDrKQf4qdlCeBl9eg1ppS+Pv
	 jT1hldrKnsqDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1B8CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204719369.1912.12075678147817882946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e56acfba2d7675898baa661311041c0cf6f4d8995aca39de30313b0264d882
Date: Sun, 21 Jun 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782047193
