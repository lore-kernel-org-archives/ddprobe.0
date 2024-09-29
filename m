Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C29817736
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727613954; cv=none; b=o9W7WY4BDzRtsj6bPLhOSawUuEk9pl3copNZG1/m21XgueeTbHBUhmG6tkL4abx4fZoEOLv3yB0nETjwbh/97txyslEvMkjlPGvZ1N022diEFqxUQQ3P3vXOFHftA/eIGpi/CW470QJQRUXJ+DJRPeB4KLfd8cCDDNwR3RK7Pe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727613954; c=relaxed/simple;
	bh=ugwe4B4ex6d7org94Qb4jHzHoYkCcKc5rTyTkOEO/TI=;
	h=To:Subject:From:Message-Id:Date; b=AKSL7RyHFNoEouikvUm/Ejgp3dzU9kou4NID4Kw3dTFm4axuCnNLeZ9TwdUVEAvhA1N6jl0ZCoJHkBQOzauOmbpXdnpAO+eSG0e0rl4PqfJqBeLuy4iAitZyJdQ93mZfkXixRB1qhfJe0APxEL+lr+cCTHvcpAuEFd/BGnCICrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWm0hvnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWm0hvnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DD9C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727613953;
	bh=ugwe4B4ex6d7org94Qb4jHzHoYkCcKc5rTyTkOEO/TI=;
	h=To:Subject:From:Date:From;
	b=SWm0hvnCJWmQTQz/xRm/d20jtfYCXUiwDvDJ+frFPRvSoVhklBLU/qjhUylf52UR0
	 a+LoqG/12++75d5StKgYDCY//w0Xx9Gxv+OfWlslopz2r7R28grdiXv8/DE3uMnBpz
	 PVQ5qtSthpKUQWoR5SQ6drtOlkEsSkg3ucZM9eRb+p9xbWw1yibcxxYva0/Rpe8Pr/
	 68/Cm01Sv4c6L+kTa/DQFI4OKSMmEleVr9hzg/RDEe/s6Fx6XrkAtFdY8PT0kMIQnM
	 IlfnUQ0V1C5xoh9rgY4k7d1qIQH1n3tjPtIgSg8hL3p+AiDE+0n0AEyWEeZl9Lv1OX
	 nPoABXdv5mVAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939ACCF6499
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172761395359.27132.9373745787331902603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af0f397fa756c178626ade838d37ae7177ca9d26e9e02d69fd9ec8ba9e13133
Date: Sun, 29 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727613953
