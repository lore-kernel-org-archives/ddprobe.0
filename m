Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EF4156F45
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786863634; cv=none; b=etDvogS2XuignKcpXpP5jtD2YPbhlsEagmkiG/irospLZry+JExsMFLkZbj31Cwo1pQpf12vWr6i/jBinHtNcIjUala2nWHW8JDeHI8CFwFyH55P7DxGwlyZp16ZzOlBIy99iId/iXD0JRNNTfNnX3h4Ky1zOn5QiS+QiU4FnQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786863634; c=relaxed/simple;
	bh=LuiarhrytPYNwZK39KNYHgJZ9W43WONQF9PwODN8VDY=;
	h=To:Subject:From:Message-Id:Date; b=hlljJq9crx1eo052u2cWG7nH0tOyS4D8aZrqgrB6SVjUEbKSzNOsEE5P2Mo5phP45TsZFwHrCRrNnFVLoCg6O1md0frK3MlsLuZOBqsLyFscMH09ipnhdSY0FBTV3RuG6+ors/ME2lv/oEj5sldPbD5wCLJNR/edfWdRSgWLYpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSeyur1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSeyur1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEE5C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786863633;
	bh=LuiarhrytPYNwZK39KNYHgJZ9W43WONQF9PwODN8VDY=;
	h=To:Subject:From:Date:From;
	b=jSeyur1ruSXWtNmBeCo3ADNl2wtM2jIya4+yjy9PmelBTICCscUF+Z1Dj3DVY41/C
	 65OJsgAbre9rykr3C6/Djelbel2D1n0PJ/cbVSbnN4JpnhenZZVbXvPQ1GtPd8tsc+
	 tBaGtcRn/VvHo0Ixgv+kGlYs/WSYhPkRgkuOX2O/DaF5k2JlrLdRA2pe6yjZOF8BMU
	 BuItWaPugUGGEVfmqKgMgJGCZQRDt1ojrNs5mU38aEyVZmS/VBViwfM5g/yLiSsMYz
	 QoI/adtlM9glJCBvvcKnMCsVQZ+13G/r0g/qRPX/Frtx8++l4u3CpgnSckTKN7OscP
	 uKDBg8Wau2VhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE50BC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686363368.28801.11730134253474759618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072e017349dfb8a7bfcfcc4a2f6bbc04629155983bb17f577531950a01c17499
Date: Sun, 16 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786863633
