Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF1179EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717826843; cv=none; b=FSekAuxn5OTryAcIm48mRcnJgh0LQ0GgMIcRNgk+b5JMdwJhcWm+ZiiokubV3gfJoTwgRiFBwOBi8mWjIsNVMVHOr9Q/bobR2XkqFICPPs64+ySHqJ1agrkSrEvL097dqLO7pq+2+SgVocObVimYwbNUBtwYcN9YpA8c1XKyRMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717826843; c=relaxed/simple;
	bh=abtZ2QhzlrApy5zd4RacoDb0To/5RvZBRqR2al6e5jY=;
	h=To:Subject:From:Message-Id:Date; b=Gx/Y5CuObwsNlrICvvxW8SQ1/0pu5oTjrHeklBXLKzYDLO4j2N1zsd5NONx5RmDUZmfyCYFygoO3YsVzNyeciecNtBgdBUKcZCxeKOxQ/prAFTuNOvjaf+4YsRL2a3g80BJkB8q+FQt59Ve03MoGdrE+DdaKdyD7Enyk2wY69vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huW1ug3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huW1ug3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F400EC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717826843;
	bh=abtZ2QhzlrApy5zd4RacoDb0To/5RvZBRqR2al6e5jY=;
	h=To:Subject:From:Date:From;
	b=huW1ug3J1EqjmFm5JW8aT3yX84Ibaj5JvKhx0Eob4ryi3PCEoKQb67zRqPcmyyMUj
	 ZTcKIYrXm0HMfgpmxymnf7i4oEFtEyl7E0OSUeaDFhI6yygsW9gbduBjFW6cSgblQi
	 aiv7At237SkheejUYBGiFnDm2Uc2T85GGSnBL60sdqY2Er5xX8JItaRT5ioXBhJLFJ
	 YFmVBb0YgT0nEmtVon6xRsOXzjC9LhmAIyjWWtwM16R0tZEj1So2Qola/S66dVzlCJ
	 fqEhGkULS8d9Nes1HIwbL9OiS2OBAhyqgaU2XkGQZjRjZjFxyGuEYEkkE+Rc2V8iSu
	 PJr+2hxp4uefw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D74F4C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782684285.24646.10015841399140510364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d019b5d1859c5e6611e0c27039c54681a0dd7474cab6ccb5f5ea044d3e877b40
Date: Sat, 08 Jun 2024 06:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717826842
