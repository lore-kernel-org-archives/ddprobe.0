Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B5238757D
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777737453; cv=none; b=VZLH5F+t/KrSTdPlEu8bZmT1C9g2epyDm99GshV0c5IANZi7G4YL2QoQvBL3xUQ9pNpxCztflm9oy7EkWXWpGaUCnrQLRrUZmBG+HQuZR7OnirXH4wqg6xv1XQ3e9nHo5PJG8q+5bdoj3H8Zuy20RZj3nZoaGJSZoTYS7Jlif/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777737453; c=relaxed/simple;
	bh=TLeHq20rHf9UH9bYqBOyEo7lCUgqNq0TZVFhZCv45AI=;
	h=To:Subject:From:Message-Id:Date; b=OU4edT68mVhEJVsG5qaBx/EZfEVhN3UF8PaBxYPai2kdlOyCk8xisc+M9tvxLpvPiUPgkcYweb6hIn2VdkPEVPyjkyW6ZpGBuaGTjg4qRkHrr+lXW/byad1o0V3HEqpK9S8nFrpHtD/KGDie/uxPbIlJLSy8M9lJ4TvrG0aQskw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYZewuvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYZewuvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD177C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777737453;
	bh=TLeHq20rHf9UH9bYqBOyEo7lCUgqNq0TZVFhZCv45AI=;
	h=To:Subject:From:Date:From;
	b=cYZewuvLSoTWhS3Oe2G/8eejbTtWRf6tPHHXrZNwNTg6XzrOLHU9iT4w+YJsKlFDl
	 Tu7a9czYsbamRvWcVM7wbaD3nNac0gLzAq4ybWGcDfzQIQVrmv+grsRNsLvfZ6Kd/U
	 EPu1ZjVYFx6nT0ve23bN7syL/6b+JqkAqikfrTOmvk2N5E/F0YmR4VE4poNhZ8IRsA
	 D9+O0/smN3Vosk2XjUHTdJ0TgfilureBMfc7nO4RcDhwZ3+BQo3jRSEZTILo391mEl
	 v3FJXcGkNPPXABXPYpST/p8R1nus/DszNp3S/3j9ZWx0k4tIAK5w2fgVVtwFdKHncy
	 Y0LdWoLkDD/TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1D3CD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773745368.17610.6657730857278700106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d75fb799f78a8d4c7d8c8f57cdaf0f4612240b3de2003a79cf9936b6a63ada8
Date: Sat, 02 May 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777737453
