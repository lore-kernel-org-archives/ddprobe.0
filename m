Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5050C440C
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742956194; cv=none; b=Vx22U5v/p3j+bQbW4BgWbghmqz9wvCijNQwwnjoJu0tIXD1SJhAC9gISnB1z+et5oCe+PxSjbr6+tMwA1RT/EQwxcwbmVOwT73tT/DTCl8VYNcJbvwI0rOAie+yyM15xvWNmVWh/thPcOhakJAMAhJstmddGraCZ9XN1Qwoa57k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742956194; c=relaxed/simple;
	bh=11haHOBvWjgbbsD74tyHaULqKvM5ayIQhtb7i4zJvcg=;
	h=To:Subject:From:Message-Id:Date; b=WBAgHGhOA2SPVViaYG9w+xPBqyVAQYDi3f9sEU4F6wOOJphWYFm2ZAg05A6eXsACMnXLEdyr0xjt0g5NLI0NJrEML7Z+nMGNEY1id0JrU73Xk6hiiR/olGyxuLkOr5G+Yr/rziu9y0c5nkosLDJwo269QkcwRZX5w/136VLwT54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3Lsx/nU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3Lsx/nU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66BAC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742956193;
	bh=11haHOBvWjgbbsD74tyHaULqKvM5ayIQhtb7i4zJvcg=;
	h=To:Subject:From:Date:From;
	b=j3Lsx/nUar6urbG8XTYylFRaNHGN0lEsZDt9AtOBF720yda8fYNXXL1AuDGDXrZMP
	 lsiytOxU81/Jw2m7uyACNT3RYMvPXAEndGGNM8PWo0N1TOFdV+negHriA+cY4CIHAP
	 ze9p1m4rB5ATWppi/k0gzQNXiPrnsFWgnkYXTtTLOW+Cpmr0WdfmG/aDzcfHJwM6/3
	 HUMQoLGrstOVfmIXjsbA7NjEpC7klt+uBK5eC38JE5GBdAsMzJCk2N1zHXUthOy7HG
	 idYzUeN7rbUFugmaav8QUGYTptyQrHOkKoF+P1nIljH1CnFKU+hJr7LtkUfWlUlmmS
	 MeojauouZZcHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9974CC36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295619359.5747.11950317599525436597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae660b56841069a193cfdff60179f578ffeedfe29821f1b333f5b94938fdf7bc
Date: Wed, 26 Mar 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742956193
