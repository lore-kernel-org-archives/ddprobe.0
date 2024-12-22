Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A307485
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734831954; cv=none; b=T12bL5nvgkFuXYHqnkXUx562ci/ubNSwWEbqKXMHDeb2Dgjs7uFZB2SvlXM5IcZavSVt8yD64uHB7MTvcneVbFbY20fPrKIUbIdeCi1GH6C7lZjLSeizfqjrT7mLN/tfeudr+g0++v3tDQYIb3GZzhPBTnlESjmNBVE5x81UWUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734831954; c=relaxed/simple;
	bh=VX3MCdNqKUWAV3tbHAspsl6r6uVWxQpLf85RK9yGYk8=;
	h=To:Subject:From:Message-Id:Date; b=W2pYF240zyzaIbxTWdkR/I0OvXSnW6zIRBXRo83taDycCm9OQapx1NM7jHOeDma9+6ZjXjItLNlRPmd0T1QZfjM9ul8B2JV3ZqA+m1U7qZy2lKPa8aZDmTAbzPKAXfb+4ZAwqBzLRAb5ld6leMC5eC+5n4Aub64dYpsEYzyPKo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8ZvYIrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8ZvYIrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43C1C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734831953;
	bh=VX3MCdNqKUWAV3tbHAspsl6r6uVWxQpLf85RK9yGYk8=;
	h=To:Subject:From:Date:From;
	b=N8ZvYIrOkr72ErCwq8f/TPLjONP6RhmqemjlDyxP+OFmMFdM3LaE4C65jTA/q2dny
	 GI8HxDaeiiAoDkbZrjYUyyHrUsVOLI9DgpoZ3iNWBEAqkV+qjY07WcKEC7RagS/nNS
	 j5IvIJFASwOLH0vqoigu50SHHEuj12pErlnLV1QQ1CztrZU5Ygtu5bta+R56orMj7Q
	 ZyHHgEelDHS1F7KdxjaeS/frKmzmLn5TwGGUX+GssxG/i43uV+pNMaPoZu2A/3yTOY
	 rpqNHaMmbf8XsJNI1cSv8EsdvUVL6Uzcwfa+ELcv15hMrX6lvB/KxHCwys+FZMr9nb
	 FYI5htlI+iCGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E54AE7718B
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173483195362.5129.6424718418829204516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76618d99adcd074a073b254903b2227ea18422ed09475823bc7150bde7c98b70
Date: Sun, 22 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734831953
