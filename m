Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF90738385
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744499394; cv=none; b=apdw/A8J3q/N/6a/r0RRr2RN+xUgpXLz4bm8xTGdC0tkNJVs9s9uStidXHIaJF7g+G8v/6TPVbHOLo1DI6dfkruUkIDZmH2nBoTXHreF0h2lPku84s2YeMRnKOTXiouHYoUx4IZH24GSssFDVysr8k12oEFI/a4WYD2rdMs4siA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744499394; c=relaxed/simple;
	bh=yEbkf05vaT9HaMjroGvmhFzmRD/WbpRSJCIsyboRk7k=;
	h=To:Subject:From:Message-Id:Date; b=m0NgYn3KjjhfMGpARW4dBmAF0FaB+2aN+rQoqdtTaSLi1ETTGDEIa14MITS3xXiSjW7pWwM+p9hibrSkVPZtWmcqhBjuP7XQy9p+UhjeRC3Etn/Ki3pTMISc0WfVXNMW1EvYCbd77xAXd5yMPOyxE0V+ZHFzPWAo/+gOEoIH3QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOI8j8FY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOI8j8FY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB07FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744499393;
	bh=yEbkf05vaT9HaMjroGvmhFzmRD/WbpRSJCIsyboRk7k=;
	h=To:Subject:From:Date:From;
	b=EOI8j8FYVhp0y2GbU44eytBglwzPy5QnT+2DNawSwtSlw5DJtIbLNQCyJi19vfg+b
	 gG1mCOoXEJL6bTJ1nWbadMOCghc90r3lpVeeEK6zfg/Ku8PO5oPRHQXMBklP9ZrCKl
	 WRb4r+3RiSAhwOihaKLtuEnJeq6AKnH53mVnM836hl9JHJnqFJrUkZy3y2ytZu88nv
	 esWYKjr9etWHW8i61tSYbNOk6XQ5wTgxBIAnUB24GerfN/Oz4lPQOjaLS0bySPLCM3
	 JZXLEUw5JyqtzcxCSuNx1kclu0WHIUHrCuKY0NfvoD/ctaVIqzD8gcnavO5qnAknnj
	 K6uRiCwi/FS/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AB1C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449939357.15373.2494694088467219574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c627b7fb8be9ac79a2250d5a68d308c64236dff4c76d8dd9dbf8ac79b7bef475
Date: Sat, 12 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744499393
