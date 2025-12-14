Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B26F513
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765737174; cv=none; b=BDD9u9iRctjuDJAU0lLonn7XWwW5f/fPB1NYuT5JHfjaNaX+s9XuurxA4F8rHqslSYQbf3BfPZptF0oLzI4dFaVIf5+tKA7H/T2+SrDtf7sEcopB56i38SvzO8CgpHnrciY3O2VWvERHBHw0DWifEZksU1GxzVa3+KpiP0E5EhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765737174; c=relaxed/simple;
	bh=tu+RUEOqKUyd5S57LUMF0R57Rz++BQF8btmRqTmqRjQ=;
	h=To:Subject:From:Message-Id:Date; b=ASzHKtPyPNozJ41Z2BgO1KZmUVrjYOuAJPXs5u255EHkoQ7TZGdp0DGP5WTvrrwf8vi2Heroy2teIhn7ELBja6sGkuffzBbs/MFd5JhocZCQEvrW1VOtDGC6yUROmAlTbv05RQSnWYt//cD8DKGFKBsWaenKHYo/snKYjk4tv1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpsrzfiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpsrzfiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2B7C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765737173;
	bh=tu+RUEOqKUyd5S57LUMF0R57Rz++BQF8btmRqTmqRjQ=;
	h=To:Subject:From:Date:From;
	b=QpsrzfiUT/J5wWRF5CD3Cz4V+UnzicK5rZTCYjRbYWA/2tKko1sU7LBny/+YJu1lP
	 aS3JLQFJcDfGqu7sVxrpOy2+utQWhO51oiySh/eUWrTN1CSSyPitgvdTHsnFI7c41q
	 rHGBJ2MrFQ8c0+52tGJ2XgtE41CiY2OMrhhsWZ1Pkvbx9F7SLM8DlDopPz833/4SaE
	 /KyZTHEOacEQfxkBVagNYAj25prjg5Lcljw3LE0ZT9NaWDXrPl2nb+f/zTAY9Q5/xv
	 5p9fLEuV31vn1eaVEJeQpglTe19HCIktnZ1wWJIMyZb9JEry0IpIZZmXffKi+c4cSr
	 A9GjXKv5EgfdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93212D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573717358.16113.11770872437522514436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f79a34b83c6edd9c6b09271a6afa1c636912f08522955a9e607abb7b2b9ca9a
Date: Sun, 14 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765737173
