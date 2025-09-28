Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C651547F2
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759063794; cv=none; b=rckAb0UtCbYBoC0Vf4s7N5CrrPFGseW9byZV1WoqZHiKRNkLco4bXI/xsCQo539eBfbcfVH3YWe78iuMQkX0cspeTlVXyEAT/3nni/lWlcLh9LHi2MPUD2W6PBv04h8OaRuH+k3AULXRIekj8BPTJiaj2L6U4zqJYE84oljAAEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759063794; c=relaxed/simple;
	bh=iFNJbpZI19EL4fZ9hVl45+Q4X7CX3oxwqyGiw3NXeFc=;
	h=To:Subject:From:Message-Id:Date; b=RBQyF6Q5BjU6UEVEk8GZDCWGJTnZSKNHlqr2B0S+yjEwlaMhQMsG/sXO5s5v4oELycOOAtjS+KhNGKKopqp7WgCjTZgexi/902v/gvDTKKYLQ8dPyFHyFY82zbhjs6KiBBih43Dhf6y41492ybuRVt/E2b3DK5bxDjFmzuzJDtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgcSXBQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgcSXBQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A950AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759063793;
	bh=iFNJbpZI19EL4fZ9hVl45+Q4X7CX3oxwqyGiw3NXeFc=;
	h=To:Subject:From:Date:From;
	b=BgcSXBQ17a0PaHK3CtEYn/Mq4pNKya+S6wfL111ciMTHFOFfMjl7RcVfAKkdwIBGd
	 VUBlvdTSML6uCtFNsPOx6SZH0UhDFPU5RY7OtNU91KEQcQ+862IdJ9f1nizL0z8gFQ
	 FwfIlTr/R7+j0GKqnC5+8MifTvbgphTRVKptwdJoFxbYN3NsoFU8NQxiinug6HxUsA
	 hs0tt/ssBRC0896fhVGiWTbEc1qtzHyvC0CfydKUnXJwI1+BvGd2pMpWYXQRqrjn5x
	 EleEtLJiipcSVnzHk3afK3DEGKByh7X78zNGpgjW3ConMUT77Ba6A+AKaZCYMyMhMi
	 5uQIuD507PhsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E7DCAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906379359.1126.17365146704406650276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b53b1a41e67f9fe6e3ef5067c173c5b6a082680b551976a3786af7bbb98ffe8d
Date: Sun, 28 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759063793
