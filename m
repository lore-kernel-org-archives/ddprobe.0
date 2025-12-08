Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C37B67A
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765173174; cv=none; b=Vnw8EMQgiV55H2PSGC+w/efRIgRzAjc1KYNsTs+U2DmNemTRTjHWvilZUCH1rsx55qm0iFIKUw1FVYkI3R0sSjUvpBB0fY8AfmaHq9hUkU4/7Xq3EnKdsop/SmG2w5L6Iv+5yosrRLudAwQs054RP0Qa+PSG3VCdepZ5shtbG8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765173174; c=relaxed/simple;
	bh=BDlsbncQ5DgHJww/1rW9JgkVFyTeDcx0tyaDaPaUINQ=;
	h=To:Subject:From:Message-Id:Date; b=UX/DNjP6hhbiIQYg3npduB+Zz6mAAD9RfAcCc18631LpvUQU+9jfFb+4P4QGa2oivMDmYzDc/nEZ89SLIhWMHpr2L4E+/tw6KHaoT36OA+cG2JYcqk+4e8kOExH2vg4SckVLIL4LQM/LRS7u26XDe0mY7U7DavKGylhMTC1fO6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLtrSS1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLtrSS1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A385AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765173173;
	bh=BDlsbncQ5DgHJww/1rW9JgkVFyTeDcx0tyaDaPaUINQ=;
	h=To:Subject:From:Date:From;
	b=eLtrSS1mQSGfDifUn/r6lUu8qlSPsPhJBuKmnBolWg2rd6U9kRGOhoRpYezJrqLPY
	 R91YupQWuwxG9yX7lszTVTp1Sw/xIuG/cT4arVtFxLRdvjTIdxbyQCkHnizz7tJ9Pt
	 BeIQC0v5MeFUE59iv0iftBEzjYKvFvlMpjDNdVURkqkEHhWBN5hJimMLPtQ55UDbAb
	 BrEKwGoDCYyDl/AqPmZoM90MS+mWekWkg32J2qUK7z+v2xLv6hP6IDerK5dc0+LwxQ
	 nvUGH+mvNWnGHceLodgUEOfxoWh4H1SN9dsLz0C6A00I9QmlaQpavip9jyVsCSf/3E
	 HvWWKsR94nh2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C4D3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517317358.6625.9816837558386858086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48bd3cbf7407452e917836ae5af3bda03aa2e6617728308a54f80ba771c41551
Date: Mon, 08 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765173173
