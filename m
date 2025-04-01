Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0BA1E5B70
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743503395; cv=none; b=iNoIrzrMUlWYMYCN1blL/4NfIX6R/iBu3+JY7WVH7rWADIGHG/krz+zvMsGMJSBKs84gZjvROx+DWd+FsbWiHPvF7jTkjwOlw8oGXgbmWVpYIO0mwteIUIIY37zDjXnX5d6SfFc9XxMUTJBTGfNFmCw0yNls/gA4Baw5gr5JK5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743503395; c=relaxed/simple;
	bh=TfDGUgEl10pCGOoBNzo0HewJmhaz7x8eh7Kfgd/YSWU=;
	h=To:Subject:From:Message-Id:Date; b=FNxO93Nol5LwuawQBhZPmZ3E/ix2N5YoRNeJDnz0FjVZdv5L26zy7kF8BdMgf8Q+fhChdBrT5MBavKF7pzTf6XjrKeDin07wtl98Kht7a4lnC9jvVXYJZQPdEEXl8H3JBCoTQkyOOv3D9SVBYXtvPDEJLjrqly8w88wL79rMigI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYFPnthh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYFPnthh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FCDC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743503393;
	bh=TfDGUgEl10pCGOoBNzo0HewJmhaz7x8eh7Kfgd/YSWU=;
	h=To:Subject:From:Date:From;
	b=JYFPnthhKzkKmxvmpikHDBkbgMlsGXYR5Bmj1Y9ui7v+Xu0vzIBFekJjaed17Rjt3
	 q/2eBoU41tGIi5xjxC+eFuPxmI16Wo2xPuhvIXMQF6fokpOxaF9nQl66JN2Yns3Mwh
	 grwvOg+IGx9g0mUkoZH/7sObmbBWyyt2qQdPI4Z/FjY/Ki8BgVxL7wKTKO86xr/W7y
	 LdD68bPow/Z3OzzPyCaHF3ipELA3Nj/5BtSsvw5K8ePwb3spTNJrcmf18TA/o1QARD
	 /GzTYl+VLOKoamfK2AWT9VQh8HVMtErwKs3uVcc2ZZX0a6lufMyPD5sdkFJS0/P6Vt
	 ho0ts6lXerWyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973CCC36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350339361.6767.5578858510000942720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62c03514624fd41dd5b8d13e83f87e7e687a3dc0909c809a39661fd07cc742a
Date: Tue, 01 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743503393
