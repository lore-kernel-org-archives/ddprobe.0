Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A2A26289
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735720554; cv=none; b=KY38065wOzT+JlYJuf+Wms10AtCxbV2H/UoYCrWlb+nYd8qtHWHUwlGKTdms2GSAqYUzaA5Bim9Tp718M7m8qI21Vrlyu4Km+35pCGbGE4j2RxVTyLJkmmJ+n/xgcS8Nkgfj47w8CjEBN+HUVbVqFektUdnXlkZTfkimyF/CbF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735720554; c=relaxed/simple;
	bh=PVMvAJZuvX9LN7/DcDFLEvkhU1VgxIbMEkHszQeRCf0=;
	h=To:Subject:From:Message-Id:Date; b=k/J+LvHYfoYes43DTA968OkfEWOv5xftV3fgrqjR7OnXsisDHK5Mgv6VUQnAOxcNIFYbuHqTmyUMwLI6cLsKtzVkhU3nfmblPP9BH6iTEzLbcVKqlUQPVK1OAU6feGwDV9oOhhcADY7sijYX6bB1LAwpC0oUYQ4OUKtrVx1wi2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDfPjFPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDfPjFPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA92DC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735720553;
	bh=PVMvAJZuvX9LN7/DcDFLEvkhU1VgxIbMEkHszQeRCf0=;
	h=To:Subject:From:Date:From;
	b=mDfPjFPatKaL3j3BmGNxxs3hjqc9bd3n0RLH2KM9JhbOPJk8oWa2+T6Wz2teDM0o+
	 /LQSsJ0KJDhmcY+IE4hftwLpZ/IE7LtRAi6z5HPeWhNBAtU6IIuIAhD2bU2sYuGLyV
	 hNjgMMQ0/Ipn3xoDg0JN50MqANXt0mPHRnwIouDXv6OL3byB91wfLh/7HyH8ZOorq5
	 Rv7IsEYM9hDeo5GegMK5/8V+fL9dCvzL+IANsdD/bVd4XNSOiHmjdQYxX47/kiJsZQ
	 w5D4QGOmIGOFVDvQ9L+2ySz0rj3qleUqGIiQw6v/SnTUxdSeYIS2SgCVP0VjJZxhs3
	 8LDSJe2OR8taA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE9E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173572055358.4114.15032115997410707108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a32bb18575ab8de64dc55f46d14164d64d2651267783d1f7e9d9c209fed4e79b
Date: Wed, 01 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735720553
