Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAFAFEAC6
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730552753; cv=none; b=UODrCaY01r2yfSaHlkE3b4Bvel9y+4USpFNu1865yb/jdZbTi9oUToHnnpYYUT8jbIJ5BqVzMfRaGXkeMD32j2KVw+nNuzJ3d8uM12AxVaaWoz1d1haFBjm3qgmygV+viC37XUCZAuElDrwfy72m25zp6q0DnkbHl9pFNJf7FnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730552753; c=relaxed/simple;
	bh=w1nh/vYUFFOjXPUPV66Qvm4Fed4eZLZf6m+lrkpW3a0=;
	h=To:Subject:From:Message-Id:Date; b=us9UTJUD2H/B4xlOSkIU8PWXguvES/78zCkcncZtPYfnecEGp7dz5OerbpBV9Du5u/ddeu9p5Ttc/jd5kvxod5CQiVtxmtOon9J/TalESBHe3YIMYHB6f31SV9y8VG2zC1aDD0rT0apqmjX1ZsTYNDCOY/oxybNcPKsR4cBpZ+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYLrLCk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYLrLCk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFE9C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730552753;
	bh=w1nh/vYUFFOjXPUPV66Qvm4Fed4eZLZf6m+lrkpW3a0=;
	h=To:Subject:From:Date:From;
	b=NYLrLCk0NhVXg19o/MK1oDbR0vjmBRGkFx7nvhg+Cht4YN4UNIk7o1axB4yS+Xrtl
	 UInweiZJ3fkldW7jo8+2hTvfX/76mOlngLqxqI7/tBTEmhY60DSMZQGxZ3YEk9nvrR
	 9FJBQ0jExFgIO9Kty6JQ+0WKGZ5sDH1GiZAms0kASEHoGN1F5L6kVTMEp5QzawR6Zj
	 E/KiKV8IopTB9EnRaFeKh10ubvcKYdWTbr3kGN45PLqkbD79dhYKft9naasHBDcPhI
	 oF8JCivpmE5JTzhxpdSF8gIKF8uLe54lBz1pHvtMwQTtvVOYsbBZosHTtO0w1ilokz
	 oVaeRRMVY+GFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F7CE677F5
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173055275362.8927.16182864102964533205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200c2701b4d7ebfb8aee7b181d8e71e4799e469f85b8647642d162c1567f5606
Date: Sat, 02 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730552753
