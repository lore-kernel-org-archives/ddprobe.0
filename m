Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6E3AD24
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720331783; cv=none; b=ArBINclulNugwV4vxR4d8gtg5mfevaXb683eiGln++whsg4zZWj1GKzcn/viNXWzkXMXo/WSOTC2q54nvjts8DQQS1wmibYpM04LUZRnzlHV8O61COTgEPrKyaHQKZfzdLiMTdQjGK89ER1fVT6G8tgi0+e9gPyp8dE6wA6aD9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720331783; c=relaxed/simple;
	bh=W1CC1Bqh0CR3u81ijk9DNiqCEtQzd3dy0o4lvp2nR4E=;
	h=To:Subject:From:Message-Id:Date; b=o6bd/NYUWLqo27n7l7EcSDAOEoOe+OFfUrDkNhPjq0AT50FQI+rBiakKf2Jp2ctoLQPLQKkkp9vbyCyBUvSR/q8SrW3Z4jzsDyMm0seQCp1GONBNa9+kyhnT3k3ez4iAgNlh6WQmh3wx6TT10KXuCJpheu4Z7C9uRqhnJD6qZDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ef+59Hln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ef+59Hln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1426C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720331782;
	bh=W1CC1Bqh0CR3u81ijk9DNiqCEtQzd3dy0o4lvp2nR4E=;
	h=To:Subject:From:Date:From;
	b=ef+59Hlnt9UigU+dv+ya1XkpygwE7hXp/xk3/Ryyp9vJ/y+wn022nl1qliPNsUJJi
	 ybYwzXajpJf80YdNfY3C0pAs5YcZjS2DCfQHjSVRnVoiyd069f4Tm+/To6Xb+FFWwD
	 Tp9lR1fNFz/8VJZMWAZz3J0Jyn/Zc3SoTfX4K4Pfo5cTH2DywNmdWzCgCvB4LsBM+n
	 xWYcTdOGd9a9sFk1r9t8HwacUM5RQ+S20xoBSw4I32tHOt/JKkN3evVwWnomkhfSMB
	 ouylGt0iZVAvkuBrasAtREDZ0b6NiSgMZUk9E8cHO5wz8scS6VGRJ6ek+8bC8uSj/v
	 DbSGbWgMXkpVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE10FC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033178277.30470.11577429068638708197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bd87f320dd7771b44b448e62cb039326bb44fc643c53f2ad19d392541020bf
Date: Sun, 07 Jul 2024 05:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720331782
