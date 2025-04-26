Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF7A41C71
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745701794; cv=none; b=qX6S7ReRUr/A/5u+DkLvyNd19ffO6u4GV1U2xNOG7l7KtfdDrzDdL6ejUNhyzU9wIk/2xFYhwQAnng1CwuUtBH22UnUS5QbJMdKWIyVZMlzNPZNAJMk4RZ/XINKxOomfEEN2j1Ln3rfLJEaT2ztbNGkuMgwVYkZv+F6M10UKzPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745701794; c=relaxed/simple;
	bh=vgIS5BLILCKrtnDEuhUITCetxJR7m+q58dQGeZJyEPQ=;
	h=To:Subject:From:Message-Id:Date; b=sP+wwDAij3lWNjXYhRmnaa8dUFwItaGSAvYzuoO7SW8HQgwe69Esgqv7yQjnBzOUTag/fU0sLZt0wq51dN83PkGwPwH9uNTBJQl+JHhL4ZbhPl9konBECAOtISF7QqjECcWQarr5kjMhvfXdbxO0TtzaeBt/sl6sc3vn36ZCiUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBIB+Piv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBIB+Piv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F3BC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745701793;
	bh=vgIS5BLILCKrtnDEuhUITCetxJR7m+q58dQGeZJyEPQ=;
	h=To:Subject:From:Date:From;
	b=pBIB+PivIvPE8BWiXp/aZS0XdXEAjOWuH+q8v8PAY/EDAPNV9252VNfdj1twKspJh
	 +JeFaheDHfNPdgNRImN0mbR6T4k/w78Ai7EtViQbHDhUumqveF41hqehqnSxbnKqQx
	 Z7UPnqMbsyyKqGRltSAiWJqLAPESWuND7KF2diNKTtkzmIRZ5Qci0OM+tHgS7cF5aQ
	 gCURVNb6wjupLP+dOwzPZRNriXFAEUPdPWhv47ZmCClH7HIqfuunAastGN+A6evGBZ
	 4Ju0hwg34ck7luy3l8me9YP5mQQTkJpyDY8xgV8FFPl50o/iwvDHRaZxRMBFBbtdJw
	 tMdMcdIkrL0sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945BBC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570179357.23785.14955487737280616126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1366e0e4477a2ce49d02551089f9e4bd561bd66b32d7c6bd612cc50c6f6ed7
Date: Sat, 26 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745701793
