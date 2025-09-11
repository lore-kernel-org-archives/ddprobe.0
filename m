Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168BF2E283A
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757579995; cv=none; b=LuhZwxy12pQohEB6zuTziWAf6QWeb1/1OxDmhOT2WWoNL/NEBa1K2nWFTXk5X2PSsYc3lAnexSrNc4iBhODKGyF3z57eLtjiuQuvHqawLm6w2qXAznPJp5DfYYfZsvQnIFYidnKZiqEOWmUgVHCrawn7xlXIfG0c/srIC29J0gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757579995; c=relaxed/simple;
	bh=b3XMfwZnfbWOT+iddTlajSue64voLrYvFRrcJZnQrew=;
	h=To:Subject:From:Message-Id:Date; b=B5J37uny4mMysWnTNmENJZQFe3/vA4ENYpgUgyYBH9Tz80QsxupfbvPlHMuYNJNLg7WmtfCyn5p96ZmxRcaSOhFVt4jEqhEi056ny4U2LdsvoZpMTI5bIYvf8IuSuDb7dMETBjWilFxJvbJk/om4qass6/E7/QV2hrUq++W6IZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S92G2zyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S92G2zyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9836EC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757579993;
	bh=b3XMfwZnfbWOT+iddTlajSue64voLrYvFRrcJZnQrew=;
	h=To:Subject:From:Date:From;
	b=S92G2zygaSDARiESQynEyrha3Qnlyaigf+ir6vHzyjCls18EXE7jBcyDnUU4OhIFK
	 07JLbvqq7YsTKTB2grML6xWTKL5hTMp75dFzBs3YXlqNAUJy/Gd7TbjIo5iGd8Txuw
	 PgOLjnPXa5XydPq+efUnkP94NpAUmxMEqJPQ19ueCH9pO52k6OaT+EIbn39BiWFhCb
	 j1g95J/XTIeUhpn1bxdFOHst09lyAM4jpif1s+b/GMJrzLwi0L63Bk6nLF0x8dK5/y
	 v0JtAWmS4FLh77mlU0DjQEsCf6kW1nbmWNcu81ADzewOcQFHmn8fG/6oFY96e9wf06
	 yt9bdR3+br6EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC94CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757999357.15358.7221628081504664150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7511f49bff51720dac30f1d814a436e3fc65e91079922be29e3880d29584fd6
Date: Thu, 11 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757579993
