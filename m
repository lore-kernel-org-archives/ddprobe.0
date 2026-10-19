Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CB64B7A21
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792405834; cv=none; b=IZG4trG8iMESYsBtZrWJhB6Cpklp86WImAX3qn7cYaCHCjLlx7vA9SeZM4fbEbRiKYppFD5FwQHinQvjWdyjtKrKrSn2QbAfjM1207MhnBlOfFuSF9ahyGv6bSYWIAyv8ZxFLuZaQVBRyYkUFFMATyrysnK6wPFRgwLs2+he50E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792405834; c=relaxed/simple;
	bh=z7gL4hE4PYzauEAM4mCl6hM4f2m+cppiMV5YG6xtQoY=;
	h=To:Subject:From:Message-Id:Date; b=Q+ZYipwNDQfHjSVDrnfsg3brdt6LLakOGiaEif2YBoJRC+0Y5t+16fPKNusjvG5uGhQkIehv/fJCSGnISuyA9qu9A8eYwW4kzN/PevJKXR0pthz2//VvybMtKqYfzeaUangquC71mPxg4NbJL7om8caW6Y1YPCJ95jxz1RghbzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oR7VE/6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oR7VE/6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9B65C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792405833;
	bh=z7gL4hE4PYzauEAM4mCl6hM4f2m+cppiMV5YG6xtQoY=;
	h=To:Subject:From:Date:From;
	b=oR7VE/6vXD3k9CfIOwg0QSnxwG8S9CVEbOY2GTGrfwFJXBYu6+XSCMAe3N8rqwU8L
	 G3IdPn1cqBs71L+4MvV1mmCNvjiPNQxXULarTk9rAaSeJmDFOcBs6TDzyZRkQl5o+x
	 f+4mezWn5IauHXi9FV8FrRPJoCGwOwDLsIhFNiQPSi8zRWZ0elfkbN7hqa418UtyVi
	 9frmbT78/n8jq95mMk+fILBY815y+BKuGSC9pbwNC7m1JgtZ0H4r9nogkBGdaAfWYe
	 DbNZEHXGJhOV+TnuIqhXBaO4Y8m4ciW319An9hSz1GLRK0zfDkpFEAT3gk57stLm9J
	 EiaiCdY92M28Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC188CCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240583375.27002.9376854858801676844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77602cc160342d16dc5c5e4c39338ee798b30fadcbc52a7f7d0ba439e4ecfd64
Date: Mon, 19 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792405833
