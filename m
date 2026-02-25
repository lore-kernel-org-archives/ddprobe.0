Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF222E2DDD
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772050493; cv=none; b=ov53gyVPnihxx962oZDHF/1th2O2nLoQlvamLdRKHtlNZMB/0PEx91tCXdMzOnLvSF9j5C8rpxSpWs+QhwuTVdMXcLYJQcRAeCHlKFPPMS4jBgmhXha4yPYyxI5YYWuhjQfA8piZRS5NNeH3WPQUw973fYwffhiPXIS4dZSnWbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772050493; c=relaxed/simple;
	bh=BPBAn9FUe9SV+G7MiKMW9Td6UIVSgY4GUcLBfXp0f+A=;
	h=To:Subject:From:Message-Id:Date; b=YVLPJalM33l/xUCAdtCwa62jglO6XMkygBPRKIlr5sI1i/uIAhe8kU1omPY0zdnxQr4efNTQTOGv5HiJefpE2JbXZ1LZYne5/cdJJ+LNWtL576PVg8z+mklmyh62Vt8NDHKwZydTa5J5sDEdXiXhHhEt2M1lKXZqiUkbHfFyEj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7wjUGDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7wjUGDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE24DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772050493;
	bh=BPBAn9FUe9SV+G7MiKMW9Td6UIVSgY4GUcLBfXp0f+A=;
	h=To:Subject:From:Date:From;
	b=G7wjUGDw6JE/IpQLkG3QBEUUBeo3HsCOZc89sBma3tS5vMQqr78AH+Rq50MaX6Tzh
	 h1lW3gOZnqczIUcCrcK/TEDuO0X+oi6L7FB5ZQFdkDZ/4pjekLBdnxG4TqdB6C6oFK
	 g++K5mrEy20EOl/F8L4cXO07QMer+nT6m+hN3e9OOyfDWWCEf1j6Ur9PbB/YjGkesL
	 rGbV6C5ODiSXSgrFpAKi3aZhwLViD5PvcyvtAYYkpI525PVf4MMzPKc8sDP/00Iore
	 z63oryU37BjTsb1SMOjr1pVznWBGcjDlAfWmVsUz0KkAMD5cP0s9A/AxnKNRucW3qs
	 X4lgtTLxIqm+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A78FD45ED
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205049360.25656.14868215637787829797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7c36d99da738ddf575de89325a13ba720c2d1d38bb8e1e00a688883a039f7d
Date: Wed, 25 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772050493
