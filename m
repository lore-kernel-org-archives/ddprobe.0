Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4FC4502A
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743871795; cv=none; b=A7hFPtwggkSATXs75gHOWkLOc4MyVfD60SU9KO0VsYluPxXiFdSnX3U/b+4JGnRyUL6weeSzM40jDmXtILq51WjrSlXjRaGEz/JACY42Mny477i78gizizrS27XmS+U5Aqp48w/zv9kTSsudr6/iSiupadmATQm55At0nnPWhUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743871795; c=relaxed/simple;
	bh=fs2435D4l1XZ04zIecByn+CT0vVaAs9MVCuWCVak9F8=;
	h=To:Subject:From:Message-Id:Date; b=eb0cfaSA/LpJrvoJ3MdLQImXMOHKKQi8GJaEDAX0Aez786KPTth6+7hM9rlgD67ganJ1z8tbRw1tu2J3PIsv8Pd7TUnH/JwhG5sXt4dXmkWSp3eLIb2qZn20AwYOOzQVp4c9edNeHCMWdDoVQL3rkcUC4yXG2/XVBzmD8DGgJP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiHZKIUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiHZKIUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9050C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743871793;
	bh=fs2435D4l1XZ04zIecByn+CT0vVaAs9MVCuWCVak9F8=;
	h=To:Subject:From:Date:From;
	b=oiHZKIUdVbL/4DIy1O+btNyOK4EfUe26i89qoweEmv56CHpEUADkMKqMgwRCTQD2T
	 60+pdZkOhgOFSs0Sjj3YNhFiZyHWH1+6FFijMC1vw79pkDl0dwAaG0a5N7GMo99FCY
	 l2/l+d/SO1jGdWm/VWrxyW0GUDAs1KSWy/7KPmRmY74ZM6YDaxzvdkjOwb1GRI0Fz4
	 38uo5pk424oy5D931D2QDljjTfhSCUTmUWWRuVatUz12Q21z3QdK6DSJoHtjv3t9PO
	 A7YgmlOkqRB5V4QJuXmYaARVHYShpmXoVioAU2k2bLKQ2CtHRpDMwhx1rSTBmZA07X
	 iFPxL3nH6LZyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDD6C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387179358.4939.10015826091316461140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91718fd534dfc7c479c949be2ee0cb5a4e2b9057a437c3bfdad343d4623e568f
Date: Sat, 05 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743871793
