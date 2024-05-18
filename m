Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E05383
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715991143; cv=none; b=b5HYIc88kq91n68+2YOTlAurNatXec828OXuyVbWCGbNNUCKhPGs00S/wDETltoCgDnEf4lmPNz150nTE55LRbDaBgONV2bvzuTYb8UiYrFq4xaBg/klt7UpHudzAyflThaC+/SXmCtwPireFCrGTQrFs7UiWM4GqLSMUMWcIqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715991143; c=relaxed/simple;
	bh=mw04WI676dsnVUhRdYGDqrDKNM1agMWd/LGHAnyT1hQ=;
	h=To:Subject:From:Message-Id:Date; b=LP/krUGbopTAWJHKQRHjpp3RDpB4dPVrCZOjBsHcq7rX7t45C6MfVyr3tkX3rjYuDdTmOn42tp9Ayz0b9k2aOsy2eZ+2zJDsgpYfmq7eHuh97SpX0UzXK6VVGBmxplSNiMU4/vE8O81H28elzHGiEyBPp8kAkm28g31pr93Vke8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XD+KziFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XD+KziFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7845C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715991142;
	bh=mw04WI676dsnVUhRdYGDqrDKNM1agMWd/LGHAnyT1hQ=;
	h=To:Subject:From:Date:From;
	b=XD+KziFSNfXn9JWzIv0HnZ8VXgKVOrLhkexWhytws/XT3RG3UyzR8OaELkEg7R1Qg
	 GmOhIFKAs40/kdITq/XtYuuvrIBsa6BHjEX0+zNNPOhPQnp23a9yxN/QxjuBgWfN5d
	 //e2I7jINpXBKlIZrFR6lcXdDt6rr4hXSpJubTwhhDPSzorF+8+thTN2ZvORN92d66
	 0QjcfA7flUFfiwzU1Dh/KUEjeIjvJQHxxOaDcmVvVNcFsRIZCEHSNi5Ul4quRP5kQS
	 Uus7Pj2EKcx98c4WVRsMFPxPPYIfrKFjHEyDl0u7BIPoEaX0NXR6C6iG1EhUj1TBrR
	 ai7O85pmeMaXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A04C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171599114276.30220.12814844763395683429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9235672c4c8bc3d86b955f3e238e79d2b4c7d9faa3dbe28c3c6d110861b005c0
Date: Sat, 18 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715991142
