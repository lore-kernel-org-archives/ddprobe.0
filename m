Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0998E233149
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774685694; cv=none; b=bG1c6nu708TDCA5DU1lIVmrEkC/4F2nggzyumVOyHcu0ktsJjBOpRisJBvnNxxBFfEn3d8z3KJb97femaEcCIVnwQ7l3Dw4OTxc+t2xYDEhUhWpljYZycefxrmeeqqwg8TxMhg30nUwzPgjXsYKYvFkMMDJSphugVA4mS44YrlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774685694; c=relaxed/simple;
	bh=S2uIG/wCyHnQeSztiSp0yTU9LsbqdptWFPCkRijbooA=;
	h=To:Subject:From:Message-Id:Date; b=T1ZYMAiA4UQP+OX6UCSGWZuzF0YaiK6aQJypnsAJ9vAsPX9y4SajtdKm5l8ouxUGWEeU5DUAQo7LERGuY5cJWIvyRH7oy9AgPWOBBMUrcmBY6QMBvcFUVL1OCbbckEyaq99wQ10n57ecuP/Xr4PWFY6GoQfYRZXTeEG8157iwWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ff4v5eK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ff4v5eK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A383EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774685693;
	bh=S2uIG/wCyHnQeSztiSp0yTU9LsbqdptWFPCkRijbooA=;
	h=To:Subject:From:Date:From;
	b=ff4v5eK5ftavYy1/M32uEg99hYtyIT50BYZnjyXfxNlFevqEEslSfxFULSjX20G9v
	 LqwbN4+Oxzmma6H2EPTOasVnGjQSGFCDG5q8PJ0/2Q+4OR9EUa+Rn07HnfMR7Uy+lL
	 FQmd8zejFUt6AqAguFuPg9CkqpTKABXQ8sahGOeueZhNoRirQfJpnWZEBa4lt72ouh
	 uAYC2m8L1+1Op6HcrUsZoXoHdLCzQv8m3wRR/4hNj9gXPJjwxk2u4C0MTVf+DFvtKU
	 XMEFKNz2rsXty7PVyilegAgjcnwaHcU++arpLaI6l7vakTFyBEMuuMxF00fv/Uwzhc
	 f8+dJLaHFL7+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9E10ED67D
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468569358.28791.14132702996363169405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3950b04abf714a447696d451cbfc44f99966ee892269f18d6ac052b4d750354
Date: Sat, 28 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774685693
