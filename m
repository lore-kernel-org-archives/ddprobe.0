Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49A5189F5C
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735395953; cv=none; b=U6cYBt8T1GCy8Fc85q3vQrxeyFAE1lDgpEfYgT1AClLQmCGUoO3h9igpD1j4sv330i1ZoBf0gC0tmgc8eYtfJY671PHvfiYUx7WqlcxdrS0jjLjtiWyD81A3NM+nY7jJkbSqx7uRWKO4NpM/N9fyXJvHpEnNzVjaYaWjrR//swg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735395953; c=relaxed/simple;
	bh=yNmmYcsqHUbvdFJ0YG3GT/gqyOolPbkIVfTTJhO/m2A=;
	h=To:Subject:From:Message-Id:Date; b=Wl5kMrPHhiYbTcELTUdJC7aLuCAs33By7P9F/gfAqqi1h9pY1R2Hn3p24cDEFQ+pOER9y7W9JvmfVbXZwRd76FM31xHL8uUTaelQWm5e8gRPubtUd2nSlQRqMd64s9/PImB46cAw4jH0VVUZ8UMhiFEW572KS29pC8pw4xZXdpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcxc6ybB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcxc6ybB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A498AC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735395953;
	bh=yNmmYcsqHUbvdFJ0YG3GT/gqyOolPbkIVfTTJhO/m2A=;
	h=To:Subject:From:Date:From;
	b=bcxc6ybB8ZAflBRS2pdoTTrfFEibLINaN/EV1RmZiyuPonpdEd9a6xGwK6B2ex69k
	 YcKfj7rskS+0zN+V85gy2sITxrcU0HxwYZicUISK21xVfqxv3n5Q1RaIqaXkmpkZaY
	 97KctJSG8fnt1crA8MyMYzLmIcc90IYoEJkTUIx88mLl6iyzOyZgSaQImsOSR/x4Rc
	 yMA3AUCrMSm4jpGvbUIVfLjkZA1WBoOQ4Y4iiYUNpJDagKY0PX2hh6me1yxh0P8iNY
	 +n2vRrQjabP9hHjITYC+pYqEcMDxP2C94eihran5SPDdDqcT7fghOoRqKIfffnHbeQ
	 ZcWa09Dp8+4Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95211E7718F
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173539595360.3643.15298079102623561962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3306ddfab77d60901d246f7f88844c4d92cd6d07c486ade365675ae93ec93056
Date: Sat, 28 Dec 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735395953
