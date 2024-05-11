Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F64E6AB8
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715389343; cv=none; b=SSkDeKK3dP1XmyR8ETdiJuQ4zhkxpk+YswitOU7dEV2JA21NlP7pHsS8hGc5tTbqzU5tZILQQ4UxoH0lcx274zVvuNYlE9cTUuxBi7PBPNYraQYhjJtGYgnsSmG0rl9UMG8Ospy7gGoy+pe7SJQ06HZlSvaSh7ksLhffQMH7msU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715389343; c=relaxed/simple;
	bh=xOsczFoB4EYrylu1XD6RDmyUH5vrvkoXG5RHQJAAPfo=;
	h=To:Subject:From:Message-Id:Date; b=XAoqEtr4f80j9WIxxsj9ved0HKqkbjKxjzKCYhEMXBLdcjCd/MBWFbGs7otQkVLJuO4DSoHFl0ihXWrkxAoj4hme+fy4w11yBgGyShgq9E+/JusmM15Tj6uQyLOwSes2RI5dhfVE0BmrV7f5loDbcNJiIQXXXGXPfH+gLhoM7gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDubDIyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDubDIyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E99A4C113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715389343;
	bh=xOsczFoB4EYrylu1XD6RDmyUH5vrvkoXG5RHQJAAPfo=;
	h=To:Subject:From:Date:From;
	b=pDubDIyFyKKV8+ejo6IlbFveB6zDmTUWKnuJfWROjfxwx1IGOnIm8++JlMSgDjg1d
	 ynXFj4KlVaUeTfu2TW14YyNJMk41huVFOPTgSpYSy8yBPX6GiUQssB/SuOIfVIo3ac
	 HoRVXXEmHGvUycwk/++zBPCi/SBZE4gOA8JZbmuXEQNb0tNRhmYlaussxTaV0c6cn7
	 mQCyjySB34zUwsgp12cmQq0VxS6SIV0DM+x0M1ZL56fUSbpNLQcy5OwNtZqwjxY+dY
	 fox1O51hKeqUacgvHAh9JKnttxaG4qnE0MDFS75iWk+lxnFpnplCQqGL8Sla103/Qv
	 GaPjfmRZ7fd7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E64C25B10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171538934279.12327.15677923873902542695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b9cd138888b37f440ace692007a117e2c3601c87965b21005a12806b89d826
Date: Sat, 11 May 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715389342
