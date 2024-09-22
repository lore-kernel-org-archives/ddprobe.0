Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F8918EFDD
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726966554; cv=none; b=B4aFfjNW2pr/ASavl57qKjjzRViIZR1ERWauFq5SXP723KW7RYNf33I9CbeaPA2odcmf/AyTFqIS1DvOTI6YEnNspfCGC/y2T2HK+P/rvH7LfnQLVQaUW9QGP5uoFE1AAa8wsEvIOhR0hGAP/maQ+2XUG3BdJRCohH1LpF36XJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726966554; c=relaxed/simple;
	bh=ruNv/5TZ9pvwpR3voBkoytXxhqF13JpDpcRx3uaGnAA=;
	h=To:Subject:From:Message-Id:Date; b=hlW564mzOFAx+15Qmyx5CpfzhxcpRttdFycbULjiIOpbuH0NMQbVBDk89HxUoWQi0Lwygjjl1OmCS5WBzh2HpyJyfXHkRcRpsAAkhsvuBnP1cW7aC/5TNtpd6RYG/va+WteVG2lI/yoYCRcBLqQr72BgeNGNrle7ECHVYnC87l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUGANfq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUGANfq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB52C4CEC2
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726966553;
	bh=ruNv/5TZ9pvwpR3voBkoytXxhqF13JpDpcRx3uaGnAA=;
	h=To:Subject:From:Date:From;
	b=IUGANfq99uf0/cb4VnUg/FV87P8YO/DvivMokDz6LbMkp9Dc9jfS9kOE4F7qtpnqc
	 DQbRlP8SyvsPhHa3/GhGDfIUfu2ZPssm6rU2LhKVoGApxdZLkeJSh10EcConxMh5/1
	 HDfpESYdNyBQ01bpzSeJOWJGGKW2TiQmR4mXrpQcdWNbWE0iJEm4ja6tUun8+3ZIAV
	 00xbopTVdxNHZVJ7bLcfwmXNImerykk+JN71jdUpOqaef2aQgbG/iNCd1Wxem5MFE9
	 lrarzhM8Ze56WDnV/Wvo/ZMaasjEl8zgxcQqmaGsYVjpSCTfA6L5lPsPg9GThN9egE
	 +JDzPcQTMpAbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95262CF9C6B
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172696655360.22063.11986947805764545246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9fd84d2b2390ae7aae53fb04c8b24264b8f0fc925d4b4fd03431863ab0fa47
Date: Sun, 22 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726966553
