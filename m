Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDE718DF73
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740407934; cv=none; b=d5bB3OexMTsoUwGf60BRx0lZViulMTq50Ce4ttLP+ZQESG2lq+5b4AFSugNdnPWum3hjouj1dNtiVjnDAHj1Zip9IlQbe3l7/w6pkxnIqopJtbKOWz289bsT4p9WwkKHyBhjMCpdpMVaAioMDlPAmiStHnZ03pBdPlMgOaxCwd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740407934; c=relaxed/simple;
	bh=8X9OXJP35CmcM3t2AS2Zv4YTzsMPfH2KfhX5GdYASQc=;
	h=To:Subject:From:Message-Id:Date; b=oH6pNDXgvTciW+Ivbhtxi6h6TqWOyuFhO0RoclbyXZtK8BBP6+qFEF66QMtyNOAE1xem1Prf+NtNpJ9ft6Gp2ZotwRvp0d5onwlAyUq51YFKXh1RiKuKfEayUEFssK/rOmrWgfSgunzb/Oky4UsCP4WV9uGyD2oHka6K4mNC+YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aK+R2tTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aK+R2tTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1DFC4CEE8
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740407933;
	bh=8X9OXJP35CmcM3t2AS2Zv4YTzsMPfH2KfhX5GdYASQc=;
	h=To:Subject:From:Date:From;
	b=aK+R2tTlMK5+UaQ9uiJTRTn9k27H3gjjXPAw3qqYkEPBctL0seowX30QJgzH4iGda
	 Stv+IU7rFTGf53l136FyjG7TGNu6SaMmS4VgYYGEzdyd5MV3eegSJxO4+xuz2Z/Dfh
	 ogkll3HMt2Ez6rmD2fA5kqi/ApfqSdlCRB5aIe0sOMEUaMlDM7eRc0CJU4r91SqWdh
	 YEQ8W7FlmEKqfOLbSV/CbHMexdukAeJDh592Nni+z9hEGfPI0ru0cDv/sOND4jYVbw
	 l2VBQArWIEOmCB+TXU3v8lA7HB5kXk9k0XgE5XYEUcD5uGAS5f6duxh/h0hKVudS1v
	 0gaZWU59ET3wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96647C021A4
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174040793360.14808.2152522181196217065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a12c732568dea43d18a4231f1a33dd0bd415428022e327fc87b91c1ab2cc35
Date: Mon, 24 Feb 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740407933
