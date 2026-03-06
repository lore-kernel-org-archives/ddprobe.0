Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9122874FE
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772801094; cv=none; b=MngNgBGTjLVavSeFYwr54+Em3aHvbnV7ky+g9gCfpuGwcocs6laDJDDWpH5k3XGVskAkrlWZObxe5LhEoGt32nHOvKP9NFjZYDLIPAeriShDGJLY1gd6k/OkdyAEqG4CF/HwyA8osrsoMQy9bYTFJ0U7qg6Obun87/8tvjRz0Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772801094; c=relaxed/simple;
	bh=AeCkmz28rwbnfwY/9bl3EvlaJl7SzdKnaCtkXYCyyYQ=;
	h=To:Subject:From:Message-Id:Date; b=SLbJPydZOYpsJsfiX+ZTSRcHvulGCiH76BbnRClW6oH1pJvAg7rqkJh5YGO2QDQ81YGaUbO92ypxX8hZ/PLg4vBVeoceT1UWlPXIwEZzEOzm6Y3WBRNOjyGc1o0vkxOxqMYwvdBPm/jGeg5P37zU0i4MeCxylueHocE/rGWA++U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jlrul+WM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jlrul+WM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7BBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772801093;
	bh=AeCkmz28rwbnfwY/9bl3EvlaJl7SzdKnaCtkXYCyyYQ=;
	h=To:Subject:From:Date:From;
	b=Jlrul+WMzhCZjgrYuYu9ZEBxQLSXgSghe7iUhEwj4ie1QTacz+g1l+a8eTH8/wsuW
	 /EZR6Mi7zWPyt1xumrljHMA/Esdacw6PYBsyyN2ACsJo0wWEWWCzKoasyFB4AW/fcY
	 gaqwwFQ0E7jrfKVkV+32moStMsgwQV/RUxg5DaTH7AopIXLrL8Y6J+BogDf0WnP3SW
	 FaTFR+/GOgecd3PC9kcyP6MoanFmSdBmsWpC29jySq+mL3+yuJwNl/DhGDVd3GWVvx
	 2jVSN0MkJ2lbETEeS9/TLDN63Zs5ds+b1kEHFPKFBL7h01Iuqy+s1oGSrz8OwVKgx2
	 C674X8PhrhFOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F649F0182F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280109357.18524.12644388861642964457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea9d7f53fd2fe602686f82d21f874482e0082719f110f8df43f692f34c2d089
Date: Fri, 06 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772801093
