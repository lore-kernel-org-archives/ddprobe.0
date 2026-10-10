Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A84437C0FC
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791641434; cv=none; b=NFafK3gdu0wZ8Xv5VIn3oAzhnLwQLDv2PGTl3hfNnTdy+nc8ltwq90l7HkA+6GFYE4isXelgH1XU6u/h2fMqPQKiB3lZTPA/obObThre/7fnbhg1NILSnhtap5iVbXM8gXK7cFgyZgBk0x1GIsmZXKQmVaNVIren+yOrJkNFydY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791641434; c=relaxed/simple;
	bh=B13Ag5BUw0HiiX/MZa9124fo6aGX0w5ZifTjoyuqeX4=;
	h=To:Subject:From:Message-Id:Date; b=jPbMuEnnHCcBmef2AfLiJhJNrYGW2X3NDg7PMsdd89Xr+z4ESdUWeoZjXEu7iRhX67zhLACRohq8NlTNoag+i6YQrJLoCzrS0aTmfB1GhSqV2BEgEsZXGlhgBXKtHh/uWZN7BQu9GQUjJX++nisWhL+YUwY9slMv4a++tihARco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OigYmHcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OigYmHcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10A4C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791641433;
	bh=B13Ag5BUw0HiiX/MZa9124fo6aGX0w5ZifTjoyuqeX4=;
	h=To:Subject:From:Date:From;
	b=OigYmHcEIBUI/mn0d/4U/6gn5YmjQ7JKsyX2c7XifZejjtFMu2v+ZyCUdLtcoe7GH
	 VCbYygE59j6BWFW4kUeG2IkreZbqi8UuLCYKVs5dPWLJIfHLxu1l8A+Zdxzgo6b0KD
	 zKN8uAaG5m2ryh5M6p/G4zQSDT1/qaZz65MJd5uAldH6adK97+UWoAPrP9P+TLqw40
	 k3JD+N7K7KJos6LlN8DtpyJ2FVJaAbKIzzAn169UkYupBi5jejMygMnsHKGsLFhp7U
	 xvq9cu3/1I1f5anepYr8JW8IYqyriTtEAgyQbxquybm4/ydYTvdwsrmNikNa3lL7b/
	 LMZ8VfTCRYl4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC16BCA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164143368.30751.1179760786297513820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e340b44e382286d3ab0b918c41023f4398495cceb0e6338f777aa344ae004a
Date: Sat, 10 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791641433
