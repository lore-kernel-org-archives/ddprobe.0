Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EC038DE1
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742788194; cv=none; b=UBcqX81I0XVQK66+MbGCtIrV11MBGZsT9iuh/iUYAmsgV23K+sNxAjhFemI/ME2e+X6tngqjAEbYvuJbmKxnXD+hPsJal9JhVs6+Jfajs7zBLQwuOM/SdldtWL8KYhd44gOxu5VfEf9AUJ0jNbzNZg6DWGYmTQwqDmZuWGx1MJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742788194; c=relaxed/simple;
	bh=bv8x8a7Z4hFywa12V4WBn2YaMYoZg21oZeHLGAvM/rE=;
	h=To:Subject:From:Message-Id:Date; b=opZVh0lz8er1yOQLc7AKQFkgiUlKJblrTxd0X3WCBiTcQC1a2DGIYC4PjzLJuCU7QkkTiLwg5M+z6pCxwa9jct63KRgOn+XID5DllB6IJ4f1gtYk4Ogu7ofw33mDpCOaJUqB9w0jCFCFVLOgLYZyR9aEmL0gPvq+fHxJrRbjL3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtoDR8aP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtoDR8aP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4958C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742788193;
	bh=bv8x8a7Z4hFywa12V4WBn2YaMYoZg21oZeHLGAvM/rE=;
	h=To:Subject:From:Date:From;
	b=BtoDR8aPyCwEuWfRivIcqdQipsqBb53HFOqk7bsWvyCUcczazhYE4CvHmgwSg3M93
	 4M5d16++qrmQbXVq8YdTmu7o/Yy5xbyir3Lbh1Gub6KrDvVDLOr+1nxFzI49u+Quea
	 roeq29YqnObQycV9HlSTz6uwKENdU/6boil4N2PMt5BXI1tCCfhpEHa2F1ojGOfi7K
	 lx9X6HpPnYD8Nx1jTIPSHSOvJ30HMyY7eN5pM1htFriIIumxljK6rXdRauxLfjkEdy
	 lPqCX3n9e8N9QyeOz6RBoeeLMaplQMrx1wr1T0s2EAlMMuDS67hpmHgk1gR+Mpala2
	 BN5rqFbhOyw8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F924C36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174278819358.8622.14716472656974500480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb09746cc7739ee7e763e27e517e8f4dcb7bd4df729cfd16f19e2eed45b8dd1
Date: Mon, 24 Mar 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742788193
