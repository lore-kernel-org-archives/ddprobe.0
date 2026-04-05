Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3047C40DFD6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775388934; cv=none; b=G+mkGFUN80oJvTG0zkQR+vhJ6tK9QKmSSTCH8PWTjR/mITrumN7Vvv3BQHSHpVrJunJII8apUHi+Zo9d0oHcS6RVig88Qyk51ZxW86r4uMcAypAWqHk47wYmpu0ucIgUpZ8LQw7oxujW8lDeSkXY6EEW9aNgHLIGiRPN8dIX0pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775388934; c=relaxed/simple;
	bh=usAR3NtRQPrW3AxcW4295wDoYHtYxoKHAFUuBKE1P4g=;
	h=To:Subject:From:Message-Id:Date; b=j2j9Ptp78jLB5uh/DXd40m7HAYMXNUIvAUfM2WthMlpL6kilvCUSs2W41eG9i1b4jG8mLrs9QHfKwxEjd8WLnuoEh3J27xdCtKQLx1v7aFzzTpIchSJ4KXqBmDWlSjbbJpQIoc4zM4yQh8Qlm6rE1+tvWo9D3UwjFd2yW8Mt5Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPbpjuvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPbpjuvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF07C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775388933;
	bh=usAR3NtRQPrW3AxcW4295wDoYHtYxoKHAFUuBKE1P4g=;
	h=To:Subject:From:Date:From;
	b=kPbpjuvQp3EKkj1up3439EaiKuvlgw7n8rHDHy2V+l7OkCzJaXGPmItgtdca0lFSr
	 Yc9flRFIvD3I405+9y7sDk5CxcAAEklKSaV4qtIST3DkwScxy+84Ltu2VPlSX9KvmQ
	 d0zCL77p8LTYmZtkjgm97fKt0rM6JxnN8JxyT/MKpg20drqtH1Yey7rbZRxAWBOxqG
	 AtG7bo78zkOoeM7+HjNml1oERLjmA1Nwlyjoav+QzIMUpzNiAUKDp6bau7Dpf4J3Fy
	 s4W8uPI+yBkbtWqZiBO8+53DL9iTLOJOjjqGQQgaLcBP5Nr5XH9eWw2FNo/fbZkym3
	 06GU7CTwRyn7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6BBE63FE8
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538893369.20550.9645448803803469647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec5996749bbf278afb25e1dcf9f04969a4a192a8dcf8efab99d1757928bea7a
Date: Sun, 05 Apr 2026 11:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775388933
