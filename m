Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002391D5147
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771839894; cv=none; b=q6bYz1kQMO3hCxYB317yRAkcebO7uAtf3z6gpcZSa3rnZvL0jRx6Uzmndr11vC8J7+Z+M1LeHqx8zW9cyMHi8BYpXxpWP9UzCucz6/Jh/TMBvXVmdtmZaZdJIqAOEISkNAPYl5Y+HBVfJB7FMJTsfi0Tc8kzP9RpzC/ECI+ZKlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771839894; c=relaxed/simple;
	bh=wncfXjopvKN2j1Ty5Jlc6dQD50/kZM5HGnDv1pHaz7U=;
	h=To:Subject:From:Message-Id:Date; b=QtRUgoYr2+/Y/P0HZiREC0C8pvDOSYSZrcIGYgHUT2wZih8lOV8UTYWPReDqY8/6aHrET/sIVRS6y+29+23/nMEJs2ODVlZhKmrqcUjsg3X6XBBtdU8F3mI2+Un2g72O/2yTS5mqu1JSo7MaFNoN4euejYdJmDMBnT7AZSLzDNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kalexil/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kalexil/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C79C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771839893;
	bh=wncfXjopvKN2j1Ty5Jlc6dQD50/kZM5HGnDv1pHaz7U=;
	h=To:Subject:From:Date:From;
	b=Kalexil/iBCGmfajlk/IZe1c+UoXwu/5UvjJgsI/olk2RG2hWxqiIIDhTAkXgMy2s
	 afXLMbO+v0tP+mfgRco3i+uoD43kPQOJJ4UdR04806vCURXdUBPt9SibkJEwuAeCYl
	 ccQEA+OuWFfoCKnLFdIfQDD2/WEsVNnJPaQFB/+/A8ggnxkilqTxUeYIv2BYxO8N6U
	 BXJNJJ4ylhMEKA+pT3XxVLR9xvhYN7EOzVzno+eagJwK9Try/ctgmnJQ8GaoCre6rQ
	 nX5HRK/5031fYFbprQIfXtuPxWggNRIhs78v/uibP6YaaYm8V84kdbtpYyHZrkhid1
	 urOglBZhmQAaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948EDE98DFF
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183989359.1289.14451847093584768809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8434de27f44fa761b100a70fe63d1a5dc271f74d366a6c9dc0a1cb54c38e1c27
Date: Mon, 23 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771839893
