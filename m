Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B8335A388
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775283934; cv=none; b=nDarprqgJO0XrC5VZcrWZ12Ds+gOLWEq1okagVQaf7RIwLYN9xocQfKUZcSB8ejw/YlHNX94pY2BKGJsCojYmNIRLTDbUAZmla0fz7KhPJ4JIBeUPkN+KFs96L2N7iknEd6k/HU4BjU/OnskAUM1Dani9F2YyI2jtKyN9oDxy/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775283934; c=relaxed/simple;
	bh=H+5HaTAxVO4DQi3zOt1T77htg242jaiev1mlqqwYVqM=;
	h=To:Subject:From:Message-Id:Date; b=hGBJKMibNuZ3H6e6whAo58uLNzjoJck2aVPRr2cZ0J6Wb2DDRvor1yGML3+w1e63i0yydwBYY2EHfVRlE/r7QiqZADjtK+DQK9sYHuMHurCBDLVyOK7N8PzOVLbkhiyQIQ2n2DEVwLSXOOz/J6z3jDVl7+BAzi9e1eKvDzP/m94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVSKayCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVSKayCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F40C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775283933;
	bh=H+5HaTAxVO4DQi3zOt1T77htg242jaiev1mlqqwYVqM=;
	h=To:Subject:From:Date:From;
	b=eVSKayCmPteIZP4rihPT+jcn5Ve9yAFJeGl6bbztAIIJgBY/XNpSbQFYt7lm5BtbY
	 GepaWgshcBZAYDLsvASbmR3L9YlttLefidk871FtJFEwzgjGNtyI9r6rv9cjFvfcIy
	 9EABB38SSnA0s2IAh3oejtyBXFNME4d97pFbaXl3Wh5I8XUTX01VQOSp7SdJXvQvjB
	 5RJoMqRFFogF2pv87GYTegMa5T3w4A07Oy+vObl+9XSTfBVMihR/NIbDo9SImvL0Mt
	 kpc6SGb19xVxItTUp8P9MvPdT4nev9sol3TtAEd8HHm6R6viZl9w1OktabhsG8fhQs
	 UiL6S4Ye4r2cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92E6E88D70
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528393368.23495.1318674096720453869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73db4f11aae7e5a17b88f48d6e4f8c7c272756ced6e9b6b41b31bb6a0b1ac819
Date: Sat, 04 Apr 2026 06:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775283933
