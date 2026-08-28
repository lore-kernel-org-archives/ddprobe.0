Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5000075809
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787878234; cv=none; b=Cl3+hTXFqpgB/5pl7Ejb4vIzrKmfG6SYuRi+1Vbch1s9LJFvaLbsCXfwU4YG3j5rApylZN7rCLpKY3ZgXnwALYGOgTv9voyXdhUI2cy0oKzBH8HaRZxELLnZPJfIrZ4J8c5KPO+57UpIc9gvNnU6SyllF2HSLaX/MkFb9tQT/FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787878234; c=relaxed/simple;
	bh=OOkh3XcWtDVthpghZN+rW8U1nj2ppKStlspOcEsFr+g=;
	h=To:Subject:From:Message-Id:Date; b=ZMbj/CKPY153t4SxRdWt4VrzeQ2CgfVroBCGsxxcALfrHCg515Tnqz2BNYey3ncmUIlrcFSGbKMTUbrZcTZFSprvxBFRc9Y7599R/cd7hKH8ZMXkn/yV61jpIts/gc5HqoKj9OAIKm46uJDUo/VHgj3me7TDzc4FtYKpnZ3OBqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRVr5Ofy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRVr5Ofy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEED1C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787878233;
	bh=OOkh3XcWtDVthpghZN+rW8U1nj2ppKStlspOcEsFr+g=;
	h=To:Subject:From:Date:From;
	b=DRVr5OfyPe2f8dgaEr+A5kJ2uSCHJfnuQD/jkzmpSRb8sBH7sEP/u8+XuUy5S5R0p
	 JeDuZobyhq0ITC81J9/epUpknr8eaKcsSy3+PuvlhJO2xh+KC9sFOjoo9i7CtQGzav
	 zYPuk2ZYZs01IK0IBgJY63ydTaY1G+Jb80S63f42UK9bzBZCJBn23u9+75yxer6baC
	 424EJQc8UngZuCskXTU9KGxUgy8IvskFqaZRIhjZB5+4swWltwizxx5Glrm2fhR11Z
	 tu98JWkE2A+3uIoHy0TkEs3UdZPEdbr80aTM3L7RO3YnCtQtXDfM2h7w02nGwvr5uA
	 F0pXh6rh3c/3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFAEC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787823369.21749.13344862776282111497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d665d4ada9a9aec72c438067f8adc4f0716e666b70acf929c8d68af457f33eea
Date: Fri, 28 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787878233
