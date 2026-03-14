Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214567082D
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773470094; cv=none; b=BycdvCILCOFb6glWAqgolCYnuUdHlsr650xWiUyPanyAnTpRFo+Q4sva3hixijc3F9poHvJBJh9ek84+n6E/WTO1BL4EO3KJgA8BOTmyTVyXYE565xCfIkhvuTBpyQb0pewkSvlHJS6JKUeQbOe97iP4M3/j4a9rYbQ8Gm0tX0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773470094; c=relaxed/simple;
	bh=rtsiLlbKWw+MQtu+OFBZepkE42gzK3OIWBLu9rDc2jA=;
	h=To:Subject:From:Message-Id:Date; b=ZxK/O9mR5MJfk5jqXt6nokbEl+6KlICeUzPbDMc+4gtlLEXs4tOiaJnFY3qjWOP0VxQlq/QvB11lJYV6Gu6LTaSefZTM4tg7pgJIi6kOHdlcSa+LS9yJOQbljmjCg6RxhYtBZe/wq0MgXxse36kI/Mvoskg+EFRBlH3oQ25vYYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlqXw+/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlqXw+/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81DAC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773470093;
	bh=rtsiLlbKWw+MQtu+OFBZepkE42gzK3OIWBLu9rDc2jA=;
	h=To:Subject:From:Date:From;
	b=RlqXw+/UbF5jLyBn9BPZjThNu5T+Vbm62+SOV+n+GDKvtlu7mXevFranS/JQL+EDH
	 yPvKsFrhRjso2vOe3TELxsHZhUpas2rXsC4GwjOINa709CeGuQlot0B8adHZLOFAK4
	 ubdB16e1TMGF2ebl9XNcLI2UFLuR8H1voEzUIx8DY4VogcDFQifyrO8gNiBeo8fGlZ
	 7ld4n59G+IyhxFl33mMNtJCpxq6lACgVFqwnBCNwe+hyqtaZM10BXogc9w99LrZhte
	 a2Zx/lT07DYj5z986YGCoWs/tUr6+WSh1pqpJM4IaoJEZH16I2w9RqiO6JIFu5qlXy
	 KVf8nCwdBa8uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92475FD88ED
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347009358.24992.6603887737436355792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3af9b1c2c7e1b36b6f0efcbf6854c6788ea7f42e033feec6d80fbe1017c6ca
Date: Sat, 14 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773470093
