Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADBA2D2385
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791439234; cv=none; b=AvmeYltvYh7ybY5gQfgqaDvILB/JvubSxo5kD64da1S3Yl5A0R1EVTSNV9Is1o/T6sEGKQjhzuFCRqTVO6lZIosubLxLF6GhUcW8DLvsOnolRf3Qx2D1pLROXr9WR8HcR+xYx0P4z4iE1oM69YX8PBpDhhmVa55lzaQ+wsLGfLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791439234; c=relaxed/simple;
	bh=ucmNaOArxuECOEcWpEK/Y+ZEVAl5rnZCCh2spAm+lDo=;
	h=To:Subject:From:Message-Id:Date; b=QqM3+Ju5CpH9mdbIMRev26tYVIVTe/Ojztmk5N47vyO32sD16E7mMGDlXNLcGd2tUaEnbLXg0uu8THzTIyl56OahFEDD2KO6LFX3SVOgZ4USxXqEwMDlyMB4anSjg10ZbanG1p8KsqmMLUyJWxGhfOnGI4nJ3wMjbTjawH0mI6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJ3Unkb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJ3Unkb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9246C2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791439233;
	bh=ucmNaOArxuECOEcWpEK/Y+ZEVAl5rnZCCh2spAm+lDo=;
	h=To:Subject:From:Date:From;
	b=lJ3Unkb0H97lZAqDYH6kOAkXgF3QUdgyTkbWY9A8o8LjvLd782ljSK6xs05BGD0mP
	 hqCnBHGIg0RfdsDLTa7FpJEEFYyiUy6lfQ0cne99iF4ymxy0bH9oVaK4a981Prgd+I
	 o/b/iT+Wog/JAVM7bCMBpU6VSqJKnnS3iBCr9hiCyyRL5crzro2Yy6aubPzCXAQ2NM
	 qNgUxfMJBCh/QxOBWpuNcNIN8Ww7/0toH3yA2J4aqXW9o4RcUtFRXjXxcYHWWEG3Sg
	 x5h+cwptLXCky54PZ7CMTsYHlN97qvTqQ49nnFew3u3NXv5XRE+Ki+ImomD6NDxlIn
	 Dxa0ACOEOrmog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F1ECA6002
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143923378.8533.14633670418813737208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b21621dc1639638b70f154f0ab5433fe321ade1d2512e312d0419be3cc876dc
Date: Thu, 08 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791439233
