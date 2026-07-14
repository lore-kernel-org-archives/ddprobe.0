Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCCD41DDE1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784057314; cv=none; b=Igi0OgO3nN61l9sLyO8P6wpgM6tYjb6pIqQ9SxIhJyQ3KCZVha7WEA3jj+nAhh86GjSZWFKUh8/CczTMp0tudIKEOSoSShAebltkMdwnebvpAQptelcFNTYt/doOX3FUE+qcPHNZxP8WxfAzBPtUw+kSBRyOnSeNPibDeGhrqBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784057314; c=relaxed/simple;
	bh=IMa2HRDoUjYFBqmJP3GWvxG0eIDDRPtI7NqrEXSUvcQ=;
	h=To:Subject:From:Message-Id:Date; b=P6Fj/zLfWKwJi6Bd53gPMOC32lAAsRLytz1YTW1r2+FJBS7FzIfAg8lmxlAicnqWeo2gNuKdG6lb8l/71bQ25nFOmevOl/IUBcgJ2kcTdy2OxhoFlquggrO3Cxaqkse63MBj/Aygyq5pD6AkMxcEmv3hursoZ0UtdK8GiLspuig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJtDtB35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJtDtB35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECF67C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784057314;
	bh=IMa2HRDoUjYFBqmJP3GWvxG0eIDDRPtI7NqrEXSUvcQ=;
	h=To:Subject:From:Date:From;
	b=iJtDtB35lwXqNHw7ymLYuvADy/GWpRLF7qjw31x1WstPWNWU+Aen5R24de2EZGJ7M
	 ln7ZJGpsniiUfLT9ud1nQqSdI/5QUMNPFTYiLDQR51oiBa3radMq6B65ihoO/n32rp
	 9z+Rq7S8fGr3DDEu/yHcfJZSRWNv8fdhex74qlP/b04hIUVhzXItNYeLKDSFR8p0Jh
	 V4B6tQd/AK4+3wLmQJaQOJ16AbVwD0WHuA3lvbTrOYd13kSsVGswlu+HK4MfENp/IM
	 wgpePZmLbAprRHSv9/AW7VUwMao2joaw5K3MsFIuS4lfxdgAPiB6NZFavKwHntQpAX
	 l75xe6Dwtif7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEB6C4450F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405731376.16605.16231169263417785707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d38f4a31a9cd4df6bde93fce53e06e3c4781dcf11d93c730d4fca1ae0d103af
Date: Tue, 14 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784057313
