Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F92B18B494
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742038734; cv=none; b=qmsPup1CNrlYP1jchyrPRvNH01YzyjWY/4F13R1s5D4Bj7Llh95OeheN4grVe0WU+GEIoacctJ/VkKMnm1cScPpnJa1/cejoY+ye9xxXNDOU+x2eVWYtgL209c+MFTrzySuBiiEHupSiAvsrT5xjpVQVRPx2ZJLzaJ8PRAXNBg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742038734; c=relaxed/simple;
	bh=LF6A1b0SrH6q0/L4Sef9+0yRyviMyghBhrhR0rXlMJw=;
	h=To:Subject:From:Message-Id:Date; b=ftAN3gZ+UZ7zOKGCbz55ZVIijJGoWJEt5GOtV0YGSFth2h+eN46Qn/sMtcAIBpf0bItaXNG5H2jlDYEkkoqGBvCLrmuLgAWUSUSW5DE5kRnDfl1UZAm4ZAK8XUXh1Znfixvb64uOos1Uvsrva1ZNcfRG/zkYrVUBN7wgVHLyQkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpHNtBO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpHNtBO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFE5C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742038733;
	bh=LF6A1b0SrH6q0/L4Sef9+0yRyviMyghBhrhR0rXlMJw=;
	h=To:Subject:From:Date:From;
	b=TpHNtBO3fyxRAL+zCis6gnfBIkXoiqqIpoNS3sby6VSJXkji45mBfimYAGbg6F+Nf
	 qqm0UflVFMBuN9UOL7h4AEX3o81g64AAYhwWT/69rzd3Ai96r3ZlimrZeVZLoPGKHk
	 w4/Wn6+zws2vZqYGxFVTcmNXX3IT5H9oS+pCku7i1OZdErfPn58LSG9y0E9P9TJJ/Z
	 Fe7utbE7TY189jnkrrT18zdaJvvcbtVyBhd49oXNw1aAS0+i0jA9gk/TRlPNAaanrE
	 ZD8ovDyxkSGYRPyZtYBosvI3Ppod151OoTKkitQbB38CUw5W8dRmlKHky4n9I5Rxgp
	 nUtUrG2w7+YpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97821C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174203873359.29628.2957640094453590545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f7272646bc4387f5e56a193515116195261084bb3bea25ef813723b688fbd9
Date: Sat, 15 Mar 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742038733
