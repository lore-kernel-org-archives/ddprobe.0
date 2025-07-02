Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E171CD0C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751417995; cv=none; b=YfP7cmrTgTYiRgQUOkIO/eCG6klbEoHE3fiI3X4Y+zbiEBohGdkq4iaKbukvWt9i2fVBve722kFubkHfDc8uOMyDlLkEfurmnj+eTaR+DKb6kUPajtuNB+WC2i84r84SxczPvhjkNmBzEUAJwmDf286zEczg/1EhMpjoYMsnt7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751417995; c=relaxed/simple;
	bh=bSEjpxYYFXXBnDTmPK9RNAy6hWVpd+sr5hYWgOHHbww=;
	h=To:Subject:From:Message-Id:Date; b=tqP+gvWophH/yxIakJYAaL5MWA9QiB6iRz3rc9vlTiygOjAgqKWc7N6zLH+vOy/fu2IKBnjDt9yZFhkYEqKKwjab8Cu0kR8KmKxcHjMrQvnszTBL8PmFwWfHD7PdgbCedjx/aIFdAJVgw9kf+kCGICgpiGEKgZ+YjALUO2j6yis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8UFKaQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8UFKaQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7C1C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751417993;
	bh=bSEjpxYYFXXBnDTmPK9RNAy6hWVpd+sr5hYWgOHHbww=;
	h=To:Subject:From:Date:From;
	b=f8UFKaQtdTEVMZg2ZTn/nG8Rtv9PXIKo7MKvCe48pM9tnsL7RxPP3vnx33iwM8++F
	 PuC5STphS0eBtvTBxYUmk60w36NzfnR97JlufgUGFJtIB5GJDAshqOhHNyP3T482vE
	 JBAiuFthlGrnWveqsfLVH9zs0gIxi2YEUqmirwifdVrGc4dIMPhYdSuLMu+6PV3KYt
	 tmOhLkznT1K9HrwQWfxGIrQeK2PADbR3sN6qegU88PYJ6pJKyu7Wh+S9weeftuglUG
	 osDnpim8cGJ5E7BiVSOuO6kHLUxr6ci+S31AhRTblWo7psVI1cmNWnKRMixKHf+Ex8
	 QRGxAK+p2Wwjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42EC7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141799357.28615.11861395767588861073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 110da1d7ea4aea039c9fa68a8428befa6796d93e75faf58f9bb8e8df9d5c2cf9
Date: Wed, 02 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751417993
