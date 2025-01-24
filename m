Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A14193073
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737750954; cv=none; b=rE7CKjioARF9djzvK4G4g4HHl+l2JWZJfJ9Z2Ly5alFzD88D5LiC/1WnF0VZx6AFrsCQ/RzvDZSH3wdTWI6YTH/QffWmg3U2Hn1rLHTGQa2jW004D9xcwPYcU+aVpH2T4DOWycL+hI8j1JZXZKh0j/m417Uv3As9lHnoEED0JTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737750954; c=relaxed/simple;
	bh=H8o0Q8t8ZfARq56ta9KKffl0/H7+zlBgMiTJxIr06Cs=;
	h=To:Subject:From:Message-Id:Date; b=GRaoHie1CWKr4lq1jEHGkpSLDtM9vtkGTRPg5rrUe8/YOVQtTPXtT7SHhJ3raQt7R9yvpqHwfSjLAgKQGUzKHB05hTkqCIUL+XqP1MjCSyo0tLeYNdXDbgKM++te6PCS8benG1lfmdrjWWILrrOAZEoPkWSAhTOLHGdIJl4/wgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRnEJMro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRnEJMro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8665C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737750953;
	bh=H8o0Q8t8ZfARq56ta9KKffl0/H7+zlBgMiTJxIr06Cs=;
	h=To:Subject:From:Date:From;
	b=QRnEJMroZkrI48xg+kZSXEg4WXurUrx4vh8dYZlRJnIf9HIFfDNqykfluZf8nlnWL
	 zkO5BcBasvR1+TWpVD6Cz/rJBSrWqyxeGSZXnQN/VH25vkvlNTqcAfXV/+NYIRBk7S
	 SyTP6BTLf+EKvygxZi+sGLcnnqK9LZGcN0PVOfRImEKRy5BE1dkcl8xhMA8EHZX1W4
	 6MTVVtC8SIj5mPV7NT5gpclBcQ8rPShsf15/m+Xisbp8M6KOELAm4be+iwL7q9xGre
	 CFPwR4RCB1RpFUTtJKQ3le3AE/Fj7A0I0sHvnB7fl7lkt8QhgdW/WyByKU1MRdr/71
	 kx0x/W7ulcBew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F1AC0218B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775095365.24112.18206296329068621143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3a8269a625c1b1e037cdde1e22457c85892ee69c6ef07fe3e62631046b18ec
Date: Fri, 24 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737750953
