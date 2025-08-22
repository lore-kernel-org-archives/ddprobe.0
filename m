Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5D421858D
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755882594; cv=none; b=a2hYGZns+fPiYDZKQBUTU6FWmJ/JqTuGVdPfL6H+FSoHIt9GjZccV21G6lXzSAZuExW9bLp7j29zFqD83D5VPY69WmvF9qZPg+5YtakOCoXQhvHi6QNLL+CYLYyovfmh6JTyDriL/iRV4Ell/ww6GJbsYvju31BzhbB4S73GJG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755882594; c=relaxed/simple;
	bh=B8XvnUiw6x5SdcqOOTgQ7uH35npUIWLAk9gK53AuTSk=;
	h=To:Subject:From:Message-Id:Date; b=SGKN6IrLHSb0VZ8hIHYK1fwthA7PF+o7wgKDTGCJc0DbW/REaLHHAYHqRd2LAnW/cR+wCy6ylHRhpL8j0k5g/aW/ths9lDyycMSXcNUn4RYDf8lCUr4bRI3fac3tWxcI5aLbwP88ZYXr+2agAAZexCo4BuXDCIgfIyN73+d7O64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6VkmCTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6VkmCTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9DDC116C6
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755882593;
	bh=B8XvnUiw6x5SdcqOOTgQ7uH35npUIWLAk9gK53AuTSk=;
	h=To:Subject:From:Date:From;
	b=t6VkmCTaZPEA14GXPUZ4X1tCqjaXrPOnG/z5a5/6u3U5GLYByYReReMFSDelhcrAa
	 G4wiQ6mpxYD4Al0hi0WuzU1GTEbB6KE9N52OPcOhSDYrqI3WvonHsYyylj6Scwu7gz
	 syFURr9GFW6cbUh6T0RvFZIXZn6r//Tb0nI7BPu3U+lFOsGWS63AuR5uVwTqRz0RWC
	 Cad2ejcSpTo9d9dRDWdlPQgTkyO37wcCMhSRjLKZAzJq/XSuOqwfGcS4QwZyilmc/t
	 ul7T4uaeUN4saf7TLqWYv75/eu+uo9TJ59ZtM7C2x/zrMvz6K+3MehbECntQf0R/lt
	 /dwYUAd/VnnxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC2CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588259357.20701.3159523608062873080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb0e505d19db684caf9c5c4a97b2bc896fde84e2fc2f3ce1e4d197244316752
Date: Fri, 22 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755882593
