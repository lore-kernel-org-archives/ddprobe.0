Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2688F3DB30C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779275434; cv=none; b=VNytEKceXrHsxf79285WdOR2doGTleFsaoqLCkPb/OTI1z87YX8iXu8/0DPDD9FDbcwk/t3hTnLQus6MDyZs3WNrG1futpZ6qxJzl03Rf6aBFIrnvD4Jd+tMTrc+Ox6/5vx5WzmVhNpKojLSei3u5MRp5fqrWLjIlHDTIshgtE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779275434; c=relaxed/simple;
	bh=OHHQhG0SADUc2ICm04+yc9L+pcFYhMJ+xSesHQl7mls=;
	h=To:Subject:From:Message-Id:Date; b=ivHWIH1skFJtqwtPm7R+ihCxfqX0rjn6A39ZxSZcC9tJ9ZzHQ+gNOJs10pGzkxHYuMxa+6G8kMgnKg6KJYfwN+JCOsj60zZbkuKE/0Kxkb/hZXQvYUiA5Cpgo/BtLHTrQZBW2zMzjPS9WC3DDClzn8NyxUZi5W/wiCVxTtFdEg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLYmvO0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLYmvO0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75E1C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779275433;
	bh=OHHQhG0SADUc2ICm04+yc9L+pcFYhMJ+xSesHQl7mls=;
	h=To:Subject:From:Date:From;
	b=XLYmvO0ex9cLjvW3pJqR3qFTZK5TuiqrKWFUrWkuN9DETz5F3jlcp9iO1kAQ9xVc7
	 0CdFvhVa3jmmO+NbqsmSF++3sVRdZHrody7h7fde/InRhcyzIjcTPMHU0/gS4QeHUl
	 H4TRUEyzwiIKXbmpiwPL1FAMs9x/kwT405NAx6cDWHZDXPWBQ5/0kfh3sYgYF8ysWr
	 e66Qyt139LJ2rfyub67o3luvuB7ktSNwT5Axpm+C+CqN0OJ/ZanwS7MSjX0rRLvpgO
	 0bWSazx9l7MUCeKoIv183S8fJN40exMBfjWILoKQsnj/GcqkEBXTFe9d3219dS+1iv
	 5k46aF93du9IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5AACD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927543369.32261.9990359147051976508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95abc0da05d050ffaaeb04f9e1f676515db18c622a92237cf6a657c3070efba1
Date: Wed, 20 May 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779275433
