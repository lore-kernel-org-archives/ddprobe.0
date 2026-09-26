Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F404137923
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790392234; cv=none; b=A47kV3uP4d4C8Uknm0xzeZFT491+cBItJgQ9oQb63r2E128e48mFpmcHJgBya7TfiUa8Ib+NRMAK/JbSCZwUi3FTbHgCt6xS9yce8pH7uuWo/PUrnmdclHqIc57C44Hws5eRORxlSSt8d36vCaLxITF7KBxtE6F9sEz2aHoj6ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790392234; c=relaxed/simple;
	bh=PW4tLXscZYbHbEUkfFTLmAQsu6usSHzT/XrfikSSuS8=;
	h=To:Subject:From:Message-Id:Date; b=BJr1A6f8lQotINrCOVlDk+BwIseLclgI9HRDL6BsB5TlXf+F+nWUG+hoLTvXmolhSbnGXtoOM1FgdtuSmhtxcNLHtWuKL85494bvICixvqMvom2O2sY7O8eHvFDkbXmiMkxe8eHUuSHlmeQdDEFr63XQmZtnssUZd+it7HtBoNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIoZcxJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIoZcxJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10F4C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790392233;
	bh=PW4tLXscZYbHbEUkfFTLmAQsu6usSHzT/XrfikSSuS8=;
	h=To:Subject:From:Date:From;
	b=NIoZcxJHmk3LfBgMFxrDycUg5PMWqpgptM7uvGSuuRN8YZajzbbO+fxfvODqLGLkV
	 7xgDrHEjwABjEAVXNcY7OKCw90JlbKbLKfUxLRfKyRHa0GU/ihWeBIBd4iOYfLFHqQ
	 Op0GGxKl/vGuZNMJxlP+aDRf0qLcOeLXKdC918cB4DgArrpCcCqqQ0aGoUGyVdPECA
	 sDQybBvy8dw+xGwI7VgyQAv7V/jo+EasZkJ/ojb/FXCzGpkG7E8Ni3qgu8BHedTz4p
	 yfvq/jjemoP6dagYYU3r2iHGggE5oSTe9SF2HiEz/Yxfbeso10QL7PeQ1C2JzgV/CO
	 5ITJ3z0RLf28g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8B0C98324
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039223368.4197.15729070611669485353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca7f3631ec5c903669d8ac7bd5c0f84e97d7131ee983e126378389372a97537
Date: Sat, 26 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790392233
