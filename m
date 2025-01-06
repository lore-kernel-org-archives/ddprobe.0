Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8AC156237
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736178953; cv=none; b=ssN2jbG4wY/KT1KyncPQgqmrYgE+wphXQY4qcH+GHpwj4hZ5EEQbIJ6It/7RTX+isdF8ewcPgRuT6ddnO6oya58yOFJWVtQbAfMVfa7ZlmQJMRBkn2KfFpolW5hN7DCUFRZIP5piQPgN09CwrFSqQRM+XVdr0Q5/+qgDflIoX7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736178953; c=relaxed/simple;
	bh=cwJxi0Phn3ImuINUlRPIHQN3AFiSo8XFICSPwdQowfM=;
	h=To:Subject:From:Message-Id:Date; b=n2ZDHtO52iDqi4Zx6vc7+l5DkG+EXGBjDeCl8C8FgTiE70po45XoLb2U2/Yx69K79YhAFiWVVGnu8qHU+pQT6xy84BHuJLJ1g0CLVGzrpygAv7jMc5ESU3IkCMkWmmR/9HOo/dA7+3IhrjWl5O2exxSWcXs7u340qevbvwlUJ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6AbNn0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6AbNn0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5680C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736178953;
	bh=cwJxi0Phn3ImuINUlRPIHQN3AFiSo8XFICSPwdQowfM=;
	h=To:Subject:From:Date:From;
	b=e6AbNn0AeRU60yUcSk7iXXHN0mhX3uhncoHKJ9dt9k7O8uS9WellMI+xbBEnxRVxr
	 dGNe4sDAAjs5nMMQk+4t2McriR7TKNRX30UivcBC3Pd+4xQqap7QeMU6pNaenDQpGS
	 OY77Z+f3/+kkAjYfKPm3BiTnK/njfKJKdwewIHoXEW6mqq6QTE4+nn7dBwfmmTjGoA
	 at2vcyBW0p50GNpKJEJed/cApTdhRA8FbY+26wqfnAH6tAMX67gN3FkBG7/F4RpZns
	 GqXvSHRsJZ2JQjzPFj+I9vYhDBWA9L+/JqrHV1v8n1P3oRp8wkG78zGARmOCTnL5k4
	 CUts+CI6v0ROg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9426FE77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173617895358.9540.15581474518723758284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ad2efb7190ad52349216c58005e24e30a415693beef717ac82590c48b7a111
Date: Mon, 06 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736178953
