Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F911C5490
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733514354; cv=none; b=PKVAOaMgsfnnRhqvFMmYLPBK4Cd5CcO+htPyfOyr6eBdwhUdvKCdcEEYUcrJqTYwPmU8M2TBN7EPk7qS70dbD2MN76uoCEWfPWz95TzKcIACNca7T9CbHFeFdcKrgeQUacbYOGLq3wt1OFsug68Lex/V989VBhR6/Mal1TPy7M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733514354; c=relaxed/simple;
	bh=JQpeCj46EaevHC9U6k15lPNMjH/H5G6Zk/RTcaJ57hc=;
	h=To:Subject:From:Message-Id:Date; b=hi17eflyIq+S+SWx8HItSlhHh0HQnra+FIv6VwYb+1ajZwwmNQdr0wuQSLMVj/FXupdPtA0N0UlVPBroxzZ/nSagODM0N9AYdv4W9spwvjTtmM6sMqyOfTllRbjurMNbWULIdjcYfjgeKowSJ0zguJYWy7herVn5S4cr9Qj1+4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CV8u7mCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CV8u7mCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46ECC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733514353;
	bh=JQpeCj46EaevHC9U6k15lPNMjH/H5G6Zk/RTcaJ57hc=;
	h=To:Subject:From:Date:From;
	b=CV8u7mCvAS9qBlx7+gaCSVZFm4QZ3uDpE+LnQUPwkV2X943VaPmZrKrQjvd2khPMh
	 TFWClT1z03ynly9sB43u/bYoFpGryYvihmLOxGvXdEE465IAsf6YJPixTT5pLgSHAG
	 PKL4JiXOBGieZKlvD3D3dpNjOfJy5gUsyeA9+L7ElTZ9vUOWahwPkqu5CQZO0z7WNd
	 JuByW572a1qfxdEcUiDk5yUwLOvbiTx+WTEM77kBAVY0494akSO/urKDpFnw1X7RM0
	 Z7+mUY3dBEa0Kfx7qgHDmA4Owp98COapknn4Br5aku0AeDI2BgMvTIUOsVw7Tpl2xu
	 BOZUQXzI/Cv/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF6FE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173351435362.15271.17636629898149748675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10e515741e64792747687c319ca2ab811d91e59470da2ea96f9a713dac29bc2
Date: Fri, 06 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733514353
