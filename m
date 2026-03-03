Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0973435E947
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772558694; cv=none; b=HB8wfgWz9W4FpisTANRPR9wO8ljus/cxYfMFU+NYMnh54QxlT0SlNlDDqmbkBl9zI6IQxu3ZVfVBSUiX7x/7UwgxWGuQOvj4z86713qoTb2EC//j5wdfbdeySWg6CHiJPQM45oh0zDu/AY59ZxJDQ3rktYxds/eO4VinA1GUNb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772558694; c=relaxed/simple;
	bh=4rXw/D6bXuiq/Onlya/HTmI4DcvbRcVOt+md9AdtQZc=;
	h=To:Subject:From:Message-Id:Date; b=ifOFyQH6QNHmkY0kjCEH0A/QNHPUa3YwHQZktM2Fw1RfYU8ms7CzPavTmfp/Z1arYMxYy8ANcmKih9RbPgmQUjPNaV4W0EYbw6hXDGhieLC5fcsi1RuYYleIWUufH4ch6UZ7+nipOubgwj0yC4r9fBdClKkfv39EvDEzJfhPsuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFX8j+4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFX8j+4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8456C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772558693;
	bh=4rXw/D6bXuiq/Onlya/HTmI4DcvbRcVOt+md9AdtQZc=;
	h=To:Subject:From:Date:From;
	b=VFX8j+4evqp9BqZ3U9jR4b/MMEcz1hewpeG1nCXZLFvhET0wjNOS1LYSBUHVQXVgY
	 dbuj1gAHXDyxqLZL68ghBgO22nEExQhZsXlSfhXwOSFs771rnjsc4Z8+NoP1I1FBPy
	 PwIIfMwy6l2eMk64DAA53nu+D8c4Z9wJFqHlbvz2qEysktzd6u4pvfNPPk76Y2rg5o
	 wlFGZpHKWHmQdPAPA3qB2z39rklP75U0IoZ1bt5jmj/KcUnR4OzMtcpymzFesvq6au
	 oqcwsr7YjjPK4g2Loch5gWIDrKy9c8LflVQjuEyX986PX3XTt5/UXV8qb1h7Wp+tPL
	 B6jGIM/A8EuTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98551EDA6BC
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255869361.27508.6822169831602324029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2da66f9c2bcda21efd927b4d405c1c41ac795bcb3f4958b1f784e363f90a17
Date: Tue, 03 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772558693
