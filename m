Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC6C29D26E
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771208094; cv=none; b=MMqQ3m+APoV322gzEkQ8bdf2Ad7+ReLVKcmgcVyUA2QaaRbz473l4Bd17qvgYqTUr6d0ITTQGAP4Pv8wYepXjVCUYws+Uxa15OTFoT390z6X50VL/taV/DQKYFXGZG6tzPb+vljnlrNwXs60Myo/+eJoy7TmJqfIsunmCMiwROo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771208094; c=relaxed/simple;
	bh=pcCEQ4aZdLp7diMFmzzcoBiMRSP0VI55WMbKw3UDAlw=;
	h=To:Subject:From:Message-Id:Date; b=Jps5KqEXOW9jk7NvCG7udtqg//rp3+2141E+DEngLtFLVjCDm3iLi9sLGRHHdj5lp8GE+baM8wxJz5jB8qx2TqcB/XEPk0NArvqHZhLDIVpz26nyWtrNUMvXFFBPgUHoEjgrnGtc/LrgJY7H2PKYt6oUOQxx/pfcEV2SzmslGOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlC+91kz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlC+91kz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42EFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771208093;
	bh=pcCEQ4aZdLp7diMFmzzcoBiMRSP0VI55WMbKw3UDAlw=;
	h=To:Subject:From:Date:From;
	b=ZlC+91kzz2Jd7VY1CZZgMoF9KhTjYJ/x5WFcQMfKKO8GFzfg1SRgmo/EUTkenVXce
	 7OWe2SWLTwu5LrH3JGdLE+RyvsT8A4sKN8FxrgYmiTs5yY7cfki6QbqjdpwC/VYMAO
	 KOw6/8GZM7xI06NDDl6wC/VtIfVEzqnLDiTrNpdDdiRcp9vSFlIYrY7yz5ZTfXHuTl
	 f0yGnxRQS8NFvbQuDQWDaRa9QWdXhYXS71AuXnJan68SJhlhyR/51HNwnwp51toW6I
	 JNVc5Nceevl92ApPaCSfBshuP/8KrAMSf3E31SNJdpSj5whhfiDBuDPhB5tJQveAy5
	 syd/HIHrJuBeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8731E63F0D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120809362.27034.16085150963227575189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146295566ca0c18f265f4881396fe47163fae60bb5d37dcca5f4942a0fe90b6a
Date: Mon, 16 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771208093
