Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E242472AF
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780967074; cv=none; b=enPwjWtXMFlQ7lxVbkWfiXvh+Cgvh78gImywfHlfaSRV2mXOg+21MvOioGuWE+wEuZ7TkVFtR7w81360F3xLXZZfOOwLgZq+u2tPbIsK0s/aVVKNrrim6EnFfuOnASxvOicxpHiD4gZRNCga1sgRxa6lK31+ZU0MD8zPaO9Us08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780967074; c=relaxed/simple;
	bh=W97KQ9O6B1IeOTcPg1c1xT3dEr3FBmBIhxolA90APSQ=;
	h=To:Subject:From:Message-Id:Date; b=th0STHT3Nh9DUjNzUktJ+azDATP9W4+/NeRfk0sVCZ7IiuYFXB74DCKz/9lXVTa8t8w2ymm1VVnU8ZwRxmm3ywJI2ddMEccRQwgKd6DHH43bgfWx95Rkdr1PJV0jYlwn89WhoTqvU5+B9ZJpiodT+hS5U1mR2EwEgzpPdT7TPbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piqlVhSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piqlVhSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF671C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780967073;
	bh=W97KQ9O6B1IeOTcPg1c1xT3dEr3FBmBIhxolA90APSQ=;
	h=To:Subject:From:Date:From;
	b=piqlVhSSDvzn54eDPge3FT2SKzxh6sm7K6SK4C966wif0gvERNu6rdDpsavi8iDoo
	 njNO+pZNWdm5dsV2lYqyukAskyIYnhfXJuirR1MH9asXfiG2f5OOuh4oW4o6/PJ1sz
	 aRWWDtG1cWC/IF3FZCvBGY/yh2ii5mdqXorthNJK+wCXHDILTtEP6+U/SoalRrIXLz
	 MsC7YEXTptjjHlzS4jhBxqkVnKDJPDzoLCOfvSbhnVFG7ZLk5pTndro36pRD4KNoY2
	 sM72cjyQ+TsfpYAiZXX86PlM4uVNPxH9cunQO/Nt5S0BV9kEMW4xflvdYT6+XN/j/l
	 NmGiPpGDfWf+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD37CD6E79
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096707369.7947.7847119628639450747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1582c48acd1cff294ec3cab8c035bb574b11cc2f808ae549fd4a184ce97b2b2
Date: Tue, 09 Jun 2026 01:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780967073
