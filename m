Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B601684B4
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764841974; cv=none; b=gon1bZ13Xl+6IpycFbW4snteApAzLHbC/6GqkhtTnV96ESzr4DJvL91ZmVMuBtvLGgJd3yGyHKewmX3BKur9eljDcseOmnSp+dbgdb8PH+27jND49j9mM2Fqjr3Nr8rIGT2MQ/DYDHAm94RwEdkKzOlpPDv0igLLIKWpxSSX4mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764841974; c=relaxed/simple;
	bh=FMyX+MTOixSIxa/X+hltNL1kW2lXSRv7nG92YVWacpI=;
	h=To:Subject:From:Message-Id:Date; b=iiGswFZvMIFgbgkRzNsfyjQNitEtxBtSNscIkzIYHupNtEIiENmi04kb//G2T+7K6nLJdQj2jOI0bz3f7mndb6DzAvIOagKbnyBBJvLGNLB0EOyGlnYBRMmj5Pt/cHL1XKxNSuMLmLeQgPEg3tEwsotBhnYjKD6kwdAMuN85sMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhGFQvA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhGFQvA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A482BC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764841973;
	bh=FMyX+MTOixSIxa/X+hltNL1kW2lXSRv7nG92YVWacpI=;
	h=To:Subject:From:Date:From;
	b=jhGFQvA0tl9Ypk5UBHqsF3zBFdupMk3UCEGwT6WRiTaNcBW3mLvT6Tk2IzSOhZmKa
	 vBi9dU4MZJ3AbhyZiCmSV6JocpkpeaULeFqFIAF5DP+ujSrdeTj+Beu3hr1BYAFPuL
	 SxhzoxJviPPFQkF29uc7+Sojdbd2tQJ/Fo6ULSDIyb3uqVAYQz/plfR0aycljI0zr+
	 tHf8nlAnhmiT+ZDV6MATytQfIDxB3kpAaPEctpt1FsL0EVIQqj0bP1Nq3JZzF8g9DY
	 zF+EIw4v7edJOXI6rX/3zQbDq41BkTRL8fPPZO5SJs6PsYAKQ0uKx7UmDqsk+fLpTk
	 ikLdc8VB4XdtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E06D1F9A1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484197359.30222.8020820732184285207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17e339986738c7e9bd0f029ab38fd174331df6545c581e847c79296e9ff85e1
Date: Thu, 04 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764841973
