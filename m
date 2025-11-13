Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFAD313E29
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763065794; cv=none; b=YG1EMzZauOHHTat8V35pVkRI9BmMkO8KF7TrLZDnSOqjHpyqrUwx0AY5KxdxMZ1Y6Usi31TqxB0nu1Zkltb9uU5UQgmdPc1/JHSJlMDu9Oxv9iEN127BzgdVtwPf/Xq1/cNO3PZS3aO10Uqo1wo+uKZx8WClM1w2M3luaoezG78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763065794; c=relaxed/simple;
	bh=/kqnUyzPrwxkEu+sGKui8+KulnNuRk+1txn2WCS7Pbo=;
	h=To:Subject:From:Message-Id:Date; b=qIbNkMMwlClT4z7zHnmP/gJMInZEplEOu4hbyJ+w1+YQLT016m6tx/GTZhViD2xq5ZOVJzvEH5ECDqzJKaHzuly5iKynH/7LoZonRpU3ivSYWjqdpkQ8bJKTwQxv0xkHpd3xMs+MDO6sZACjShtUPLGfziGxmeMD0224K/rIKFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjaNIJF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjaNIJF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F65BC19421
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763065793;
	bh=/kqnUyzPrwxkEu+sGKui8+KulnNuRk+1txn2WCS7Pbo=;
	h=To:Subject:From:Date:From;
	b=GjaNIJF+5DbwYlkWTSuAhACk+9QXxJgJ1VtdEmHNcvZpYByy8ei53RmYJ1IHBILD0
	 ZDkFlGrgbc/wiO95VwaqEQ3Xedl3qEjCngcbqH7I+txcJKlJ1S4F+NkVFtT56+NgkH
	 bMjro++J3+SJrZWENONi+k5bbrV6XJaxw5gfaPds7P7AK9b4drXxclt7leqH1rnA3u
	 PH5rFimzuyQqnDkQ9NDmeFTyA8uTS6QSoSyNGv3xG3L6rYgVtdeKxXG+q1WZVxE866
	 r1f5YkIIyIMPrgQo889MJKZTht5BQzGKXPAkACXlmo2PMSrTAXIq1UXr46Xv06wlEU
	 5bPXg6lUq1KEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F02CD98DC
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306579359.6802.15044476744920451755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d73be3b0a3e7c4d5265f0dd22899d027757fd7054407d7dd397d6526a682210
Date: Thu, 13 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763065793
