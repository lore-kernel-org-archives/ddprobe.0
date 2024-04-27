Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7563310E6
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 22:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714257743; cv=none; b=K0rN1BhRWhG33OGZahOeEEDGBPn/1M+wzWO/wWD5NkQ+jXzbiJIIWnsjB5s+YFTw293uotYmcwrm3qO/Lr73eigAY58bIK9DO0SRvNiSpQS+ty+ojyLgNC3ojLl86LqjpBFX7EgAbvuffW1GuxgqCQFRYPE3CfQGtkKk2dy6OiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714257743; c=relaxed/simple;
	bh=osxMPiV4vQ6iuExHr1FjZV0mGZnSyYCIkLn+3riTW74=;
	h=To:Subject:From:Message-Id:Date; b=V3erJZ9/G0T45R7g3u3K6j/De34jn0hb4nsEss3rbKpONG1eG3rZNSu7xBiI+nq+kt9eDBxcGWCIUTRgz7T+szfO8JmvxlLar2y4oKOeE7848SEfyaY1e1TTweXg8rNQmuybL1OuMKkXOLhsQxbHneaRSlqVPWkMJRx2dcJn1Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5Q2EI/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5Q2EI/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E72DDC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714257742;
	bh=osxMPiV4vQ6iuExHr1FjZV0mGZnSyYCIkLn+3riTW74=;
	h=To:Subject:From:Date:From;
	b=I5Q2EI/EI+EyTLoVIO6n5JCeZFsDTsNvnIKirEFSyySS1JXAdC1F3OdVRZKBr7yTz
	 9DE9ibf1XzMYiOQM/ZE8FryNKK6YOIQ8iUXREYE3TrAY39ywqjz3U53rmwTYNyguLb
	 vtnohh+f5jCWvCvbZ4j0DEzp9cRNXT1/PF/VjgRz0GqALF5c2tjroPIPWyl3+hAoDm
	 AqY43O8DorUVzaFQL+ZxIF/VHAUQzv721FhToNTOLSbFnhSp07kZHvQSfNcTFHHzDd
	 LDfofv9xQ9WB7b+tLMoOgb5a2XBzlE+MLesuUMyPT6XgQTNsxzxR2RG0aQkNsurs9D
	 cOfbzga9cdDYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC143C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171425774278.12984.17307622298094210514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c5e65d4fc9714b82aa9b5272fb117e52b49992af2d9dd1b60054c2199fe3e4
Date: Sat, 27 Apr 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714257742
