Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C635227
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748797794; cv=none; b=mYvg88g9Fip2tui/doOWbGLYSnBWB2GI/xj2uWiZtEcejG/O7GJFGo9Swi+184UJAn1IX9rnewW4LsfefcDH/hIduGwBadtq9c8KKhG9m/F9EfrZ30/pqdqwH4Wata+HEiSzeGG6bm1XwHalvSHo3YjmKY0IsY37KdiTgsvjSvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748797794; c=relaxed/simple;
	bh=zxez6KbveZiBj1blsXSCaVeH9BZccBupwcxdykSiVD0=;
	h=To:Subject:From:Message-Id:Date; b=ZOY1K46LLIEX+DNjdANJJ5Jn9/LMvubRgfWfAsSODe0d2z/9Md9QXPM4dQ8XdlPWh36/cMqqzBD6DyJDPFTF/uirIqVQ6RxoyWl5MEP3qax3mdZVQr7dNaHyfjSw9Ewtvnf3dRQrVlIgNnBEmr9RqQKw0SwqyEQqunXaJtBCuWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLOxAauB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLOxAauB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A353BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748797793;
	bh=zxez6KbveZiBj1blsXSCaVeH9BZccBupwcxdykSiVD0=;
	h=To:Subject:From:Date:From;
	b=CLOxAauB0AUYyYHqvIN3vgdfp/P6g0MccQJt/A/0PXP0MiXNQME7QNbLrKYN9geFK
	 eElir4vGyZ9G8dWFIMYlkSofgwI+GdqPr3SywmuzO42HfsNFFe2gqWCEmFi+qbfftC
	 oxAI3gC+bJmXUYQhvAC4ExME4iKNCxF70Hc1nbBCPwpYOeM/TmtIZsSP5Iq8F6td05
	 DVEPZFNVAKclLXP+gAPo0zTE086pj8lJJMdUuUll6N9u2lBuNRG0RsO60XvZMMpm+1
	 LJcLxBOjJC+Q4j5W6JGzdKkoHMJMx890P5khrum1tz4r26RFRWhGixflOj2I7iqWYj
	 lTpMAPVhcFccw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93623C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879779358.10316.3339520614565625929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ccd9a57505a241cf8e569a6a7d4868e20d88c2f6ed63bfd32f0c0fb26334c3
Date: Sun, 01 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748797793
