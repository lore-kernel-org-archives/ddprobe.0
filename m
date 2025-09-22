Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17989192B66
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758539394; cv=none; b=t0Y8DPlt0NqrCP7rM39iFK5ZM7DaPS5aIvoX4W/NtTYUbF+0wSK3ryM0rpPNWBDkKmY22z0nUblIPlDEDmXw30HgakmN1cDo3eZM6MVIAaZ06vnIJ+rgEhZJggLdI72lavF79tvWc6YlvsjI9wb86VLQkBH524oUicQB38aOiYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758539394; c=relaxed/simple;
	bh=mKTjLTmG5QZTkPsUS6x50kFA+8VkTtWyORd8efDDTGs=;
	h=To:Subject:From:Message-Id:Date; b=B+o7bGl0wqPNmHs0ehpIWVKZmS00kHDDDx0A8xosm+QYvsNdfrHHF+8DaV7ESlgyc3DN/KWkZOsBMRbgnyl9q5Ze/bWw3AWp5cGPbK+0exmZRB8YUTc5w7h0X2gKLAC7pdPpnFUE2JE2ukYd2nJ2pq50pjLN8e+EX//5cb9TqN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNGhWMMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNGhWMMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D018C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758539393;
	bh=mKTjLTmG5QZTkPsUS6x50kFA+8VkTtWyORd8efDDTGs=;
	h=To:Subject:From:Date:From;
	b=RNGhWMMIKaExPM2ZmdXoQHAMnqgdIMvfcfYhwoP/nlRnEWIlI8JaFfhz0KmM+w+V5
	 QHK1CNSa6kQZHdPHTIPEGIcvRU4OGwm90m51k1IvLiTSLcW/rDfVMfIg3nvhxohtbR
	 44Qgxmy+4hPKjdkTJCmeh7iOjxpR39ljKAFyO0LMeYnaRQRfLP6qaT9rSatWtsvzvo
	 2yBHC2Uj2sE1NfLJf1nCTyTQXxiQBj1+wph7qKtUfHjI//OvXl2JKh8GI/hpirsx+2
	 9AG7vuB8VPTgo1jfPyMOCgeeGfj+ydfztSICSmhYiQLK6jukRwMbRjhTbGJXpV+ra0
	 E3CcEtRs/9Mdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90774CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853939358.28146.15491562487342547598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58dc61c75f9c18f912981c516f35c89e94c9ef534ba63bf1e2ac36be4515eef1
Date: Mon, 22 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758539393
