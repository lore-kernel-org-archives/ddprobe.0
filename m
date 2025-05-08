Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4902920299E
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746677394; cv=none; b=JxSQY4k/e8Fn4jR9Hn0vZRt8HamAyxdWdI+lSj3aGAZR87nuGWMhInbrgeWigDqwJs22VOK4AODTms/dycWdVrM4i1MZ2XVVWTLSy2Kv6EFm7fq60z4OUgk2OuQlVVks4DjdjqQqWcFNKkX5qILYrXMSMm0cOyn1BQBoMtt6mdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746677394; c=relaxed/simple;
	bh=dTQ/UiGAAtvfzKSEDEhkq9ubNkCWbrfkD1vo4rHMQVU=;
	h=To:Subject:From:Message-Id:Date; b=MqqEHU5vJxTLbyLx15BcDAZH3kj42SlERJ9UDLpnCTshBq1bdWf171DR/07vK8R7vLVSYKA/HKjkWYdJAsqS55JPcdSTdeBj2XIjpkXGUXUqWFi/a9d2uHidaWmHN5muz/8TDKgZmpptdnzm94hmOBHpiTQYfc0tIyV0aBcvGXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhRpgLK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhRpgLK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBF6C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746677393;
	bh=dTQ/UiGAAtvfzKSEDEhkq9ubNkCWbrfkD1vo4rHMQVU=;
	h=To:Subject:From:Date:From;
	b=hhRpgLK4Mr54ecugFt/KM4rhj3SiL/IquZBOsH4lArxtYYGMOk3YKnU1jvzYOF5yR
	 H338xdZMTReGboPiu5+KoA8PTeP2F2J/EsVJqxMBET2dn1I2vVeHlBN/QTCZ5yVCX6
	 jquzdLaoukmN4ibZ8mJ7D5D4jd11zfBbVjZ+tTYUmOo+e76lsqPCDhoe5IBrORWQIY
	 vvonsUmsD0eu/5EF5hYeJ234DeZknpAHYf65Qe/IqsFvCz1ezzXNmJLzwIOvwh+VNC
	 v5lbMOmEPB7/CeIxfH+IDX/E3k6DCn6lVLVUPkWu9GYPzqGTzL6wDs06uIUq+J0Vqw
	 gVtJkodcuyRKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F844C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667739357.6500.9362722702160344731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e11a6f7082a781f0c24f12afb468801659741d99b93b11daecad85ce72c233
Date: Thu, 08 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746677393
