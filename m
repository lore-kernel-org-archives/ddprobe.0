Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437E218040
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714584143; cv=none; b=gCS7xqXs7XgfUlJI9YGlffSLKmFIYVTqzfIofddZBYmRS7wF/cm65Y5phdC+4BdwWoZiAdRi7+V49xG5lE5VxTESgnMkqJC0eJHuLMXBvXAMjhhlMCRSycNkrkE3hF3dOoag9Z1sbCAVLUomojpoIDPjtItYkTxdqDMDanU8qN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714584143; c=relaxed/simple;
	bh=PDOWeo1wpK8370EU68PUu5Y+/ZsV9rYoLr1cY0sow88=;
	h=To:Subject:From:Message-Id:Date; b=t35sZIdigp0/vypTALdUzE5ixbv3oX+EaFu+VerUkCJE4Rllux467OwotYDoTnvlCHO1RH3YdRCexVw9jiMqJwF020Dtggh8DykAX9eV0qI9DcFpENbtRZ0xM2MR6OvT/sDi/lYXQgjFeux2/jGDiydoPNl/8C2jSoGN4y8NiyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awhALSBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awhALSBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6B8C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714584142;
	bh=PDOWeo1wpK8370EU68PUu5Y+/ZsV9rYoLr1cY0sow88=;
	h=To:Subject:From:Date:From;
	b=awhALSBnLKNDrotgnhhCTmilsfhcKqKQqV1hsbjuIWyxTuRoFBwKduQJct40wqiWA
	 w3e9LcEwRR7AcSyE6KcSLopBhPCaEts6lti6EButebYKg3AD3ocozpkNipLEKzOaPv
	 QyXqDQY96H8yq81Km+z7flCJ0sqJx7KpepLimZK+jnitzrKjjTe/SbbsluHZSzQ5wm
	 eO3Ds1Fz8ogUXyJcDknHqaKS3Zx8V8/TqJqpaaxqcghs7w8zLxWSuVVfT9PZ5jiH64
	 XTDY9tHoJKOfzTKFPBwY/GsYGdIViH6wgGTSy3EinwS2a/9HMewjfkn1lKMBkJwxSQ
	 65A/yB91zssBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD29FC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171458414276.28639.1952979418599029589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c472690d76cce36bbdffefc39c3abe83622719cfbfc897dedb8cae734c43394e
Date: Wed, 01 May 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714584142
