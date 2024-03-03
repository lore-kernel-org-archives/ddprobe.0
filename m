Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0918C8F45
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709451497; cv=none; b=RbV61VHtfGycytQ2pXCEBIp15OYO3T8rs5a2r3FD9is6xOWYLeaZiwhxIuASxqoC1het1nK6BbTkb/w8ALRZhQXjwYEGVDuTQTcu1tBl6psQwrNs807/xdgAYOvEuq8R0E8ePFg1/A0qyS94pWGKzmquG5QxVOTKsgciKl2qC+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709451497; c=relaxed/simple;
	bh=EqMkwqJnXfX9T8UBN0gADOd6+n0EI1ns/l9qKhVl/hs=;
	h=To:Subject:From:Message-Id:Date; b=fLdlwwroBba2T//AQ2Ru2EnLYky0bexqpTdNt4o1rAt4OoCZmJl3CqROGPRQyQd2ICpWb0l/UOItxGgyCUNjJ7CV8v1dIMfIj0eyef9EerGjeDcFkdulpaf2GehJm3XzbflHT74qMjjINA58SJrev8ttRO/smWxZv/jyb6EcOxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7QeX/s3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7QeX/s3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CBE9C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709451496;
	bh=EqMkwqJnXfX9T8UBN0gADOd6+n0EI1ns/l9qKhVl/hs=;
	h=To:Subject:From:Date:From;
	b=o7QeX/s3m7l2qPQVvmo281zTy2bgbDtAjdpQA/JngAL189QQu4jaMqGthu8sxF9HH
	 E1BIczhYPFVQnLQPGYw5JWl0P8sGUUZjTJqV+aoj7POZiLIXYWQAagsQasb6/BJyP3
	 cBJx0irPUVvvEUF8WFAn/u5GToX0Z3V0lD4omDeyQesZUe+DYvy8TixWg5sgxhVugp
	 Ann7PWd5SnPZHHqQTtvbc8IFUItu7jkASMRqm/N6FXQx1Mo0bswy2k+feh7yute0pF
	 waPq9YVDp4YSFX5bjaiuqzQ7byh9YFSL4OHdr9B/4hpwnQnVOfzoDBI6p4fCvThioS
	 NpwBP7r1+SL8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F595C48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170945149637.25031.501395734807756672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49769ff7f346959ff852fcd1cb3087ba55369051ddf4dfd8c9ad32cf3583de7
Date: Sun, 03 Mar 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709451496
