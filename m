Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334103EC80B
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785496234; cv=none; b=rGGx3xMWLYiX3KXjSr31T5qkpS3dlVMErIMsvrGwVdtto8exN2wpheRa4E0U0zRX8nOsN247o62IfTU0LWjDDZ97uoAJneeN4ks6wGU3v96BG6cC+t3FiEqJi1bgJPQdo3ymNNbk0WfmHc3W43KlFwxt3PzGBEy4hNZdEKr7rRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785496234; c=relaxed/simple;
	bh=zclHR5wHg02vKGPCFFqTo0CTRbpub2kA76HNTmPmEsM=;
	h=To:Subject:From:Message-Id:Date; b=I4tuu2ISapkauT0FhlwwKcUBEbcxavCRp5JzDqUdT0yYLinudBYRV2koOmr+4WtIxK9sYmaNXG33J1osOYBnoVbyEksiUc/x9VHmx8o3jA7jKcE9hjlC0qO0Ccg+gLlMl6nDiU4rtH9LCBqfZrCdY8Z0OPfGQD/hiI9eAMQ5Ioc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbWh7BYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbWh7BYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB02AC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785496233;
	bh=zclHR5wHg02vKGPCFFqTo0CTRbpub2kA76HNTmPmEsM=;
	h=To:Subject:From:Date:From;
	b=FbWh7BYNQrzUcqmF3/XCXQBmJYTIkMWoIYQnwWX97/BXWOyPdwzKfaiGwShsidGPw
	 f88KZhut6XCxm7Of90owoeQ9p3Oxpa3Rff8kjIfYngIdIVLCSMIpu7EGQqh7/Ls5eG
	 s8ndATzA2tPVnmFBqdofxQ1YNV+NzOCFmkNAzxuNgqM8pkBVb+WyLC+TbQta/cibta
	 uOg4ru3QaHnkrflxQ+G+PAsEahzrSLBooKnXWA/QyCVWpAFPNWEW++2f8Y+UjZ1Ri4
	 vgV1cRKpTEXE1apSAQnzgZB0Jz4lVojpgtOr3FVs+6F9mXuIyBjwK+ZQuWTbyrC7h+
	 nI9hHcFa8B5zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA264C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549623368.15769.2057735032360638770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c44a3f9d5039e1cd9314eea58268ce0fdf855a8613b2acf48dd4031bbad8e1
Date: Fri, 31 Jul 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785496233
