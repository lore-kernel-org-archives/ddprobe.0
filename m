Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117633EBF31
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769259234; cv=none; b=tit7MzqUNV9LrkkSdq7tJmFK7XZ+jYdvUfiYXK5acajkkkuoVEC034ewnXa62NyLadtI/cPuPerlEuhZ4KEOhg1QXnK7jMcK7ndVDsYtoo8L8cyYl+tSvtboNAmtNd5gdS3uNaBnFA2xF0POxQEWpp2BltEndp8NkApbR9Ehk6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769259234; c=relaxed/simple;
	bh=eX7cbN4auRG0rC6lFJPb5xfD3tuk3p7okCU2tOvulQ0=;
	h=To:Subject:From:Message-Id:Date; b=Uusn8HvyhHouFJGzR+afs2mqzPa6r73bE175tGVr59Jwz/dks3HAsY2tNkkw5pvP7Yq1Wu0ui+TBp18274EvqcgeRv4AsPcScQ9+hTpVd8+1TSR+D7vVu+hTxEWtGiP5mBGOrYEa8dWgewIvsZbhqmNYyKIl1Ugcy+GPTz5jA6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GezPILbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GezPILbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0729C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769259233;
	bh=eX7cbN4auRG0rC6lFJPb5xfD3tuk3p7okCU2tOvulQ0=;
	h=To:Subject:From:Date:From;
	b=GezPILbeE1OoLtXKIq+W0N+9s4A26psNlU9jxl/VVCOQS3BRZDSe7zITwZyHHHJTA
	 ZG5L9CV0U9I17Zdb3pNLRRh7B+iEbXoLN9CIeltEX12VZvr4dK/q4M9zhVJ8mkrOMV
	 +yrrywd7rcxsYNmdDCPGBXKyo3jmZMvrGigSmWN7tz1IReSznKqxU2pJekrbPsFDtp
	 dYeKjKb/0dKQRYVmSNg6jwa+rP7YSeMtFKm4rGYoNg6GCE0LcYWomupGyvIlCBriZg
	 HmSMlyPJwrMXsa4DE2A6KmUTo0dH2Frw2EQkMKTOytiaycm8e2JY+e5er3dbFS4Wid
	 Gti3o7yBqN9Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F9D715E5
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925923358.29024.6741613572155898603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6b9980aa717366da395b9a998667f9d4f45112ddbbc98edf6a20491fee06ff
Date: Sat, 24 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769259233
