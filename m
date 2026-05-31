Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F813155A5D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780188874; cv=none; b=e103eSa9UYAA/qEAPZ1JUBHMuQe8uXWPNCJo0pHdfZHQRjbo7lbKUkXI7Sra5XVdA/jzuTEkrNQHL0j82l0GKLkRd8xzv3oL0S6YotzkLJ27qCFRV9FgblFXkxAmv1idwztfqyVG4GHyLlN2ecP/IX1qRRg4H2KX7dB+uYJ4ZFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780188874; c=relaxed/simple;
	bh=rsk7hkwdW28whTV58Zrg9bZKWSPvsoIRbNbMkDO+v58=;
	h=To:Subject:From:Message-Id:Date; b=cWkCiNX4h10686qWAHI4UAWxi/I1keuyuNqoIO1IK+KQSy7KB98UI4fk4kLhtZFyFskgOSncAYqpbViuFUX7hkpL4Qa2bsd/S06GjPzOuFg1WwtxrOZcwonmv4V9k5mFU9aTpgtn2xvjvHAkwsQ41cBN9YPfNxOd5yxZiAdAJLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQFOZy0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQFOZy0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B34C19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780188873;
	bh=rsk7hkwdW28whTV58Zrg9bZKWSPvsoIRbNbMkDO+v58=;
	h=To:Subject:From:Date:From;
	b=dQFOZy0ItjF/+aEVX7dgXp4uUf9patnpIcYnytoMgh+/PkZE/LVbm7QnUUgATMfjC
	 nN/vnJm/jy9QS6WKnWfp23qNoN4xRx4WTbUtWLyj2XgKTPdqPLkxhDQgMz6onIQe5e
	 YAMB4gf6f2rFr0fJrupj6rpmepiffB5kAnujsQdB+NUjbIZztFOIsIlPPfmcpsm3u9
	 wND7cdcWnFQ3g2FprUgVnO/fKiT4ywxaCwl2NIEKjzGJUTVjWV/yj1U+4YM4ASsc43
	 OvwWi9sI9Q6VNOEWAPbFUK/ERVis8M6RVsX0AAsTfjax0lElyWDzvaFVloQYFqvu0B
	 +d2H4Ctye1GTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA827CD6E4A
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018887368.30467.16832505771719827061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e58ad046e4d14a12a9fe0dea5b3b569ebda2ca174773c1eb906fb4af8961651
Date: Sun, 31 May 2026 00:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780188873
