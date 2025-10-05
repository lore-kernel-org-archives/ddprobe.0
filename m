Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC1DF510
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759622994; cv=none; b=EWCdf1a4doGXW6H57YO2fvyw9+ZwgITnjQm2qBtuIJ2QGoSdcxKDEQKJRJGGwZtReTLlmqHRTNVXsIkatbpqedysZwWBVXRUMyo64PZ9H9CwyjPDMI6AEETNGNFMgLiEcwZATcvSkFtPK4LqXwDOA+V6B/azom9lMSO06XXHIK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759622994; c=relaxed/simple;
	bh=onGqEHsqL6USzrNsiA69XL/Pj0pwjokdpLTWn/wM1fQ=;
	h=To:Subject:From:Message-Id:Date; b=XQsHMAZQ+/XqEByGgS+xfqqFr4MMz6E//i1Eb2IANlbaZDoIh3kBjPf3pGgp4N/sqe9DOpe2nINBZV+cpokwyQfwcnZNlAbDcCZs3WVuQ+TWMYJKFBffZCpAi7vOYvKPPZ3kw3gTrzag9QSF4TaQIhtO5eRlGIfAvfs7GZhTgS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzQxjTey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzQxjTey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E0C4CEF9
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759622993;
	bh=onGqEHsqL6USzrNsiA69XL/Pj0pwjokdpLTWn/wM1fQ=;
	h=To:Subject:From:Date:From;
	b=ZzQxjTeyt9qDchQB6XvM+TfpIHryz3JhcQsaz0+jirb0AX5lXB46iEY/xISRKJUuV
	 lbdQd7vIlwv+PB/dZ2ooqPoe0C+0lm24gxMtqs1l1dhImiYCB5ZEKkdSisjyj3FKdZ
	 kpko8MM7fZDByGGSWwq1eCXQhXsArtI00Y9GzyrPEJOho0tRQeFPG7uBEO+6OkWSg2
	 bMn4fpMS3SC0KbE+JU36J3iXHKKpaZc7QMG9S71lMLqFqG1z4luxXhtwFKtCuCmM4c
	 30Nr+rV5COgwp+C33VUft86Lew9Ee2C+J9aZUQ6/XyJifkyKpP4IKhav0HDyrNHdjy
	 gpaP5jNcgKABw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F663CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962299357.5308.15089494710121486026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6aa8d32f54cbf74fa59266d51e73fde2d5074150189ab8af053ca00532fc98
Date: Sun, 05 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759622993
