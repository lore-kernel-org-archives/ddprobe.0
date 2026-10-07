Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3249C39A808
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791410434; cv=none; b=XEeXLSoBwdP+bvVX3LFvJd7pIo1eJCFiM/2t6jacB3KM3cErPJ44BlhS4c6BXCN+Vw30yekHTsMPpY9DwwA6BmL17Rc9eSTx5cYydgb547Nx1DHQjtn/X0nXOcYKx0Im7LsgjLvyNjGj9CRLvYY52uINCOOstCxbnvF9C9uYRKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791410434; c=relaxed/simple;
	bh=QZHkG/1BTkQ2Lze4Qc7qNs5k6z9QH2+Qe8zK1IUP4LI=;
	h=To:Subject:From:Message-Id:Date; b=Im1NaxBcjdbORZO+mjerHH6q6QTDvTIchkcLAOMYFmu4/684mC5Cs0FqGyjPbvpjp6K/PDLuvC+VEQeakB6R268ZlYv3FbMaawWakyAMfQ+LCJd269EKE/CYT4LsQOwJc0sojmNDGL8oVTmT8Lzmwu36ZOelUXU25kO96KYy/fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbSWypRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbSWypRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3466C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791410433;
	bh=QZHkG/1BTkQ2Lze4Qc7qNs5k6z9QH2+Qe8zK1IUP4LI=;
	h=To:Subject:From:Date:From;
	b=hbSWypRH+QB79iaX1gFuTsPrxDdk4LnhSJXvpkI2vMklJdyhs0tJ0RQPpuHnvtDih
	 C9Jw8fAjAImJ4TZLmSTGA3ZRwfFTjFwWXU0jTbhHYHHtMfbHLL7VKiUyMZnKzOgxXf
	 fiCGizpez7TwMqg2Dup72paxQL8qgKJlUimza518NEMTVL2lVcmN7QrJ6yj7N5CXla
	 lfeqrz97uPVxTgXyTg+JaNtMayytK6XdurdKVtRpUi1mNFAY99zI+wmNqHWrEbNNce
	 Cu4kMiMqb+3Z6koxsofQPm/TS8XlGKgh4I20dGGTwhxsFn90FLawJYjOofymvBRVZb
	 5q01CzFgBycog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC203CA6009
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141043369.10103.16221072122685663352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ccbbf6eec87614a611bdfa3f232abefa8ced7481e07a2cdd16f7e895b8df18
Date: Wed, 07 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791410433
