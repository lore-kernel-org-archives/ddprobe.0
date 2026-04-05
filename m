Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EF31A4F3C
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775382934; cv=none; b=poVkR4RwdHI421GPoCBirUJIyc72AYszftElBlPmM1fP3Bfl1ai7s+BCgN4HDo15seSeWW6ItGIHxLTzkYwAoK0fq9vmoqIv1rcRZGJDuwwjF1UpsMhKBfBkfDLu4fgdizNHFKVbo2iH0VAUWOROpFG1CptXlx0EJgU4bALL1M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775382934; c=relaxed/simple;
	bh=phxyEgDYVNQAcM8BwwnlgIE0BcceZ4BK1n4tuBae9zw=;
	h=To:Subject:From:Message-Id:Date; b=SKzEzqnmHkwKkLMyKgCXVGTt9UszACHexotacZnYeAg8J5V9bgRvOTXoZlN8eqQ9R6tenoJbdJaoElS0VP7Zh8eoMK3Kat0QvWJoMWOsdklO5y/A/B0q4I57eptII78gbhIkFTKGrAHULE6vUlVReYvfaDLhRUmjRC3fjoMEaJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7W7Utlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7W7Utlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C237CC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775382933;
	bh=phxyEgDYVNQAcM8BwwnlgIE0BcceZ4BK1n4tuBae9zw=;
	h=To:Subject:From:Date:From;
	b=d7W7UtljaGhAH+vGCtTFM1RIgDTw+bq/ObxRHtmeB2RlYOCObLxp3H29H5Q9L5ZaL
	 NpvXmM9o/+dihxAjrUQczHGlQGINXVTD1MGliD7ZMjsHQOaH5d/9SYHX3vOwvURjQp
	 sSdwcEO5mKpARd0Y5/8JV44wxE7X/Z6MRQMfl3G1RIMy9TlQtDhwAZKPXflFdw8541
	 TiW7OEv78GtRtLmz94oZSsr3omkqIMfAoclnPEi5Iv6F7CQRN6zLW6cnXj/uaaebdv
	 1fZhcsoCe8MjKqkgkLQbKo0QgLvJS+ybSO7CgZUE8YOFJX8hmXIenJpwJm6NDmB0LQ
	 h3VHVaGUzk5pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE79E64018
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538293368.16916.4847715764200324140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4aaaca076c220f50ee86c7097cf742945bdc6eb223ec358a9541d8a8f51b3b
Date: Sun, 05 Apr 2026 09:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775382933
