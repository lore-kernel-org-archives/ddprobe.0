Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508EB4A21
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737303954; cv=none; b=I6wD7OFrFYEWELuirOZHfb5sKPIz1C7z4gKcpjf+yQZy2717uZvl57TGkrRJGHdj0DJzyuxQXIBvmSUMKaBUIId8r7pnNjsobXn7MG2Mq6270d0vjckkqyYe3zl1iKESQV00s7XOn6Pu14XDPctU5RPxWlNMvsfT6kmNy26CPSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737303954; c=relaxed/simple;
	bh=pkB9c7gYtRCVsJd4j6EN+pB5tHZhwp/jXZS+AVby+6k=;
	h=To:Subject:From:Message-Id:Date; b=lbpOBd7SefZZPQJWF5h/woe+u224MPIJLctwY169ypfYUFTemiijAcWW7h7HdggJmRz+qvTdoONULkY07Gfs+OOoJ9EmhTt5rehQxmSnjvBbfhwIgAwCXZXdjh9hhUbiMpveusBbXGObsELHwwMzxynk2AliVBhD7AK9QGyNPxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puY1Gxsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puY1Gxsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F06C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737303953;
	bh=pkB9c7gYtRCVsJd4j6EN+pB5tHZhwp/jXZS+AVby+6k=;
	h=To:Subject:From:Date:From;
	b=puY1GxscZQkdewCpANiTPaHKeMM/9ewRmNW6dPyqH3DmjtIkqjNmLwodS6U9woDjj
	 H8YShQDg8vKO8w9Q2jCQpo3+qQSZmAbaMyEzP3WI3SQG+r8sA1N2F9qcliatgEVujN
	 sLnj2c60lCwVDHkqYZ9pqTAUy/y7bygo4tqRldkdD+yNaSDZ1hIAkryVDsoJIg4X7y
	 QesVoRjc3NpEStrzHrjD/1lFp97eknjW2FZovpN7U1gFfJEaE/uh7hY2x7Fk5CpbUL
	 uq9pVlDk6uoJVcxChNjJRl1CUYnTgV34NFqNK4GsXEdD3fwHrmdGGOqdnw4rWA29fa
	 C09OWE0+fSVHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971F9C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173730395358.8739.10133580620547545994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2f54932f81877188a79ebe4a1ebbc11ac8330e8022c3777f20501791d1289f
Date: Sun, 19 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737303953
