Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5461990D8
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752355195; cv=none; b=RTrVx8xk8u4uXLtaqKoZ0+9qJ6oD8e0H3St8TsCvm2NkGtEDFaqMMaq48TbhN90IlmxA2+QXImfEv0YstxAWR/Xtx54cy9+ywwcEhV0MxQefwahrE3966WyS+AVwmqh62k9Jr/Hz/gKHpr33ydh2UxDxBYxm6gyl1Y4XGt1G9ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752355195; c=relaxed/simple;
	bh=x46CbUCvdNcrOJ8Dc2Rmco2XbJgBAfIE3gKyzfQXE94=;
	h=To:Subject:From:Message-Id:Date; b=XHGPAOqJHKg5iYsfy4WHXHuE8RZYkurpro/UMNFBGWMVsorjUw3fNudWHPCg9iNExLFK4uRkTocFsAmQ91jS/aBWG+uZruYCTvOtMMZB+AoSx1/ZAtLVyTw+PEhBbUxaorL+eTl65aZuHMEGp8S2ireN4cR6ocXyb/kycxqDr+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPDXCQs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPDXCQs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A87C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752355193;
	bh=x46CbUCvdNcrOJ8Dc2Rmco2XbJgBAfIE3gKyzfQXE94=;
	h=To:Subject:From:Date:From;
	b=DPDXCQs5pkDjOcqaUgvj9/MRI6uv6YWoy2992Ma+o2BmXGlJUyTGpQU2yCVE41jRx
	 ylIqF5IagRn0Hn/9kLWeoAqW4iF1WTTFVuhab5AX93SidihRzfvI9roWLw8CJGfH8e
	 HCSk04OqZLWatmVyDBjvEpFOQma2YMzXejrjIr31Bim2dkht8nTKTbT1wzw68j6KG8
	 sIB9hOVaEu/6JH/fxZ/JNEuPksyym4TujG0Ial4aSL2tvUrfyptyIG8QfiP0G3dFkk
	 zPrY+t0b8eBkNP6CPMNXAz/QYni/vI8hiGp0qO9+zjRb0daAvwhHpNp3oqivdoXmjY
	 YBiwaMsw17Vbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADCC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235519358.10846.10893393422119985002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec15920c2279c0f3db3422f12e4f36159fb39ee42907c2c222976d15e81af3d
Date: Sat, 12 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752355193
