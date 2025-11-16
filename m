Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8A7221F12
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763337114; cv=none; b=nAcdu2NH/IEZfaBBegxeqATIt7t1T/cccS9GQCsbJz8JlzoU9onzCCznfl7MQ/wOIRCdC4z0LhkrJyyVE+KTlJZf4pvRGZmjfFYYu1BmYSVqfKXFyaQtWbbwG/Q232bJARrUfQQ7S1f76ZBDYDjA+wZc2EVpfs3DnYUQfUJQMUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763337114; c=relaxed/simple;
	bh=TOgyynk/8R8bA+FbwDKkAFxDIHY9XIbkoI7LS/ToGOc=;
	h=To:Subject:From:Message-Id:Date; b=r4OgXDCAow7ejJoEWxeH3jVqp1/9GRNq5FBGHVHIhVUFJFxHrGnIRpxR3Ax9tUEJaGFVN4y3DCQGypwOGNu/JC8B+LPchJYYBEvDLZftRkowIVRFygtt5Vh1mG6m+PAir9UeVylFv5l+5sfk4IJRnJYJbyysFYJplJAO7I7Nz1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFjY0g3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFjY0g3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E995C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763337113;
	bh=TOgyynk/8R8bA+FbwDKkAFxDIHY9XIbkoI7LS/ToGOc=;
	h=To:Subject:From:Date:From;
	b=JFjY0g3XIn2Xh2HCD+5eQGx63Hogqe2TrrAONVy/9OWBidom6yqsfG+P0P6gYTrXW
	 acaRIUWGUOnQY6k6TNIVovgYhcwietBfHdgpvRXFW95KNWWq1WT+BCdRGQahdPjB/i
	 8savldlmV7cvqNaMMkvUag4wQIXRyHmOHEACyrKEyg5wS/qJ34h8fcJ3COWEQYZPBM
	 I0z7ZzU4IcWCQFIbnVXSk3kP5BnqrjO901j2+mo98agNKusxOiBgbvlFZmsyMNu7r6
	 uW2KE+rgjk9vWVN42dADRnLrIwIpVfcDM5mXuaMEATW+ny8TA7k1wkqCmS69TlLtWv
	 sBf1hcH8QUb1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92163CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333711358.21172.11776087141535551643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659fc13c824d32e35f7cda6cba39e8d6955e6e25e6a64095f40254fe41f0f066
Date: Sun, 16 Nov 2025 23:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763337113
