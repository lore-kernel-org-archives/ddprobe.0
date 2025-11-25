Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6BD19EEC2
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764085973; cv=none; b=cb5OHE8wSmBGwI9hWN0tLji8w773IjZ8P0m75V2oxT/Me0Wy2d9ALv856intf/8ET6/1ZXkrSZDskK2jvfhbgEa8KnLWihb0wwvT5IfUuIZs5t94CabLyUxfP7Gzm8LgzXQ6t0f/o+5gzCvC4BeXmf0FFsDo6FqYigdVhQfsytk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764085973; c=relaxed/simple;
	bh=RMF8GE4cyJy4Jk1C7xyHwjoYS6DgTz7pGbOFhIPJ25Y=;
	h=To:Subject:From:Message-Id:Date; b=hEN+VAlO8xBOGNoJHoIK0Sw5T2qKAT3c9sz5e7oJILZY9KN+L33QnOStSx1S+C66h8nSTjpP38uH556pO+ckIvfL+mi1LJKfjBriQmNzeylY485wiGqoZZPXh+c3kbG398q3Zz9ofQpwEjxWbYDMt3vRPE+cXBsF/8wCV+GnVvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfYXIsVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfYXIsVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A267EC116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764085973;
	bh=RMF8GE4cyJy4Jk1C7xyHwjoYS6DgTz7pGbOFhIPJ25Y=;
	h=To:Subject:From:Date:From;
	b=CfYXIsVuYNjbWkW5VnQWaI6RIIAB0lnd7uah8slwo4xXVPj46uv8/sXAubblB7cAc
	 vQBCl0vJXAbAERzXBTN0mH4c+IDUbbMKMUaYEjpykJSd+mPcpMXGnNBmtKa6/9Y2sT
	 WJl3N3WZAhcX2fzL0w/THbrGLkZKuhJIzCuY9QF37vxwnkmqNrIC5bEzCltYxNAK0K
	 d7td7hLHHbAa2O9yDblJvgl1lwMYZ7tOBzFxp4576KHVGFS0rVAdM3afE196OUiifX
	 P42uvUti3S8dA5ddezTP/nZrER7zQQ2V8t9UHbCZbrIX0pgcCIJxSVlJpfDaPz7H/2
	 APVeSUrF02qpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922EDD0E6F5
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408597359.7924.15268153943098355742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04f9cf8a509c2d141f9545d1c0da0c0343ef78f892036082979a09788eb3213
Date: Tue, 25 Nov 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764085973
