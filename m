Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F74EC2
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728764154; cv=none; b=VvJL8Ihokj6jT2hCbjZ9I/D3PhPx8tuSVB3jswzLQCEoDJLGhhxY5o5r45SSkX46M53TJR7U93O97DiEjsOlkb2CKwwizhg+7KTqhKKtyuDZC03SV0JxiPxTe3YkA2pjYcC8dTascouLH6tQbXdq3C8IzWZS/xsH7awncOmi/08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728764154; c=relaxed/simple;
	bh=PMuqozzoY46wz9f3+71nu5EajfmNgSBKVCO0cw5PlfE=;
	h=To:Subject:From:Message-Id:Date; b=XItVH8MPHukJFlWvdC/UedxtOnIQQJy6AmZi+2FtQNyhjF1yfQhY6VIjg/syD+YgfdbcxFkyKWk+WCqNepks6bDudRpvG/6cnNbn2pECEG3+2FtuTNdbod5z7QEoVnSv68mscd9V0txC2bsuHnCbXvREYmSl+iPnbDT0ZnIxlBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3JxELuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3JxELuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01FCC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728764153;
	bh=PMuqozzoY46wz9f3+71nu5EajfmNgSBKVCO0cw5PlfE=;
	h=To:Subject:From:Date:From;
	b=C3JxELuqgTh0EoN5QT8R5gOljzcSv1RI63Ii6/WFH3SBz/WAXwgj3Y+tRNfBAhUl0
	 O5AxLBLXP/IuAYVOUhsog68W36/B5S6JmtbTmztEBxtTjioHhDhf5Tg95wYaYtYaAY
	 Oe3cSnx9PN6XFc7ckChFXKeYuc3we5uFHgJwE42GLVUVCA+jU8Mh09lKqNtpKGbDY5
	 S/NVtRUIdcSP240B/HGf5PRQBxHdmLEIn1KvyKzm7DsuhhQ5gcfS+WWHh2dyUBMMgV
	 suoq0J5ok6Z/q/e52n33/iRwhd81D0kuFHu6sP6hhj74FyTOrn/AjGinLGwa7ntVR5
	 6rO1QrYnZvQ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF55CF2578
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876415361.21126.12957302064859717389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b9b054bbd0a63e536c47bb6e5281861e1f3ac4c6b6ac2452a0db1ba5eb8481
Date: Sat, 12 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728764153
