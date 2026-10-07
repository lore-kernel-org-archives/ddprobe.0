Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BE8547054
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791404434; cv=none; b=K5TZeX+qpffXNn+j1U8YLvdzHby+nEsn9TEuefGxnHxDrNyfO3J9AqpJbw2Kulj157haZzsGgAgCeBsAkMFjnR8D9wyo5XBY25apeRfJT12Cw1Pc5kxjcw7tjPPyMQjd+epv+MAuMo7j70lL6zVbr8MTdY/BpJgLxhNXmCEsh80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791404434; c=relaxed/simple;
	bh=ojPWb2rPNQP1i7O3L3WKTwKPHjv71ly000++ptx9Gns=;
	h=To:Subject:From:Message-Id:Date; b=gWS59ZHPdP8rLDUe6KdzJK12j0+ttuciqlpJGo+Hi9MFqwYFNYWOYzQg48/p7Os7rQojY+G4CmTH3XIyxLDuotG3WkXr31YGHKpWb+tXaDgxW1oRKDPOD301VRSB7rDl1NfX9+XEgyj+ysFjq3NxEyB89/+Vvt9JcEbuefK98iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbYulc5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbYulc5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8E7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791404433;
	bh=ojPWb2rPNQP1i7O3L3WKTwKPHjv71ly000++ptx9Gns=;
	h=To:Subject:From:Date:From;
	b=IbYulc5EZur7AqmRpp39RJI1WaMeq97tfdg0OCutIvH5AYY0uzaSSfKuNiS06MaIc
	 /aISdCk9YXf19N6/kyCey2pMOVs9IHWh40m+IepOrcjwxq2J0K0AsSfaAeoUzvk+e/
	 FmN15SR5E14w8VvIKBJkku2qfNcu2bgLnHN3k+v9Byr5+KrVFFaX3XyQKteb0uGbGs
	 qXMczSYBXbRiYaskqNNk4heR6EkdQe1Ee/feBb6LWbPsBrswItSRyTGWhdzgx6uPAx
	 qg6Io2mY36MdCfhtuCjLmgEXaD5i7kkRVruWQhFWBmFwjWh8wgF+IVURTuI+oA70tJ
	 uhYNpFi77mBkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC921CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140443369.29439.13445250878549000223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bccb7046bc93b83b87161de953f6e40504c0eb7f3184f37660798087aba0a57
Date: Wed, 07 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791404433
