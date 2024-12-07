Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3071918638
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733554554; cv=none; b=hLUwVMjSKy4yhTpi/C5Wa3E/HNyjxfgoy2308DLtsSnbl9tYtYti2vfH+hNy3xAol061GG0bm9qmppsxhv/8unWsWQZ4RwS3gJFCPFd5W9vctSCTbanyQ3K9HzBs8nijqHo5CBzaBiZC/Bh2MOfIdNlqqMMSV0WrJLQJfiat7xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733554554; c=relaxed/simple;
	bh=LjMktbTdqaLBnH6MNbK9iXPVE3wtzZH9HqYXXg0lcoI=;
	h=To:Subject:From:Message-Id:Date; b=TyxJhKp2CvsFmOg6qnmrbYJUDcoqvEgK1D2Shyr5rTVasnYDr6DqSAuS3GqCG7gkJXRC1pIc/9gF0g5G3Fm8GELQ1SIlvM4bHtE+dGtZWzqP3loZUfiokrsdtJzFQ0x+EyYQ/Q5smS/tz4KHF2u8PwplKFU+94K4phAWxvKFU3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIeXgm0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIeXgm0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF210C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733554553;
	bh=LjMktbTdqaLBnH6MNbK9iXPVE3wtzZH9HqYXXg0lcoI=;
	h=To:Subject:From:Date:From;
	b=RIeXgm0gX9okM7Wf+wqDs/5iz0fLCJzqo6s4Qn9E3OxQrrUJhRHIX+svwkBS5L6ES
	 itafqF7hr9yENUVg0qN/A0IWFvLPnM0p+Z+qzBzdQ9YejxcOPxYVnxXOUTDDGa6e1R
	 8SxHXmD7NXieKudGrJIkwtpe+bI1FKapb+u4xTnghC3W3jUCNHt3GSR6B1nYnP5WWu
	 49tbaG0oFffxoD9xdv03LNwVm/zS7h3b8pMzU32jQtfJ7DJyy8ufGjaIBGTxLbmRm8
	 frE+KAGuPjydAgokWLjpLn6jJbgobPX1dRvQEANKBYX1AppiNiu8Qj1SxYQ5LD4awh
	 RCqJ2meRO9V7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957ABE7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173355455359.14064.123130443385243129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ef5b2dea5eddc447071aa2e16c86fa1d5891e676c5048d9dd5ed8e39b0cf84
Date: Sat, 07 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733554553
