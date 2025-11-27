Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C1F286A7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764225174; cv=none; b=BsCHYLF/H41qM1GlEi6RnGRSMMgzKOGLH8XLF2GWWDi+8YbrCl7UnL+BjAUCinGfEVm5/wXxcbe2zhtDq4tiCTmVy86mgxj03nS5yKMGy5LbsGuxbXTh34kOENcVa1ERaJuOXEWLfheKTauC8aTmrwXE7mqQ3hDFjC8PklHcoyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764225174; c=relaxed/simple;
	bh=mrvv8S4J0QjwjKGqsjgzSgzRr5J9qMrwqKmeaK5w0Qw=;
	h=To:Subject:From:Message-Id:Date; b=qbg9xNKWBeZeZgb3PTavFrK9AGeg2Yca8EyXWnz0DNYTxhc709I5Tk7EqxB/fxOwJ4kFzkfN1rj4OkV+VRrk+7muhJmdEi5ZQipf/cXCqXn9WORC8x6lAezZKCBa0RYx4tl4Ponp6936JtqcbbWDu5jh2jZUzmDmBIiFF5whclE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvQmoBa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvQmoBa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A288BC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764225173;
	bh=mrvv8S4J0QjwjKGqsjgzSgzRr5J9qMrwqKmeaK5w0Qw=;
	h=To:Subject:From:Date:From;
	b=MvQmoBa/9Qt80RUJEHID4szbQ6paTDRlGamOQrY7/Hyu5yRaVt+GtVV734zooFlhv
	 /o09sD3E1+99Tyg7xC+M/gKfYxzBCJ157oisYLQmCWSJewEzzTvvZAw+izkhq3jUbJ
	 rhX+Olg+dDLFem4UEFVPDDxCIkF6eVNJgRl7XzE88GqMmDGJb70IN+ZhcmhEeIf6qj
	 mnpCTVYVT+v96xpMFlhc+ZhM48EBLagkX7Ku80FVcfGaWTo99WiDq2wSXre4kJIGAj
	 cQlfh+WE5oIvC2eJ+il3rUkwLrwP9j/pVHlomaZwlQOBOa21y5kboZjJr0F1fINgE5
	 L+/6dqug0kxNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D12D10375
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422517358.13770.10609674624712395945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbcc6f8012cd3087cb0a7bf96ae2672ec4da78bc6c869fff56bfe965c5ab20d4
Date: Thu, 27 Nov 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764225173
