Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA169169397
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731654354; cv=none; b=SCyKKU/XrLHVBTINvZW4h1ZBpQTgmruMp6gTS8jReo7DJ82GB5y/1cikb5J536ALSBi0xFnfsxOsfhQt9AcdjUjLg5jiAK99NDOkoG3AMt4pbPiwZJ3//4nVT6Mrvep9UjecBwL3oJFQnARyIeASSvb2oXk2i3aGoSX5KKUttYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731654354; c=relaxed/simple;
	bh=XC4lYmpgy9zd97Sv6Pi1xMVvxKdeoNBGFGBTSxFyLS8=;
	h=To:Subject:From:Message-Id:Date; b=rJVwSt8Paq8jHVGnyEQcXFBocd2hVED3X+ognSFoOo2Vux7Nm5Lux82JB5u5wRPsYoamkKjIuRG+ME5xtu9+Ay8l/LH9c8ydyaVPe+9PaVY7Q/KOIYboSP0zT+q+AGJotyqJVNhzHRpossARP3U59AIgp+zy3yr6OhhVTni+zmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rg00A2vW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rg00A2vW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A672CC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731654353;
	bh=XC4lYmpgy9zd97Sv6Pi1xMVvxKdeoNBGFGBTSxFyLS8=;
	h=To:Subject:From:Date:From;
	b=Rg00A2vW8Aj6PtnHhp159lNgAczcDcwD5l5SFntOBWtu03uNCzgl1z8zmqmgeecQo
	 nCrPJsXF9oLFqndbKxFijuPG0KwIux/26hPlH45+vnh3C7SCFv6BzbObNh6p1ckdZZ
	 3w+GwCeXUTQvEa1JyzsfpG9V+/vPKH0RxkgHLkK2yv8mYZ1PvUnjDfsYi+4gZJDu1S
	 OkcwzEhBS0+AOs6DP4jx+eOwWIXDO3M6KMoJMvTGcLENA+5reaBxOCI0z8sv2R5ngj
	 WTMIB+OyPxJJ3Ky08uLtaJUArAnzvasZ/mtA9wrM8/sAHVIjJRoU6vNk7dI7hAWIHV
	 HIJMuCPtoryGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92464D6DDDA
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173165435359.27973.14202723630776852233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57c71a085abc7984a1cfad12811acd81e74f9d8609da534775bbde963c446df
Date: Fri, 15 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731654353
