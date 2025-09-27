Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473552D24B6
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758965394; cv=none; b=d4LhQOGCps+lKQQwu/M7k5ueJriNPLW+mdNjQ+7WUONiqiayLzjtHDlSvBSmfd/PWDctzdJS30HeA6JMHAXatU4xH1m9ed7ZKyPm93KIePVxEyrLg/jRXO4sO4KNO47KLDAyx8pWWO98LAz/dIbvNyURpMZiPxpZNcUhTkDCOaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758965394; c=relaxed/simple;
	bh=7XC/2zQ87h2AiyYD+z7eK7PCummEnV+5V6g2Mwh/x2k=;
	h=To:Subject:From:Message-Id:Date; b=knYBtr0QLZODxa4pMTKXuwT9x5cqLVnZZ1g7MYVKqzfU/seCXem8Jd4p4D5aXdLD3UQYyirleDhImqfL/JjQ6eWxXCX0R1LHVCPtNAfv9pJ3VADRH3UrppgGiN3t4tzf9T9uoMaz8XLUL4tjCDTvRjNbkndJXrsnBxvCDYu7vsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjV/FodB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjV/FodB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4E5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758965393;
	bh=7XC/2zQ87h2AiyYD+z7eK7PCummEnV+5V6g2Mwh/x2k=;
	h=To:Subject:From:Date:From;
	b=YjV/FodBmxZn3oVmJogGkhHw+j6IY6bDm+oVv8ZIcCHaUi9W9rGIc44SMThQZSBx6
	 e8uh87TfV7WYpT8gRQfWhDekdHgv0yfnsO25bWn7RoH8upxRvmpLG1IVqcb1cB7eqh
	 6oIqDeYgMmL1I2vzfs5hAdPspJtqsvx9mnGVWe1Vov0CD2sBPeaPS35a62IXRzjmj7
	 WbrJ8ocDLeodTe6/43JSbq1VqJfWbaMmryZwyCEUB3EkCTepZyB/PzCAJYbJStS9ME
	 6f3NSncv93aO+kGnRWpqTRGyRf3+LEKU0370m8BWgKUJ1oz0nh3/SWqBA9oGHjhkzw
	 URqTpjRbGAEDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B126CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896539361.9437.17098441771443789656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f505a65366046c5c04a993a73a1047b67e609280e5b4d409a6520f24e8bdfb
Date: Sat, 27 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758965393
